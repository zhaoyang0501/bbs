package com.pzy.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pzy.entity.Category;
import com.pzy.entity.Grades;
import com.pzy.entity.News;
import com.pzy.entity.User;
import com.pzy.service.CategoryService;
import com.pzy.service.NewsService;
import com.pzy.service.UserService;

@ParentPackage("struts-default")  
@Namespace("/")
public class IndexAction extends ActionSupport implements SessionAware{
	private Map<String,Object> session;
	private Grades grades;
	private List<News> newss;
	private List<Grades> gradess;
	private List<User> users;
	private List<User> students;
	private List<User> teachers;
	private User user;
	private String tip;
	
	@Autowired
	private NewsService newsService;
	@Autowired
	private UserService userService;
	public String execute() throws Exception {
		students=userService.findStudent();
		teachers=userService.findTeacher();
		return SUCCESS;
	}
	@Action(value = "apply", results = { @Result(name = "success", location = "/WEB-INF/views/apply.jsp") })
	public String apply() throws Exception {
		return SUCCESS;
	}
	@Action(value = "login", results = { @Result(name = "success", location = "/WEB-INF/views/login.jsp") })
	public String login() throws Exception {
		return SUCCESS;
	}
	 @Action(value = "loginout", results = { @Result(name = "success", location = "/WEB-INF/views/index.jsp") })
     public String loginout(){
	 	ActionContext.getContext().getSession().remove("user");
	 	ActionContext.getContext().getSession().remove("grades");
	 	ActionContext.getContext().getSession().clear();
	 	students=userService.findStudent();
		teachers=userService.findTeacher();
	 	tip="成功退出登陆";
	 	return SUCCESS;
     }
	 @Action(value = "dologin", 
	    		results = { @Result(name = "success" , location = "/WEB-INF/views/index.jsp") ,
	    					@Result(name = "login", location = "/WEB-INF/views/login.jsp") })  
	    public String dologin() throws Exception { 
	    	User loginuser=userService.login(user.getId(), user.getPassword());
	    	if(loginuser!=null){
	    		session.put("user",loginuser );
	    		students=userService.findStudent();
	    		teachers=userService.findTeacher();
	            return SUCCESS; 
	    	}
	    	else{
	    		ActionContext.getContext().getSession().clear();
	    		this.tip="登陆失败 不存在此用户名或密码!";
	    		return LOGIN;
	    	}
	    		 
	    } 
	
	@Action(value = "register", results = { @Result(name = "success", location = "/WEB-INF/views/register.jsp") })
	public String register() throws Exception {
		return SUCCESS;
	}
	@Action(value = "doRegister", results = { @Result(name = "success", location = "/WEB-INF/views/login.jsp") })
	public String doRegister() throws Exception {
		user.setCreateDate(new Date());
		userService.save(user);
		this.tip="注册成功欢迎登陆";
		return SUCCESS;
	}
	public Grades getGrades() {
		return grades;
	}
	public void setGrades(Grades grades) {
		this.grades = grades;
	}
	public List<News> getNewss() {
		return newss;
	}
	public void setNewss(List<News> newss) {
		this.newss = newss;
	}
	public List<Grades> getGradess() {
		return gradess;
	}
	public void setGradess(List<Grades> gradess) {
		this.gradess = gradess;
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public List<User> getStudents() {
		return students;
	}
	public void setStudents(List<User> students) {
		this.students = students;
	}
	public List<User> getTeachers() {
		return teachers;
	}
	public void setTeachers(List<User> teachers) {
		this.teachers = teachers;
	}
}
