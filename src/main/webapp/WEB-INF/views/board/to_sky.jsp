<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="UTF-8">
<title>하늘에 띄우는 편지</title>

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
하늘에 띄우는 편지

<c:choose>
    <c:when test="${empty sessionScope.id }">
	    <script type="text/javascript">
	        alert('로그인이 필요합니다.');
	    </script>
        <c:redirect url="../member/loginForm"/>
    </c:when>
    <c:otherwise>
        <c:if test="${!(sessionScope.id eq 'admin')}">
            <c:redirect url="./main"/>
        </c:if>
    </c:otherwise>
</c:choose>


</body>
</html>