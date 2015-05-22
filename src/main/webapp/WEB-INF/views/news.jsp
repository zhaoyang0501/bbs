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

	<!-- Header -->
		<%@include file="./head.jsp" %>
	<!-- Header / End -->
	
	<!-- Navigation -->
	<!-- Navigation / End -->

</div>
<!-- 960 Container / End -->


<!-- Content
================================================== -->
<div class="container">

<div class="twelve columns">
	
	<!-- Post -->
	<div class="post">
		<a href="#" class="post-icon standard"></a>
		<div class="post-content">
			<div class="post-title"><h2><a href="blog_post.html">测试标题</a></h2></div>
			<div class="post-meta"><span><i class="mini-ico-calendar"></i>On 10 August, 2012</span> <span><i class="mini-ico-user"></i>By <a href="#">admin</a></span> <span><i class="mini-ico-comment"></i>With <a href="#">12 Comments</a></span></div>
			<div class="post-description">
				<p>测试标题测试标题测试标题测试标题测试标题</p>
			</div>
			<a class="post-entry" href="blog_post.html">详细信息</a>
		</div>
	</div>
	
	<!-- Post -->
	<div class="post">
		<a href="#" class="post-icon standard"></a>
		<div class="post-content">
			<div class="post-title"><h2><a href="blog_post.html">测试标题</a></h2></div>
			<div class="post-meta"><span><i class="mini-ico-calendar"></i>On 10 August, 2012</span> <span><i class="mini-ico-user"></i>By <a href="#">admin</a></span> <span><i class="mini-ico-comment"></i>With <a href="#">12 Comments</a></span></div>
			<div class="post-description">
				<p>测试标题测试标题测试标题测试标题测试标题</p>
			</div>
			<a class="post-entry" href="blog_post.html">详细信息</a>
		</div>
	</div>
	<!-- Post -->
	<div class="post">
		<a href="#" class="post-icon standard"></a>
		<div class="post-content">
			<div class="post-title"><h2><a href="blog_post.html">测试标题</a></h2></div>
			<div class="post-meta"><span><i class="mini-ico-calendar"></i>On 10 August, 2012</span> <span><i class="mini-ico-user"></i>By <a href="#">admin</a></span> <span><i class="mini-ico-comment"></i>With <a href="#">12 Comments</a></span></div>
			<div class="post-description">
				<p>测试标题测试标题测试标题测试标题测试标题</p>
			</div>
			<a class="post-entry" href="blog_post.html">详细信息</a>
		</div>
	</div>
	<ul class="pagination">
		<a href="#"><li>1</li></a>
		<a href="#"><li class="current">2</li></a>
		<a href="#"><li>3</li></a>
		<a href="#"><li>4</li></a>
		<a href="#"><li>5</li></a>
	</ul>
	
</div>


<!-- Widget
================================================== -->
<div class="four columns">

	<!-- Search -->
	<div class="widget first">
		<div class="headline no-margin"><h4>查找</h4></div>
		<div class="search">
			<input type="text" onblur="if(this.value=='')this.value='';" onfocus="if(this.value=='')this.value='';" value="" class="text">
		</div>
	</div>
	
	<!-- Categories -->
	<div class="widget">
		<div class="headline no-margin"><h4>分类</h4></div>
			<ul class="links-list-alt">
				<li><a href="#">招生简章</a></li>
				<li><a href="#">往年分数线</a></li>
				<li><a href="#">录取比例</a></li>
				<li><a href="#">复试分数线</a></li>
				<li><a href="#">学校往年真题题</a></li>
			</ul>
	</div>
</div>

</div>
</div>
<!-- Wrapper / End -->

	<%@include file="./foot.jsp" %>

</body>
</html>