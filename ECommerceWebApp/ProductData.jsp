<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
form input,textarea {
    width: 240px;
    height: 35px;
    background: transparent;
    border-bottom: 1px solid #ff7200;
    border-top: none;
    border-right: none;
    border-left: none;
    
    font-size: 15px;
    letter-spacing: 1px;
    margin-top: 30px;
    font-family: sans-serif;
     text-align: center;
}
.update-btn
{
    padding: 8px 15px;
    margin-right: 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    border-radius: 4px;
    cursor: pointer;
    background-color: #4CAF50;
    color: white;
}
</style>
<body>
<center>
<form action="ProductDataBackend.jsp" method="post">	
	<h2>
	Product No <input type="number" name="no" required><br>
	Product Name <input type="name" name="name" required><br>
	Product Price <input type="number" name="price" required><br>
	Expiry Date <input type="date" name="date" required><br>
	</h2>
<input type="submit" name="AddProduct" value="Add Product" class="update-btn">&nbsp; 
</form>
</center>
</body>
</html>