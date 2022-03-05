<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tmmb-login</title>
</head>

<body>
    <form action='<c:url value="/member/login"/>' method="post">
        <span>아이디 or 이메일</span>
           <div>
                <input type="text" name="id" id="id" placeholder="아이디 or 이메일(xxx@xxx.xxx)">
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