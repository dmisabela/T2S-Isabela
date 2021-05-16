    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
          
        
    <!DOCTYPE html>
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@ include file="WEB-INF/lib/navbar.jspf"  %>
    <%@ include file="WEB-INF/lib/jdbc.jspf"  %> 
    <%@ include file="WEB-INF/lib/usersession.jspf"  %> 
    
    <title>Editar Container</title>
    </head>
    <body>   
    
    <%
		if (session.getAttribute("usersession.username") == null) {
		%>
		<h2>Faça login antes de visualizar!</h2>
		<%
		} else {
			String cliente = request.getParameter("cliente");
			String conteiner = request.getParameter("num_conteiner");
			String tipo = request.getParameter("tipo");
			String status = request.getParameter("status");
			String categoria = request.getParameter("categoria");
		%>
   
               <a><b>Cadastro de Containers</b></a>
               
               <a href="viewcontainers.jsp">Listar containers</a><br/>  
      
    <h1>Editar</h1>  
    <form action="editcont.jsp" method="post">  
    <table>  
    <tr><td>Nome</td><td>
    <input type="text" name="nome_cliente"/></td></tr> 
     
    <tr><td>Numero do Container</td><td>  
    <input type="text" name="num_container"/></td></tr>
      
    <tr><td>Tipo do Container</td><td>
    <select name="tipo_container">
    
    <option value="20">20</option>
    <option value="40">40</option>
    
    </select></td></tr>
    
    <tr><td>Status:</td><td>  
    <select name="status_container">
    
    <option value="vazio">Vazio</option>
    <option value="cheio">Cheio</option>
    
    </select></td></tr>
    
    <tr><td>Categoria</td><td>  
    <select name="categ_container">
    
    <option value="Importacao">Importação</option>
    <option value="Exportacao">Exportação</option>
    
    </select></td></tr>
    <tr><td colspan="2"><input type="submit" value="Edit Container"/></td></tr>  
    </table>  
    </form>  
    <% } %>
    </body>
    </html>