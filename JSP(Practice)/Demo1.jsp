<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><% out.println("This is my first JSP application"); %></h1>
<%
	int n1=20;
	int n2=10;
	out.println("First No is"+n1);
	out.println("\n Second No is"+n2);
	int sum=n1+n2;
%>
<hr>
<% out.println("\n Sum of Two No is "+sum);%>
<%=" Sum is "+sum%>
</hr>


</body>
</html>
<HTML>

<HEAD><TITLE>Form Servlet</TITLE></HEAD>

<BODY>

<FORM METHOD = GET ACTION= "http://localhost:8080/Project2/FormServlet2">

<form action="details" method="get">

Please Enter Your Name: <input type="text" name="uname"><br>

Enetr Age: <input type="text" name="uage"><br>

<input type="submit" value="submit">

</form>

</BODY></HTML>