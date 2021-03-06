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
  <script type="text/javascript" charset="utf-8" src="ueditor1_4_3-utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor1_4_3-utf8-jsp/ueditor.all.js"></script>

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
	<%@include file="./head.jsp" %>
</div>
<!-- 960 Container / End -->


<!-- Content
================================================== -->
<div class="container">
	<div class="sixteen columns">
		<div id="page-title">
			<h2>发表资源</h2>
			<div id="bolded-line"></div>
		</div>

	</div>
</div>

<div class="container">
<c:if test="${tip!=null }">
	<div class="sixteen columns">
		<div class="notification error  closeable" style="margin: 5px 0 25px 0;">
			<p>${tip}</p>
		</div>
	</div>
</c:if>


	<!-- Contact Form -->
	<div class="sixteen columns " >
		<!-- Form -->
		<div id="contact-form">
			<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/doCreateNews">
				<div class="field">
					<label>标题:</label>
					<input type="text" name="news.title" class="text">
				</div>
				<div class="field">
					<label>类别:</label>
					<select name='news.category.id'>
					<c:forEach items="${categorys}" var="bean">
						<option value="${bean.id}"> ${bean.name}</option>
					</c:forEach>
					</select>
				</div>
				<div class="field">
					<label>附件:</label>
					<input type="file" name="filePath" class="text">
				</div>
				
				<div class="field">
					<label>内容: </label>
					<script type="text/plain" id="newscontext" name="news.context">
       				 </script>
				</div>
				<div class="field">
					<input type="submit" class='button color medium' value="发布">
				</div>
			</form>
		</div>
</div>
</div>


</div>
<!-- Wrapper / End -->

	<%@include file="./foot.jsp" %>
<script type="text/javascript">
        var editor_a = UE.getEditor('newscontext',{initialFrameHeight:500, serverUrl: ''});

    </script>

</body>
</html>