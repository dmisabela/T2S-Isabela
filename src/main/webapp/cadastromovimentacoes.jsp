    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
          
        
    <!DOCTYPE html>
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@ include file="WEB-INF/lib/navbar.jspf"  %>
    <%@ include file="WEB-INF/lib/jdbc.jspf"  %> 
    <%@ include file="WEB-INF/lib/usersession.jspf"  %> 
    
    <title>Cadastro de Movimenta��es</title>
    </head>
    <body>   
    
    <%
		if (session.getAttribute("usersession.username") == null) {
		%>
		<h2>Fa�a login antes de visualizar!</h2>
		<%
		} else {
			String id = request.getParameter("id_movimentacao");
			String tipo = request.getParameter("tipo_movimentacao");
			String dataini = request.getParameter("data_inicio");
			String datafim = request.getParameter("data_fim");
			String nummov = request.getParameter("numero_container");
			
		%>
   
               <a><b>Movimenta��es</b></a>
               
               <a href="viewmovimentacoes.jsp">Listar movimenta��es</a><br/>  
      
    <h1>Cadastrar movimenta��o</h1>  
    <form action="addmov.jsp" method="post">  
    <table>  
    <tr><td>Tipo da movimenta��o</td><td>
    <select name="tipo_movimentacao">
    
    <option value="Embarque">Embarque</option>
    <option value="Desembarque">Desembarque</option>
     </select></td></tr>
     
    <tr><td>Data e hora de in�cio (AAAA-MM-DD 00:00:00)</td><td>  
    <input type="text" name="data_inicio"/></td></tr>
      
   <tr><td>Data e hora de t�rmino (AAAA-MM-DD 00:00:00)</td><td>  
    <input type="text" name="data_fim"/></td></tr>
    
   <tr><td>N�mero do container</td><td>  
    <input type="text" name="numero_container"/></td></tr>
    
    <tr><td colspan="2"><input type="submit" value="Add Movimenta��o"/></td></tr>  
    </table>  
    </form>  
    <% } %>
    </body>
    </html>