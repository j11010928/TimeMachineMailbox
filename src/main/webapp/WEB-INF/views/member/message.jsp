<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- 메시지 -->
    <script type="text/javascript">
	    var msg = '${message}';
	    var url = '${url}';
	    alert(msg);
	    document.location.href = url;
	    
// 	    history.back();
	</script>
	
</body>
</html>