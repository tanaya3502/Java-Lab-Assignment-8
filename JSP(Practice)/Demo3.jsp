<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!int n1=20;
   int n2=10;%>
<%  out.println("First No is "+n1);
	out.println("\n"+" Second No is "+n2);
	int sum=n1+n2;
%>
<hr>
<%=" Sum = "+sum%>
</hr>
</body>
</html>