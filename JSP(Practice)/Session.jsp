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
	
	if(Name.equals("Tanaya"))	
	{
		session.setAttribute("Uname",Name);
		response.sendRedirect("ValidSession.jsp");
	}	
	else	
	{
		response.sendRedirect("Session.html");		
	}	
%>
</body>
</html>