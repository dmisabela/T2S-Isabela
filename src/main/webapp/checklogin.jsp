<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
        <%@ include file="WEB-INF/lib/navbar.jspf"  %>
        <%@ include file="WEB-INF/lib/jdbc.jspf"  %>
        <%@ include file="WEB-INF/lib/usersession.jspf"  %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check login</title>
</head>
<body>

<% 
if (session.getAttribute("usersession.username") != null) {
%>

<h1>Usuário logado!</h1>



<% }%>

</body>
</html>