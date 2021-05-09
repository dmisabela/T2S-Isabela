<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="WEB-INF/lib/navbar.jsp"  %>
   <%@page import="java.sql.*"%>
   
<% 

		String jdbcURL = "jdbc:postgresql://172.31.41.82:5432/T2S";
		String username = "postgres";
		String password = "postgres";
		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, username, password);
			out.println("Connected to database");
			
			connection.close();
			
		} catch (SQLException e) {
			out.println("Error in connectiong to database");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				

%>