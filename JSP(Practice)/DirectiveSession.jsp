<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import= "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Today is : <%= new java.util.Date() %>
<h2>Creating a session </h2><br>
Session ID :<%= session.getId() %><br>
Session Creation Time :<%= new Date(session.getCreationTime())  %>
</body>
</html>