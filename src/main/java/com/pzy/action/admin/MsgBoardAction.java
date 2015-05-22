package com.pzy.action.admin;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import com.pzy.action.PageAction;
import com.pzy.entity.MsgBoard;
import com.pzy.service.MsgBoardService;

@Namespace("/admin/msgboard")
@ParentPackage("json-default") 
public class MsgBoardAction extends PageAction {
	private Date start;
	private Date end;
	private String name;
	private Long id;
	private MsgBoard msgBoard;
	private List<MsgBoard> msgBoards;
	@Autowired
	private MsgBoardService msgBoardService;
	@Action(value = "index", results = { @Result(name = "success", location = "/WEB-INF/views/admin/msgBoard/index.jsp") })
	public String index() {
		return SUCCESS;
	}

	@Action(value = "list", results = { @Result(name = "success", type = "json",params={"ignoreHierarchy","false"}) })  
	public String list() {
		int pageNumber = (int) (this.getIDisplayStart() / this.getIDisplayLength()) + 1;
		int pageSize =  this.getIDisplayLength();
		Page<MsgBoard> list = msgBoardService.findAll(pageNumber, pageSize,start,end);
		this.getResultMap().put("aaData", list.getContent());
		this.getResultMap().put("iTotalRecords", list.getTotalElements());
		this.getResultMap().put("iTotalDisplayRecords", list.getTotalElements());
		this.getResultMap().put("sEcho", getSEcho());
		return SUCCESS;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	@Action(value = "delete", results = { @Result(name = "success", type = "json",params={"ignoreHierarchy","false"}) })  
	public String delete() {
		getResultMap().put("state", "success");
		getResultMap().put("msg", "删除成功");
		try {
			msgBoardService.delete(id);
		} catch (Exception e) {
			getResultMap().put("state", "error");
			getResultMap().put("msg", "外键约束，该留言属于回复留言，请先删除被回复的留言在删除此留言");
		}
		
		return SUCCESS;
	}

	@Action(value = "get", results = { @Result(name = "success", type = "json",params={"ignoreHierarchy","false"}) })  
	public String get() {
		getResultMap().put("object", msgBoardService.find(id));
		getResultMap().put("state", "success");
		getResultMap().put("msg", "删除成功");
		return SUCCESS;
	}

	@Action(value = "update", results = { @Result(name = "success",  type = "json",params={"ignoreHierarchy","false"}) })  
	public String update() {
		MsgBoard bean = msgBoardService.find(msgBoard.getId());
		BeanUtils.copyProperties(msgBoard, bean);
		msgBoard.setCreateDate(new Date());
		msgBoardService.save(msgBoard);
		getResultMap().put("state", "success");
		getResultMap().put("msg", "修改成功");
		return SUCCESS;
	}
	@Action(value = "save", results = { @Result(name = "success",  type = "json",params={"ignoreHierarchy","false"}) })  
	public String saveit() {
		msgBoard.setCreateDate(new Date());
		msgBoardService.save(msgBoard);
		getResultMap().put("state", "success");
		getResultMap().put("msg", "保存成功");
		return SUCCESS;
	}
	
	public MsgBoard getMsgBoard() {
		return msgBoard;
	}

	public void setMsgBoard(MsgBoard msgBoard) {
		this.msgBoard = msgBoard;
	}

	public List<MsgBoard> getMsgBoards() {
		return msgBoards;
	}

	public void setMsgBoards(List<MsgBoard> msgBoards) {
		this.msgBoards = msgBoards;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
}
