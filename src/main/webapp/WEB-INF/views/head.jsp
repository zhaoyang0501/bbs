<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%
//if(request.getSession().getAttribute("user")==null)
//response.sendRedirect("login");
%>  
    
<div id="header">
		<!-- Logo -->
		<div class="sixteen columns">
			<div id="logo">
				<a href="#"><img src="images/logo.png" alt="logo" /></a>
				<div id="tagline">计算机学院考研交流论坛，快加入我们吧！</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="sixteen columns">
		<div id="navigation">
			<ul id="nav">
				<li><a href="index">首页</a></li>
				<li><a href="news">资源分享</a></li>
				<li><a href="board">留言板</a></li>
				<li><a href="center">个人中心</a></li>
				<c:if test="${sessionScope.user==null}">
					<li style="float: right"><a href="register">注册</a></li>
					<li style="float: right"><a href="login">登陆</a></li>
				</c:if>
				<c:if test="${sessionScope.user!=null}">
					<li style="float: right"><a href="loginout">欢迎您${ sessionScope.user.name}${ sessionScope.user.role}|&nbsp;&nbsp;&nbsp;   退出</a></li>
				</c:if>
				
			</ul>
		</div> 
		<div class="clear"></div>
	</div>