<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<%@page import="java.sql.ResultSet"%>
			<%@page import="java.sql.Statement"%>
			<%@page import="java.sql.Connection"%>
			<%@page import="java.sql.DriverManager"%>
			<%@ page import="java.sql.*" %>
		<%
		try {
	 	Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ecommerce", "root", "Tanaya@3502");
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Ecustomer");
	    ResultSet rs = ps.executeQuery();
		%>
	<center>	
    <h1>Customer's Data</h1>
    <table border="1" >
        <tr>
            <th>Username</th>
            <th>Email</th>
            <th>Contact</th>
  			<th>Address</th>
        </tr>

        <%
        while (rs.next()) {
        	String UserName = rs.getString("Name");
 	  		String Email = rs.getString("Email");
 	  		String Contact= rs.getString("Contact");
 	  		String Address= rs.getString("Address");
        %>
            <tr>
                <td><%= UserName %></td>
                <td><%= Email %></td>
                <td><%= Contact %></td>
                <td><%= Address %></td>
            </tr>
    <%
        } }catch (ClassNotFoundException | SQLException e) {
            out.println("An error occurred: " + e.getMessage());
            e.printStackTrace();
        }
	%>
</table>
</center>
</body>
</html>