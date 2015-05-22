package com.pzy.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import com.opensymphony.xwork2.ActionContext;
import com.pzy.entity.Category;
import com.pzy.entity.News;
import com.pzy.entity.User;
import com.pzy.service.CategoryService;
import com.pzy.service.NewsService;

@Namespace("/")
@ParentPackage("json-default") 
public class NewsAction extends PageAction {
	private String name;
	private Category category;
	private List<News> newss;
	
	private News news;
	private List<Category> categorys;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private NewsService newsService;
	@Override
	public String execute() throws Exception {
		categorys=categoryService.findAll();
		return "SUCCESS";
	}
	@Action(value = "newslist", results = { @Result(name = "success", type = "json",params={"ignoreHierarchy","false"}) })  
	public String newslist() {
		int pageNumber = (int) (this.getIDisplayStart() / this.getIDisplayLength()) + 1;
		int pageSize =  this.getIDisplayLength();
		Page<News> list = newsService.findAll(pageNumber, pageSize,name,category);
		this.getResultMap().put("aaData", list.getContent());
		this.getResultMap().put("iTotalRecords", list.getTotalElements());
		this.getResultMap().put("iTotalDisplayRecords", list.getTotalElements());
		this.getResultMap().put("sEcho", getSEcho());
		return SUCCESS;
	}
	@Action(value = "newsDetail", results = { @Result(name = "success", location = "/WEB-INF/views/newsdetail.jsp") })
	public String newsDetail() throws Exception {
		news=this.newsService.find(news.getId());
		categorys=this.categoryService.findAll();
		return SUCCESS;
	}
	@Action(value = "createNews", results = { @Result(name = "success", location = "/WEB-INF/views/create_news.jsp") })
	public String createNews() throws Exception {
		categorys=this.categoryService.findAll();
		return SUCCESS;
	}
	@Action(value = "doCreateNews", results = { @Result(name = "success", location = "/WEB-INF/views/news.jsp") }) 
	public String doCreateNews() {
		news.setUser((User)ActionContext.getContext().getSession().get("user"));
		news.setCreateDate(new Date());
		newsService.save(news);
		categorys=categoryService.findAll();
		return SUCCESS;
	}
	public List<News> getNewss() {
		return newss;
	}

	public void setNewss(List<News> newss) {
		this.newss = newss;
	}
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	public List<Category> getCategorys() {
		return categorys;
	}
	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
}
