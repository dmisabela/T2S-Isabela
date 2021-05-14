<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="WEB-INF/lib/navbar.jspf"  %>
    <%@ include file="WEB-INF/lib/jdbc.jspf"  %>
   <%@page import="java.sql.*"%>
   
   
<% 		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
			out.println("Connected to database" + "<br/>");
			
			String sql = "SELECT * FROM container";
			
			Statement statement = connection.createStatement();
			
			ResultSet result = statement.executeQuery(sql);
			
			out.println("Containers" + "<br/>");
			
			while (result.next()) {
				int id_container = result.getInt("id_container");
				String nome_cliente = result.getString("nome_cliente");
				String num_container = result.getString ("num_container");
				String tipo_container = result.getString("tipo_container");
				String status_container = result.getString("status_container");
				String categ_container = result.getString("categ_container");
				
							
				out.println(id_container + " " + nome_cliente + " " + num_container + " " + tipo_container + " " + status_container + " " + categ_container + "<br/>");
			}
			
			connection.close();
			
		} catch (SQLException e) {
			out.println("Error in connecting to database");
			
			e.printStackTrace();
		}
				

%>