<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>느리밍</title>

<!-- default.css 경로 지정 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/default.css" rel="stylesheet"/> 
<link href="${path}/resources/css/main.css" rel="stylesheet"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
 

</head>

<!-- header > top.jsp -->
<header>
    <jsp:include page="inc/top.jsp"></jsp:include>
</header>

<body >
    <div class="parent">
       <c:choose>
       <c:when test="${sessionScope.id eq 'admin' }">
           <c:redirect url="member/admin"/>

<%--            <c:out value="<script type='text/javascript'>alert('로그인이 필요한 공간입니다.'); </script>" escapeXml="false"/> --%>
    
<!--            <script type="text/javascript"> -->
<!-- //             $(document).ready(function() { -->
<!-- //                 location.href = "member/loginForm"; -->
<!-- // //                 alert("로그인이 필요한 공간입니다."); -->
<!-- //             }); -->
<!--            </script> -->
       </c:when>
       <c:otherwise>
		   <a class="child toMe" href='<c:url value="/board/to_me"/>'>나에게 띄우는 편지</a>
		   <a class="child toFriend" href='<c:url value="/board/to_friend"/>'>친구에게 띄우는 편지</a>
		   <a class="child toSky" href='<c:url value="/board/to_sky"/>'>하늘에 띄우는 편지</a>
       </c:otherwise>
       </c:choose>
    </div>
    

</body>
</html>





