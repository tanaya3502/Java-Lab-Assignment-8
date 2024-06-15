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
			<%@ page import="java.sql.*" %>
			<%

			String No = request.getParameter("no");
			String Name = request.getParameter("name");
			String Price= request.getParameter("price");
			String Date = request.getParameter("date");

			try {
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ecommerce", "root", "Tanaya@3502");
		
    		PreparedStatement ps = con.prepareStatement("INSERT INTO Eproduct VALUES (?, ?, ?, ?)");
    		ps.setString(1, No);
    		ps.setString(2, Name);
    		ps.setString(3, Price);
   			ps.setString(4, Date);
   			
    		int rowsInserted = ps.executeUpdate();

    		if (rowsInserted > 0) {
    	    out.println("<h1><center>Product Details inserted successfully!<br>");
    	    out.println("<a href='ProductData.jsp'>Back</a></center></h1>");
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