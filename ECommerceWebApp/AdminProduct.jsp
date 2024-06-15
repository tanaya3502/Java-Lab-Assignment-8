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
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Eproduct");
	    ResultSet rs = ps.executeQuery();
		%>
	<center>	
    <h1>Product Details</h1>
    <table border="1" >
        <tr>
            <th>Product No</th>
            <th>Product Name</th>
            <th>Product Price</th>
  			<th>Expiry Date</th>
        </tr>

        <%
        while (rs.next()) {
 	  		String Product_No= rs.getString("Product_No");
        	String Product_Name = rs.getString("Name");
 	  		String Price = rs.getString("Price");
 	  		String Expiry= rs.getString("Date");
        %>
            <tr>
                <td><%= Product_No %></td>
                <td><%= Product_Name %></td>
                <td><%= Price %></td>
                <td><%= Expiry %></td>
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