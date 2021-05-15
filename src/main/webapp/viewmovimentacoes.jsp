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
				String sql = "SELECT * FROM movimentacoes ORDER BY id_movimentacao ASC ";
				Statement statement = connection.createStatement();
				ResultSet result = statement.executeQuery(sql);
				while (result.next()) {
					String idmov = result.getString("id_movimentacao");
					String tipomov = result.getString("tipo_movimentacao");
					String dataini = result.getString("data_inicio");
					String datafim = result.getString("data_fim");
					String numcont = result.getString("numero_container");
		
				%>
			
				<tr>
					<td><%=idmov%></td>
					<td><%=tipomov%></td>
					<td><%=dataini%></td>
					<td><%=datafim%></td>
					<td><%=numcont%></td>
					 
			<td><form action="editmov.jsp" method="post">
							<button type="submit" value="<%=idmov%>" name="idValue"
								class="btn btn-warning">Editar</button>
						</form></td>



					<td><form method="post">
							<button type="submit" value="<%=idmov%>" name="deletevalue"
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
					String sql2 = "DELETE FROM movimentacoes WHERE id_movimentacao = " + deletar + ""; 
					PreparedStatement statement2 = connection.prepareStatement(sql2);
					statement2.executeUpdate();
			%>
			
			 <div class="alert alert-success" role="alert">
				<p>
					<a href="viewmovimentacoes.jsp"> <%
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