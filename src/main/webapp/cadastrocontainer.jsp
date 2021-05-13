    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
        
        <%@ include file="WEB-INF/lib/navbar.jsp"  %>
        
        
    <!DOCTYPE html>
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Cadastro de Container</title>
    </head>
    <body>   
   
               <a><b>Cadastro de Containers</b></a>
               
               <a href="ConnectToDB.jsp">Listar containers</a><br/>  
      
    <h1>Cadastrar container</h1>  
    <form action="addcont.jsp" method="post">  
    <table>  
    <tr><td>Nome</td><td>
    <input type="text" name="nome_cliente"/></td></tr> 
     
    <tr><td>Numero do Container</td><td>  
    <input type="text" name="num_container"/></td></tr>
      
    <tr><td>Tipo do Container</td><td>
    <select name="tipo_container">
    
    <option value="20">20</option>
    <option value="40">40</option>
    
    </select>
    
    <tr><td>Status:</td><td>  
    <select name="status_container">
    
    <option value="vazio">Vazio</option>
    <option value="cheio">Cheio</option>
    
    </select>
    
    <tr><td>Categoria</td><td>  
    <select name="categ_container">
    
    <option value="Importacao">Importação</option>
    <option value="Exportacao">Exportação</option>
    
    </select>
    <tr><td colspan="2"><input type="submit" value="Add Container"/></td></tr>  
    </table>  
    </form>  
    
    </body>
    </html>