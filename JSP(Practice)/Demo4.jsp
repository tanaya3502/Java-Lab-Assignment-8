<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Expression Tag -->
Converting String to UpperCase:

<%@page  import="java.time.Month"%>

<%= new String("Hello World").toUpperCase() %>
<!-- Scriptlet Tag -->
<%
    // Importing java.time.Month
    
	for(Month month : Month.values()) {
		out.println(month);
	}
%>
<!-- Declaration Tag -->
<%!
	int cube(int n) {
		return n * n * n;
	}
%>
<%= "Cube of 3 is " + cube(3) %>
</body>
</html>
