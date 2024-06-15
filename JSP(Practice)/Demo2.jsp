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
	String FirstName=request.getParameter("fname");
	String LastName=request.getParameter("lname");	
	
	boolean isValid = true;
    String errorMessage = "";

    if (FirstName.isEmpty() || LastName.isEmpty()) {
        isValid = false;
        errorMessage += "Required fields must not be empty.<br>";
    } else {
        if (!FirstName.matches("^[a-zA-Z]+$") || !LastName.matches("^[a-zA-Z]+$")) {
            isValid = false;
            errorMessage += "Name fields should contain only alphabets.<br>";
        }
        else{
        	out.println("My Name is "+FirstName+""+LastName);
        }
    }

	
%><!-- Scriplet Tag -->
<%--<%= "Hello Im "+FirstName+" "+LastName %> --%><!-- Expression Tag -->
</body>
</html>


import java.io.*;

import javax.servlet.*;

import javax.servlet.http.*;

import java.util.*;

public class FormServlet2 extends HttpServlet {

public void doGet(HttpServletRequest req,HttpServletResponse res)

throws ServletException,IOException {

PrintWriter out=res.getWriter();

res.setContentType("text/html");

Enumeration en=req.getParameterNames();

while(en.hasMoreElements())

{

Object obj=en.nextElement();

String param=(String)obj;

String pvalue=req.getParameter(param);

out.println("Parameter Name: "+ param + " " +" Parameter Value: "+pvalue);

}

out.close();

}

}