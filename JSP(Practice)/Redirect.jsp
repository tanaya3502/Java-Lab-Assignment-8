<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String Name=request.getParameter("name");
	String Password=request.getParameter("pass");	
	if(Password.equals("Tanaya"))	
	{
		response.sendRedirect("Valid.jsp");
	}	
	else	
	{
		response.sendRedirect("Invalid.jsp");		
	}	
%>
</body>
</html>