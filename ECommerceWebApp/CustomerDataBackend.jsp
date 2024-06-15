<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
            <%@page import="java.sql.ResultSet"%>
			<%@page import="java.sql.Statement"%>
			<%@page import="java.sql.Connection"%>
			<%@page import="java.sql.DriverManager"%>
			<%@page import="java.sql.*" %>
			<%
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String contact = request.getParameter("contact");
			String address = request.getParameter("address");

			try {
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ecommerce", "root", "Tanaya@3502");
		
    		PreparedStatement ps = con.prepareStatement("INSERT INTO Ecustomer VALUES (?, ?, ?, ?, ?)");
    		ps.setString(1, username);
    		ps.setString(2, email);
    		ps.setString(3, password);
   			ps.setString(4, contact);
    		ps.setString(5, address);
		
    		int rowsInserted = ps.executeUpdate();

    		if (rowsInserted > 0) {
    	    out.println("<h1><center>Data inserted successfully!<br>");
    	    out.println("<a href='CustomerData.jsp'>Back</a></center></h1>");
   			} else {
        	out.println("Failed to insert data.");
    		}
	
    		ps.close();
    		con.close();
			} catch (Exception e) {
		    out.println(e);
		    e.printStackTrace();
			}
%>
</body>
</html>