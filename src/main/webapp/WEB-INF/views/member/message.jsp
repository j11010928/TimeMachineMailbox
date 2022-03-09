<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- 로그인 시 메시지 -->
    <script type="text/javascript">
	    var loginMessage='${loginMessage}';
	    alert(loginMessage);
	    history.back();
	</script>
	
	<!-- 로그아웃 시 메시지 -->
    <script type="text/javascript">
        var logoutMessage ='${logoutMessage}';
        alert(logoutMessage);
        location.href="/";
    </script>
</body>
</html>