<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="WEB-INF/lib/navbar.jsp"  %>
   <%@page import="java.sql.*"%>
   
<% 
		//String jdbcURL = "jdbc:postgresql://localhost:5432/T2S";
		String jdbcURL = "jdbc:postgresql://172.31.41.82:5432/T2S"; 
		String user = "postgres";
		String pwd = "postgres";
		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
			out.println("Connected to database" + "<br/>");
			
			String sql = "SELECT * FROM container";
			
			Statement statement = connection.createStatement();
			
			ResultSet result = statement.executeQuery(sql);
			
			out.println("Containers" + "<br/>");
			
			while (result.next()) {
				int id = result.getInt("id_container");
				String nomeCliente = result.getString("nome_cliente");
				String numContainer = result.getString ("num_container");
				int tipo = result.getInt("tipo_container");
				String status = result.getString("status_container");
				String categoria = result.getString("categ_container");
				
							
				out.println(id + " " + nomeCliente + " " + numContainer + " " + tipo + " " + status + " " + categoria + "<br/>");
			}
			
			connection.close();
			
		} catch (SQLException e) {
			out.println("Error in connecting to database");
			
			e.printStackTrace();
		}
				

%>