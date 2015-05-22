<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title> - Free Theme s& Templates</title>

<!-- Mobile Specific
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/boxed.css" id="layout">
<link rel="stylesheet" type="text/css" href="css/colors/green.css" id="colors">

<!-- Java Script
================================================== -->
<script src="js/jquery.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/selectnav.js"></script>
<script src="js/flexslider.js"></script>
<script src="js/twitter.js"></script>
<script src="js/tooltip.js"></script>
<script src="js/effects.js"></script>
<script src="js/fancybox.js"></script>
<script src="js/carousel.js"></script>
<script src="js/isotope.js"></script>

<!-- Styles Switcher
================================================== -->
<link rel="stylesheet" type="text/css" href="css/switcher.css">
<script src="js/switcher.js"></script>

</head>
<body>

<!-- Wrapper Start -->
<div id="wrapper">


<!-- Header
================================================== -->

<!-- 960 Container -->
<div class="container ie-dropdown-fix">
<div id="header">
		<!-- Logo -->
		<div class="sixteen columns">
			<div id="logo">
				<a href="#"><img src="images/logo.png" alt="logo" /></a>
				<div id="tagline">你的同学都在这里，快加入我们吧！</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="sixteen columns">
		<div id="navigation">
			<ul id="nav">
				<li><a href="index.html">首页</a></li>
			</ul>
		</div> 
		<div class="clear"></div>
	</div>
</div>
<!-- 960 Container / End -->


<!-- Content
================================================== -->
<div class="container">
	<div class="sixteen columns">
		<div id="page-title">
			<h2>注册</h2>
			<div id="bolded-line"></div>
		</div>

	</div>
</div>


<div class="container">
	
	<c:if test="${tip!=null }">
	<div class="sixteen columns">
		<div class="notification success  closeable" style="margin: 5px 0 25px 0;">
			<p>${tip}</p>
		</div>
	</div>
</c:if>

	<!-- Contact Form -->
	<div class="sixteen columns " >
		<!-- Form -->
		<div id="contact-form">
			<form  action="${pageContext.request.contextPath}/doRegister" enctype="multipart/form-data" method="post">
				<div class="field">
					<label>身份:</label>
					<select name='user.role'>
						<option value="学生">学生</option>
						<option value="教师">教师</option>
					</select>
				</div>
				<div class="field">
					<label>状态:</label>
					<select name='user.state'>
						<option value="备考">备考</option>
						<option value="已考">已考</option>
					</select>
				</div>
				<div class="field">
					<label>专业:</label>
					<input type="text" name="user.major" class="text" value="" >
				</div>
				<div class="field">
					<label>年级:</label>
					<input type="text" name="user.grades" class="text" value="" >
				</div>
				<div class="field">
					<label>报考学校:</label>
					<input type="text" name="user.school" class="text" value="" >
				</div>
				<div class="field">
					<label>用户名:</label>
					<input type="text" name="user.id" class="text" value="" >
				</div>
				<div class="field">
					<label>姓名:</label>
					<input type="text" name="user.name" class="text" value="${user.name }">
				</div>
				<div class="field">
					<label>密码:</label>
					<input type="password" name="user.password" class="text"  value="${user.password }">
				</div>
				<div class="field">
					<label>电子邮件:</label>
					<input type="text" name="user.email" class="text" value="${user.email }">
				</div>
				<div class="field">
					<label>性别:</label>
					<input type="text" name="user.sex" class="text" value="${user.sex }">
				</div>
				<div class="field">
					<input  class='button color medium' type="submit"  value="提交">
				</div>
			</form>
		</div>
	</div>
		
</div>


</div>
<!-- Wrapper / End -->

	<%@include file="./foot.jsp" %>

</body>
</html>