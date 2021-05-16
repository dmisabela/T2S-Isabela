     <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    <!DOCTYPE html>  
    <html>  
    <head>    
    
    <%@ include file="WEB-INF/lib/navbar.jspf"  %>
    <%@ include file="WEB-INF/lib/usersession.jspf"  %> 
    <title>Editar containers</title>  
    </head>  
    <body>  
    
    <%
		if (session.getAttribute("usersession.username") == null) {
		%>
		<h2>Faça login antes de visualizar!</h2>
		<% } else { %>
		<%@page import="java.sql.*"%>
		<%@ include file="WEB-INF/lib/jdbc.jspf"  %> 
    	
			<%
			String editar = request.getParameter("editarvalue");
			int id = 0;
			if (editar != null) {
			id = (Integer.parseInt(request.getParameter("editarvalue")));
		
	}; 		
		String id_mov = request.getParameter("id_movimentacao");
		String tipo_mov = request.getParameter("tipo_movimentacao");
		String data_ini = request.getParameter("data_inicio");
		String data_fim = request.getParameter("data_fim");
		String num_cont = request.getParameter("numero_container");
		%>
		
		<div class="container">
		
		<%if (editar != null) {Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
		String sql = "SELECT id_movimentacao, tipo_movimentacao, data_inicio, data_fim, numero_container FROM movimentacoes WHERE id_movimentacoes='" + id_mov + "'";
				Statement statement = connection.createStatement();
				ResultSet result = statement.executeQuery(sql);
				
				while (result.next()) {
					String idmov = result.getString("id_movimentacao");
					String tipomov = result.getString("tipo_movimentacao");
					String dataini = result.getString("data_inicio");
					String datafim = result.getString("data_fim");
					String numcont = result.getString("numero_container");
		 %>
		
      
    <h1>Editar</h1>  
    <form action="editmov.jsp" method="post">  
    <input type="hidden" name="id_movimentacao" value="<%=id_mov%>"/>  
    <table>  
    
    <tr><td>Tipo da movimentação</td><td>
    <select name="tipo_movimentacao"> 
    <option	selected><%=tipo_mov%></option>    
    <option value="Embarque">Embarque</option>
    <option value="Desembarque">Desembarque</option>
    <option value="Gate In">Gate In</option>
    <option value="Gate Out">Gate Out</option>
    <option value="Posicionamento Pilha">Posicionamento Pilha</option>
    <option value="Pesagem">Pesagem</option>
    <option value="Scanner">Scanner</option>
     </select ></td></tr>
     
    <tr><td>Data e hora de início (AAAA-MM-DD 00:00:00)</td><td>  
    <input type="text" name="data_inicio" value="<%=data_ini%>"/></td></tr>
      
   <tr><td>Data e hora de término (AAAA-MM-DD 00:00:00)</td><td>  
    <input type="text" name="data_fim" value="<%=data_fim%>"/></td></tr>
    
   <tr><td>Número do container</td><td>  
    <input type="text" name="num_container" value="<%=num_cont%>"/></td></tr>
    
    <tr><td colspan="2"><input type="submit" value="Editar"/></td></tr>  
    </table>  
    </form>  
    
    <a href="viewmovimentacoes.jsp">
			<button type="button" class="btn btn-outline-info">Voltar</button></a> <br> <br> <br>

<%} connection.close (); } %>

<% if (tipo_mov != null) {
		Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
		String sql2= "UPDATE movimentacoes SET tipo_movimentacao = ?, data_inicio = ?, data_fim = ?, numero_container = ? WHERE id_movimentacao =" + id_mov +  "";
		PreparedStatement statement = connection.prepareStatement(sql2);
		statement.setString(1, tipo_mov);
		statement.setString(2, data_ini);
		statement.setString(3, data_fim);
		statement.setString(4, num_cont);
		
		int rows = statement.executeUpdate();
		if (rows > 0) { %>
		
				<div class="alert alert-success" role="alert">
				<p>
				<%
 				out.println("Movimentação editada!");
 				%>
				</p>
				

			</div>
	<% } connection.close(); }} %> 
	
    </div>
      
    </body>  
    </html>  