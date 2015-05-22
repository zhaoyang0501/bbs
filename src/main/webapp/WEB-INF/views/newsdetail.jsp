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
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/news.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/dataTables.bootstrap.js"></script>
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

<div class="container">
	<div class="fourteen columns">
		<div id="page-title">
			<h2>资源分享</h2>
			<div id="bolded-line"></div>
		</div>
	</div>
	<div class="two columns">
	<a style="float: right" href="createNews" class="button color medium">发布</a>
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
</div>
<!-- Content
================================================== -->
<div class="container">

<div class="Sixteen columns">
	
	<div class="post post-page">
		<a href="#" class="post-icon standard"></a>
		<div class="post-content">
			<div class="post-title"><h2><a href="blog_post.html">${news.title }</a></h2></div>
			<div class="post-meta"><span><i class="mini-ico-calendar"></i>发表于： ${news.createDate }</span> <span><i class="mini-ico-user"></i>发布人 <a href="#">${news.user.name }</a></span></div>
			<div class="post-description">
				${news.context }
			</div>
		</div>
	</div>
	
</div>


<!-- Widget
================================================== -->
</div>
</div>
<!-- Wrapper / End -->

	<%@include file="./foot.jsp" %>
<script type="text/javascript">
	$(function(){
		$.ace.setContextPath('${pageContext.request.contextPath}');
		$.news.initSearchDataTable();
	});
	</script>
</body>
</html>