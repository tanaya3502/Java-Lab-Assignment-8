<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<% 
      String str1 ="Application object in jsp";
      application.setAttribute("var", str1);
      String Fetch = (String)application.getAttribute("var");
      String Info = application.getServerInfo();
      int majversion = application.getMajorVersion();
      int minversion = application.getMinorVersion();
      
      
%>

<h2  align="center" ></h2>
<%=" Fetch : " + Fetch%><hr> <br>
<%="Servlet Info : " +Info %><br> <br>
<%= "MajorVersion : "+ majversion %><br> <br>
<%= "MinorVersion : "+ minversion %><br> <br>

</center>
</body>
</html>