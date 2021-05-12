<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="login.*"%>
        <%@ include file="WEB-INF/lib/navbar.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check login</title>
</head>
<body>

 <% User us = new User ();
String username = request.getParameter("username");
String password = request.getParameter("password");
boolean status = us.verificarUsuario(username,password);

if(us.result==true){
	out.println("Login feito com sucesso " + us.first_name);
	
	} else {
	out.println("Login ou senha inválidos");
}

%>

</body>
</html>