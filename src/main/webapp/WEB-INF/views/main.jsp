<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tmmb - main</title>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/default.css" rel="stylesheet"/> 
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@900&display=swap" rel="stylesheet">

</head>
<header>
    <jsp:include page="inc/top.jsp"></jsp:include>
</header>
<body>
    <a href='<c:url value="/board/to_me"/>'>나에게 띄우는 편지</a>
    <a href='<c:url value="/board/to_friend"/>'>친구에게 띄우는 편지</a>
    <a href='<c:url value="/board/to_sky"/>'>하늘에 띄우는 편지</a>

</body>
</html>