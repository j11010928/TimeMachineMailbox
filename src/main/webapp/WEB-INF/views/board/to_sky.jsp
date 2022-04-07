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

    <c:choose>
       <c:when test="${empty sessionScope.id }">
           <c:out value="<script type='text/javascript'>alert('로그인이 필요한 공간입니다.'); </script>" escapeXml="false"/>
           
           <script type="text/javascript">
            $(document).ready(function() {
                location.href = "../member/loginForm";
//                 alert("로그인이 필요한 공간입니다.");
            });
           </script>
       </c:when>
       <c:otherwise>
                    하늘에 띄우는 편지
        
<%--            <a class="child toMe" href='<c:url value="/board/to_me"/>'>나에게 띄우는 편지</a> --%>
<%--            <a class="child toFriend" href='<c:url value="/board/to_friend"/>'>친구에게 띄우는 편지</a> --%>
<%--            <a class="child toSky" href='<c:url value="/board/to_sky"/>'>하늘에 띄우는 편지</a> --%>
       </c:otherwise>
    </c:choose>


</body>
</html>