    <!DOCTYPE html>  
      
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
    <%@page import="java.sql.*"%> 
    <%@ include file="WEB-INF/lib/navbar.jspf"  %>
    <%@ include file="WEB-INF/lib/jdbc.jspf"  %> 
    <%@ include file="WEB-INF/lib/usersession.jspf"  %> 
    
    <title>Listar containers</title>  
    </head>  
    <body>  
    
    <% String deletar = request.getParameter("deletevalue"); 
	
		if (session.getAttribute("usersession.username") == null) {
		%>
		<h2>Faça login antes de visualizar!</h2>
		<%
		} else {
		%>

    <h1>Lista de Containers</h1>  
      
      <div>
      
    <table border="1">  
    <tr><th>Id</th>
    <th>Nome do Cliente</th>
    <th>Número do Container</th>
    <th>Tipo</th>  
    <th>Status</th>
    <th>Categoria</th>
    <th>Editar</th>
    <th>Deletar</th></tr>  
    
       <%
				Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
				String sql = "SELECT * FROM container ORDER BY id_container ASC ";
				Statement statement = connection.createStatement();
				ResultSet result = statement.executeQuery(sql);
				while (result.next()) {
					String id_cont = result.getString("id_container");
					String nome_cliente = result.getString("nome_cliente");
					String num_container = result.getString("num_container");
					String tipo_container = result.getString("tipo_container");
					String status_container = result.getString("status_container");
					String categ_container = result.getString("categ_container");
				%>
			
			
				<tr>
					<td><%=id_cont%></td>
					<td><%=nome_cliente%></td>
					<td><%=num_container%></td>
					<td><%=tipo_container%></td>
					<td><%=status_container%></td>
					<td><%=categ_container%></td> 
			<td><form action="editform.jsp" method="post">
							<button type="submit" value="<%=id_cont%>" name="idValue"
								class="btn btn-warning">Editar</button>
						</form></td>



					<td><form method="post">
							<button type="submit" value="<%=id_cont%>" name="deletevalue"
								class="btn btn-danger">Deletar</button>
						</form></td>

				</tr>
			<%
				}
			connection.close();
			%>


			<%
			if (deletar != null) {
				try {
					connection = DriverManager.getConnection(jdbcURL, user, pwd);
					String sql2 = "DELETE FROM container WHERE id_container = " + deletar + ""; 
					PreparedStatement statement2 = connection.prepareStatement(sql2);
					statement2.executeUpdate();
			%>
			
			 <div class="alert alert-success" role="alert">
				<p>
					<a href="viewcontainers.jsp"> <%
 					out.println("Container excluído. Clique para verificar.");
 				%>
 				</a>
				</p>
				</div>
			<%
			connection.close();
			}
			catch (SQLException e) {
			out.println("Error in connecting to database");
			e.printStackTrace();
			}
			}
			}
			%>
			</tbody>
		</table>
	</div>
	</body>
	</html>