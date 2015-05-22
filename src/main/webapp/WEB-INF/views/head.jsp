<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li><a href="notice">资源分享</a></li>
				<li><a href="board">留言板</a></li>
				<li><a href="center">个人中心</a></li>
				<li style="float: right"><a href="loginout">退出</a></li>
			</ul>
		</div> 
		<div class="clear"></div>
	</div>