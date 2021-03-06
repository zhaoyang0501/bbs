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
	<c:if test="${ user!=null}">
		<div class="two columns">
		<a style="float: right" href="createNews" class="button color medium">发布</a>
		</div>
	</c:if>
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

<div class="twelve columns">
	
	<table class="standard-table" id='dt_table_view'>
						<thead>
							<tr>
								<th>
									类别
								</th>
								<th>
									标题
								</th>
								<th>
									发布人
								</th>
								<th>
									发布时间
								</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
	</table>
	
</div>


<!-- Widget
================================================== -->
<div class="four columns">
	<input type="hidden" id="category" value="">
	<!-- Search -->
	<div class="widget first">
		<div class="headline no-margin"><h4>查找</h4></div>
		<div class="search">
			<input id='search_input' type="text" onblur="if(this.value=='')this.value='';" onfocus="if(this.value=='')this.value='';" value="" class="text">
		</div>
	</div>
	
	<!-- Categories -->
	<div class="widget">
		<div class="headline no-margin"><h4>分类</h4></div>
			<ul class="links-list-alt">
				<c:forEach items="${categorys }" var="bean">
						<li><a   href="javascript:;" onclick="$.news.categoryChange('${bean.id }');">${bean.name }</a></li>
				</c:forEach>
			</ul>
	</div>
</div>

</div>
</div>
<!-- Wrapper / End -->

	<%@include file="./foot.jsp" %>
<script type="text/javascript">
	$(function(){
		  $('#search_input').bind('keyup', function(event) {
		        if (event.keyCode == "13") {
		            //回车执行查询
		        	$.news.initSearchDataTable();
		        }
		    });
		$.ace.setContextPath('${pageContext.request.contextPath}');
		$.news.initSearchDataTable();
	});
	</script>
</body>
</html>