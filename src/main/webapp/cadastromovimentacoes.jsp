    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
          
        
    <!DOCTYPE html>
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@ include file="WEB-INF/lib/navbar.jspf"  %>
    <%@ include file="WEB-INF/lib/jdbc.jspf"  %> 
    <%@ include file="WEB-INF/lib/usersession.jspf"  %> 
    
    <title>Cadastro de Movimentações</title>
    </head>
    <body>   
    
    <%
		if (session.getAttribute("usersession.username") == null) {
		%>
		<h2>Faça login antes de visualizar!</h2>
		<%
		} else {
			String tipo = request.getParameter("tipo_movimentacao");
			String dataini = request.getParameter("dataini");
			String datafim = request.getParameter("datafim");
			String nummov = request.getParameter("nummov");
			
		%>
   
               <a><b>Movimentações</b></a>
               
               <a href="viewmovimentacoes.jsp">Listar movimentações</a><br/>  
      
    <h1>Cadastrar movimentação</h1>  
    <form action="addmov.jsp" method="post">  
    <table>  
    <tr><td>Tipo da movimentação</td><td>
    <select name="tipo_movimentacao">
    
    <option value="Embarque">Embarque</option>
    <option value="Desembarque">Desembarque</option>
    <option value="Gate In">Gate In</option>
    <option value="Gate Out">Gate Out</option>
    <option value="Posicionamento Pilha">Posicionamento Pilha</option>
    <option value="Pesagem">Pesagem</option>
    <option value="Scanner">Scanner</option>
     </select></td></tr>
     
    <tr><td>Data e hora de início (AAAA-MM-DD 00:00:00)</td><td>  
    <input type="text" name="data_inicio"/></td></tr>
      
   <tr><td>Data e hora de término (AAAA-MM-DD 00:00:00)</td><td>  
    <input type="text" name="data_fim"/></td></tr>
    
   <tr><td>Número do container</td><td>  
    <input type="text" name="numero_container"/></td></tr>
    
    <tr><td colspan="2"><input type="submit" value="Add Movimentação"/></td></tr>  
    </table>  
    </form>  
    <% } %>
    </body>
    </html>