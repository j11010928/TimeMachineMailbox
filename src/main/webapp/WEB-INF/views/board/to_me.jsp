<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="UTF-8">
<title>ToMe</title>
</head>
<body>
	나에게 띄우는 편지<br>
	<form action = '<c:url value="/board/toMeForm"/>' method = "post">
		<textarea  rows="50" style = "width:40%;  resize:none" >
		</textarea> <br>
		<div >
		공유하기<input type ="checkbox"  name = "public">
		나만보기<input type ="checkbox"  name = "private"> <br>
		<input type ="submit" value = "보내기" >
		<input type ="button" value = "뒤로가기" onclick = "history.back(-1)">
		</div>
	</form>
</body>
</html>