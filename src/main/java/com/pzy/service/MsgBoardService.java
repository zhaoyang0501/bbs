package com.pzy.service;

import java.util.Date;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.pzy.entity.MsgBoard;
import com.pzy.repository.MsgBoardRepository;

@Service
public class MsgBoardService {

	@Autowired
	private MsgBoardRepository msgBoardRepository;

	public MsgBoard findOne(Long id) {
		return msgBoardRepository.findOne(id);
	}

	public void save(MsgBoard msgBoard) {
		msgBoardRepository.save(msgBoard);
	}
	
	public void delete(Long id){
		this.msgBoardRepository.delete(id);
	}
	
	public MsgBoard find(Long id){
		return this.find(id);
	}
	public Page<MsgBoard> findAll(final int pageNumber, final int pageSize,
			final Date start, final Date end) {
		PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize,
				new Sort(Direction.DESC, "id"));
		Specification<MsgBoard> spec = new Specification<MsgBoard>() {
			public Predicate toPredicate(Root<MsgBoard> root,
					CriteriaQuery<?> query, CriteriaBuilder cb) {
				Predicate predicate = cb.conjunction();
				if (start != null) {
					predicate.getExpressions().add(
							cb.greaterThan(root.get("createDate")
									.as(Date.class), start));
				}
				if (end != null) {
					predicate.getExpressions().add(
							cb.lessThan(root.get("createDate").as(Date.class),
									end));
				}
				return predicate;
			}
		};
		Page<MsgBoard> result = (Page<MsgBoard>) msgBoardRepository.findAll(
				spec, pageRequest);
		return result;
	}

	public List<MsgBoard> findAll() {
		List<MsgBoard> list = (List<MsgBoard>) msgBoardRepository.findAll();
		this.addSubMsg(list);
		return list;
	}

	private void addSubMsg(List<MsgBoard> list) {
		if (list != null && list.size() != 0) {
			for (MsgBoard bean : list) {
				bean.setSubMsg(msgBoardRepository.findByReplyfor(bean));
			}
		}
	}

}