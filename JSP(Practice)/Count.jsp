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
    Integer cnt=(Integer)application.getAttribute("noOfVisits");
    if(cnt==null||cnt==0)
    {
    	cnt=1;
    	
    }
    else
    {
    	cnt=cnt+1;
    }
    application.setAttribute("noOfVisits",cnt);
    %>
    <h3>Total number of hits to this Page is : <%= cnt %></h3>
</body>
</html>