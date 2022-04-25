<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>느리밍 회원가입</title>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/default.css" rel="stylesheet"/> 
<link href="${path}/resources/css/main.css" rel="stylesheet"/> 

</head>
<header>
    <jsp:include page="../inc/top.jsp"></jsp:include>
</header>

<body>
    <form action='<c:url value="/member/join"/>' method="post">
        <div>로그인</div>
        <div>아이디<input type="text" name="id"></div><br>
        <div>비밀번호<input type="password" name="pass"></div><br>
        <div>비밀번호 확인<input type="password" name="pass"></div><br>
        
        <div>회원정보</div>
        <div>이름<input type="text" name="name"></div><br>
        <div>별명<input type="text" name="name"></div><br>
        <div>이메일<input type="email" name="email"></div><br>
        <div>전화번호<input type="text" name="phone"></div><br>
        <div>서비스 약관에 동의합니다.</div>
        <div class="provision"><a>약관보기</a></div>
        <input type = "submit" value = "가입 완료">
    </form>
</body>
</html>