<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>느리밍 회원가입</title>

<!-- css 경로 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/default.css" rel="stylesheet"/> 
<link href="${path}/resources/css/memberJoin.css" rel="stylesheet"/> 

<!-- js 경로 -->
<script src="${path}/resources/js/jquery-3.5.1.js"></script>
</head>
<header>
    <jsp:include page="../inc/top.jsp"></jsp:include>
</header>

<script type="text/javascript">
$(document).ready(function(){

    $("#joinComplet").on("click", function(){
        if($("#id").val()==""){
            alert("아이디를 입력해주세요.");
            $("#id").focus();
            return false;
        }
        if($("#pass").val()==""){
            alert("비밀번호를 입력해주세요.");
            $("#pass").focus();
            return false;
        }
        if($("#passCheck").val()==""){
            alert("비밀번호를 다시 입력해주세요.");
            $("#passCheck").focus();
            return false;
        }
        if($("#name").val()==""){
            alert("이름을 입력해주세요.");
            $("#name").focus();
            return false;
        }
        if($("#nick").val()==""){
            alert("별명을 입력해주세요.");
            $("#nick").focus();
            return false;
        }
        if($("#email").val()==""){
            alert("이메일을 입력해주세요.");
            $("#email").focus();
            return false;
        }
        if($("#phone").val()==""){
            alert("전화번호를 입력해주세요.");
            $("#phone").focus();
            return false;
        }
        
    });
    
        
    
})
</script>

<body>
    <form action='<c:url value="/member/join"/>' method="post" autocomplete="off">
        <div class="joinAll">
	        <div id="loginInfo">회원가입</div>
	        <div id="joinId">아이디<input type="text" name="id" id="id" /></div><button type="button" id="dupCheck">중복체크</button><br>
	        <div id="joinPass">비밀번호<input type="password" name="tmpPass" id="tmpPass" style="display: none;" />
	                                 <input type="password" name="pass" id="pass"></div><br>
	        <div id="joinPassCheck">비밀번호 확인<input type="password" name="passCheck" id="passCheck" /></div><br>
	        
	        <div id="joinInfo">회원정보</div>
	        <div id="joinName">이름<input type="text" name="name" id="name" /></div><br>
	        <div id="joinNick">별명<input type="text" name="nick" id="nick" /></div><button type="button" id="dupCheck">중복체크</button><br>
	        <div id="joinMail">이메일<input type="email" name="email" id="email" /></div><button type="button" id="dupCheck">중복체크</button><br>
	        <div id="joinPhone">전화번호<input type="text" name="phone" id="phone" /></div><button type="button" id="identification">본인확인</button><br>
	        <div id=svc><input type="checkbox" id="check" /> 서비스 약관에 동의합니다. 
	                    <a href='<c:url value="/"/>' id="provision">약관보기</a></div><br>
	        <input type="submit" value="가입 완료" id="joinComplet" />
	    </div>
    </form>
</body>
</html>