<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>느리밍 홈</title>
<style>
			img { display: block; margin: 0px auto; }
</style>
<!-- default.css 경로 지정 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/default.css" rel="stylesheet"/> 
<!-- practics.css 경로 지정 -->
<link href="${path}/resources/css/practics.css" rel="stylesheet"/> 

</head>

<!-- header > top.jsp -->
<header>
    <jsp:include page="inc/top.jsp"></jsp:include>
</header>

<!-- 천득이의 연습공간 -->
<div class='letter'>
    <!-- 클릭시 main.jsp로 이동 -->
	<a href='<c:url value="/main"/>'>
	   <img src="resources/img/letter.jpg" width="50%" height="50%" 
	        style="box-shadow:5px 5px 10px grey;">
	</a>
  
</div>

















<!-- -------------------------------------------------- -->

<body>

</body>
</html>





