<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
친구에게 띄우는 편지
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
                    
        
<%--            <a class="child toMe" href='<c:url value="/board/to_me"/>'>나에게 띄우는 편지</a> --%>
<%--            <a class="child toFriend" href='<c:url value="/board/to_friend"/>'>친구에게 띄우는 편지</a> --%>
<%--            <a class="child toSky" href='<c:url value="/board/to_sky"/>'>하늘에 띄우는 편지</a> --%>
       </c:otherwise>
    </c:choose>
</body>
</html>