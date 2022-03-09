<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>느리밍 로그인</title>

<!-- default.css 경로 지정 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/default.css" rel="stylesheet"/> 


</head>

<!-- header > top.jsp -->
<header>
    <jsp:include page="../inc/top.jsp"></jsp:include>
</header>

<body>
    <form action='<c:url value="/member/login"/>' method="post">
        <span>아이디</span>
           <div>
                <input type="text" name="id" id="id" placeholder="아이디 ">
           </div>
           <br> 
        <span>비밀번호</span>            
           <div>
                <input type="password" name="pass" id="pass" maxlength="15" placeholder="비밀번호">
           </div>
           <br>
           <div>
                <input type="submit" value="로그인" id="submit">
                <input type="reset" value="취소">
           </div>
    </form>
</body>
</html>