<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <!-- default.css 경로 지정 -->   
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/default.css" rel="stylesheet"/> 


<!-- 로고 -->
<span class="logo">
    <a href='<c:url value="/"/>'>타임머신우체통(이미지로 만들 예정)</a>    
</span>

<!-- 로그인 | 회원가입 -->
<nav>
	<ul class="loginBar">
	<!-- session이 null이 아닐 때 -->
	<c:if test="${! empty sessionScope.id }">
		<li class="mypage">
		  <a href='<c:url value="/member/mypage"/>'>${sessionScope.id }</a> 님
		</li>
		<li class="logout">
          <a href='<c:url value="/member/logout"/>'>로그아웃</a>
        </li>
         
	</c:if>
	</ul>
	
	<ul class="mypageBar">
	<!-- session이 null일 때 -->
	<c:if test="${empty sessionScope.id }">
	    <li class="login">
		  <a href='<c:url value="/member/loginForm"/>'>로그인</a>   
	    </li>
	    <li class="join">
		  <a href='<c:url value="/member/joinForm"/>'>회원가입</a>
	    </li>
	</c:if>
	</ul>
</nav>

<!-- <hr class="line"> -->

