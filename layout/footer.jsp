<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<link rel = "stylesheet" type = "text/css" href = "../css/style.css">
	</head>
	<body>
		<footer id = footer>
			오늘의 날짜: [<%= sf.format(nowTime) %>]
		</footer>
	</body>
</html>