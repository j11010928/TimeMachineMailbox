<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="UTF-8">
<title>나에게 띄우는 편지</title>

<!-- default.css 경로 지정 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/default.css" rel="stylesheet"/> 

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@900&display=swap" rel="stylesheet">

</head>
<header>
    <jsp:include page="../inc/top.jsp"></jsp:include>
</header>
<body>
	<div style="margin-left: 20px">
		나에게 띄우는 편지<br>
		<form action = '<c:url value="/board/toMeForm"/>' method = "post">
			<textarea rows = "1" style = "width:40%;  resize:none" name = "title"></textarea><br>
			<textarea  rows="50" style = "width:40%;  resize:none" name = "content">
			</textarea> <br>
			
			<div >
				공유하기<input type ="radio"  name = "private_yn" value ="n">
				나만보기<input type ="radio"  name = "private_yn" value ="y"> <br>
				<input type ="submit" value = "보내기" >
				<input type ="button" value = "뒤로가기" onclick = "history.back(-1)">
			</div>
		</form>
	</div>
</body>
</html>