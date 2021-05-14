<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="WEB-INF/lib/navbar.jspf"  %>
    <%@ include file="WEB-INF/lib/jdbc.jspf"  %>
   <%@page import="java.sql.*"%>
   
   
<% 		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
			out.println("Connected to database" + "<br/>");

			connection.close();
			
		} catch (SQLException e) {
			out.println("Error in connecting to database");
			
			e.printStackTrace();
		}
				

%>