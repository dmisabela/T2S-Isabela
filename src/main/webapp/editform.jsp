     <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    <!DOCTYPE html>  
    <html>  
    <head> 
    
    <%@page import="java.sql.*"%>
    <%@ include file="WEB-INF/lib/navbar.jspf"  %>
    <%@ include file="WEB-INF/lib/usersession.jspf"  %> 
	<%@ include file="WEB-INF/lib/jdbc.jspf"  %> 
    <title>Editar containers</title>  
    </head>  
    <body>  
    
    <%
		if (session.getAttribute("usersession.username") == null) {
		%>
		<h2>Faça login antes de visualizar!</h2>
		<% } else { 
			String editar = request.getParameter("editarvalue");
			int id = 0;
			if (editar != null) {
			id = (Integer.parseInt(request.getParameter("editarvalue")));
		
	}; 	
		String idcont = request.getParameter("id_cont");
		String cliente = request.getParameter("nome");
		String container = request.getParameter("numero");
		String tipo = request.getParameter("tipocont");
		String status = request.getParameter("statuscont");
		String categoria = request.getParameter("categoriacont");
		%>
		
		<div class="container">
		
		<%if (editar != null) {Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
		String sql = "SELECT id_container, nome_cliente, num_container, tipo_container, status_container, categ_container FROM contAiner WHERE id_container='" + idcont + "'";
				Statement statement = connection.createStatement();
				ResultSet result = statement.executeQuery(sql);
				
				while (result.next()) {
			String id_cont = result.getString("id_container");
			String nome = result.getString("nome_cliente");
			String numero = result.getString("num_container");
			String tipocont = result.getString("tipo_container");
			String statuscont = result.getString("status_container");
			String categoriacont = result.getString("categ_container");
		 %>
		
      
    <h1>Editar</h1>  
    <form action="editcontainer.jsp" method="post">  
    <input type="hidden" name="id_container" value="<%=id%>"/>  
    <table>  
    
    <tr><td>Nome</td><td>
    <input type="text" name="nome_cliente" value="<%=nome%>"/></td></tr>
      
    <tr><td>Numero do Container</td><td>   
    <input type="text" name="num_container" value="<%=numero%>"/></td></tr>  
    
     <tr><td>Tipo do Container</td><td>
    <select name="tipo_container">
    <option	selected><%=tipocont%></option>
    <option value="20">20</option>
    <option value="40">40</option>
    
    </select></td></tr>
    
    <tr><td>Status:</td><td>  
    <select name="status_container">
    <option	selected><%=statuscont%></option>
    <option value="vazio">Vazio</option>
    <option value="cheio">Cheio</option>
    
    </select></td></tr>
    
    <tr><td>Categoria</td><td>  
    <select name="categ_container">
    <option	selected><%=categoriacont%></option>
    <option value="Importacao">Importação</option>
    <option value="Exportacao">Exportação</option>
    
    </select></td></tr>
    
    <tr><td colspan="2"><input type="submit" value="Editar"/></td></tr>  
    </table>  
    </form>  
    
    <a href="viewcontainers.jsp">
			<button type="button" class="btn btn-outline-info">Voltar</button></a> <br> <br> <br>

<%} connection.close (); } %>

<% if (tipo != null) {
		Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
		String sql2= "UPDATE container SET nome_cliente = ?, num_container = ?, tipo_container = ?, status_container = ?, categ_container = ? WHERE id_container =" + idcont +  "";
		PreparedStatement statement = connection.prepareStatement(sql2);
		statement.setString(1, cliente);
		statement.setString(2, container);
		statement.setString(3, tipo);
		statement.setString(4, status); 
		statement.setString(5, categoria);
		
		int rows = statement.executeUpdate();
		if (rows > 0) { %>
		
				<div class="alert alert-success" role="alert">
				<p>
				<%
 				out.println("Container editado!");
 				%>
				</p>
				

			</div>
	<% } connection.close(); }} %> 
	
    </div>
      
    </body>  
    </html>  