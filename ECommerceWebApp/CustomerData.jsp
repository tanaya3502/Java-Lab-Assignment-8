<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
<div class="container">
<center>
        <h2>Registration Form</h2>
        <form action="CustomerDataBackend.jsp" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="username" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" rows="3" required></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="update-btn">Register</button>
            </div>
        </form>
        </center>
    </div>
</body>
</html>