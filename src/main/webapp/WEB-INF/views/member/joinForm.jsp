<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tmmb-join</title>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/default.css" rel="stylesheet"/> 
</head>
<header>
    <jsp:include page="../inc/top.jsp"></jsp:include>
</header>

<body>
    <form action='<c:url value="/member/join"/>' method="post">
        아이디 <input type="text" name="id"><br>
        비밀번호 <input type="password" name="pass"><br>
        이름 <input type="text" name="name"><br>
        이메일 <input type="email" name="email"><br>
        휴대폰번호 <input type="text" name="phone"><br>
        <input type = "submit" value = "회원가입">
    </form>
</body>
</html>