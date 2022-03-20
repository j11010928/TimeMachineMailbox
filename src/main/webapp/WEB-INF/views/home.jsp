<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scle=1,">
<title>느리밍</title>
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
	<img src="resources/img/letter.jpg" width="50%" height="50%" 
	 style="box-shadow:5px 5px 10px grey;"
  >
</div>

















<!-- -------------------------------------------------- -->

<body>
    <a href='<c:url value="/board/to_me"/>'>나에게 띄우는 편지</a>
    <a href='<c:url value="/board/to_friend"/>'>친구에게 띄우는 편지</a>
    <a href='<c:url value="/board/to_sky"/>'>하늘에 띄우는 편지</a>


</body>
</html>





