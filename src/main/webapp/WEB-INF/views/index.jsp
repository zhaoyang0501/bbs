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

	<div class="sixteen columns">
		<div class="headline low-margin"><h4>最近加入的学生</h4></div>
	</div>
	
	<div class="one-third column">
			<img src="images/web/student.png" alt="" style="height: 150px">
		<div class="team-name"><h5>温家宝</h5></div>
		<div class="team-about"><p>好好学习</p></div>
	</div>
	<div class="one-third column">
		<img src="images/web/student.png" alt="" style="height: 150px">
		<div class="team-name"><h5>温家宝</h5></div>
		<div class="team-about"><p>好好学习</p></div>
	</div>
	<div class="one-third column">
			<img src="images/web/student.png" alt="" style="height: 150px">
		<div class="team-name"><h5>温家宝</h5></div>
		<div class="team-about"><p>好好学习</p></div>
	</div>
	<div class="one-third column">
			<img src="images/web/student.png" alt="" style="height: 150px">
		<div class="team-name"><h5>温家宝</h5></div>
		<div class="team-about"><p>好好学习</p></div>
	</div>
</div>


<div class="container">

	<div class="sixteen columns">
		<div class="headline low-margin"><h4>最近加入的老师</h4></div>
	</div>
	<c:forEach items="${users }" var="bean" begin="0" end="2">
	<div class="one-third column">
		<img src="upload/head/${bean.headimg }" alt="">
		<div class="team-name"><h5>${bean.name }</h5></div>
		<div class="team-about"><p>${bean.remark }</p></div>
	</div>
	</c:forEach>
</div>

</div>
<!-- Wrapper / End -->

	<%@include file="./foot.jsp" %>

</body>
</html>