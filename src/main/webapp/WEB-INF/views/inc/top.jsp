<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/default.css" rel="stylesheet"/> 


<span class="logo">
    <a href="./">타임머신우체통(이미지로 만들 예정)</a>    
</span>


<nav>

	<ul class="loginBar">
	   <li class="login">
	       <a href='<c:url value="/member/loginForm"/>'>로그인</a>   
	   </li>
       <li class="join">
           <a href='<c:url value="/member/joinForm"/>'>회원가입</a>
       </li>
	</ul>
</nav>



