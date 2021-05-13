    <!DOCTYPE html>  
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
    <title>Editar containers</title>  
    </head>  
    <body>  
    
    <%@page import="com.javatpoint.dao.ContainerDao,com.javatpoint.bean.Containers"%>  
      
    <%  
    
    String id_container=request.getParameter("id_container");  
    Containers u=ContainerDao.getRecordById(Integer.parseInt(id_container));  
    
    %>  
      
    <h1>Editar</h1>  
    <form action="editcontainer.jsp" method="post">  
    <input type="hidden" name="id_container" value="<%=u.getId_container() %>"/>  
    <table>  
    
    <tr><td>Nome</td><td>
    <input type="text" name="nome_cliente" value="<%= u.getNome_cliente()%>"/></td></tr>
      
    <tr><td>Numero do Container</td><td>   
    <input type="text" name="num_container" value="<%= u.getNum_container()%>"/></td></tr>  
    
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
    
    </select>iner" value="vazio"/>Exportação</td></tr>  
    
    <tr><td colspan="2"><input type="submit" value="Editar"/></td></tr>  
    </table>  
    </form>  
      
    </body>  
    </html>  