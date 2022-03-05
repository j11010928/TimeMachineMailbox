<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tmmb - main</title>
</head>
<header>
<%--     <jsp:include page="/inc/top.jsp"></jsp:include> --%>
</header>
<body>
    <a href='<c:url value="/board/to_me"/>'>나에게 띄우는 편지</a>
    <a href='<c:url value="/board/to_friend"/>'>친구에게 띄우는 편지</a>
    <a href='<c:url value="/board/to_sky"/>'>하늘에 띄우는 편지</a>

</body>
</html>