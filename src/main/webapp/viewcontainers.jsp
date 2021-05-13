    <!DOCTYPE html>  
      
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
    <title>Listar containers</title>  
    </head>  
    <body>  
      
    <%@page import="com.javatpoint.dao.ContainerDao,com.javatpoint.bean.*,java.util.*"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
      
    <h1>Lista de Containers</h1>  
      
    <%  
    List<Containers> list=ContainerDao.getAllRecords();  
    request.setAttribute("list",list);  
    %>  
      
    <table border="1">  
    <tr><th>Id</th>
    <th>Nome do Cliente</th>
    <th>Número do Container</th>
    <th>Tipo</th>  
    <th>Status</th>
    <th>Categoria</th>
    <th>Editar</th>
    <th>Deletar</th></tr>  
    
    <c:forEach items="${list}" var="u">  
    
    <tr>
    
    <td>${u.getId_container()}</td>
    <td>${u.getNome_cliente()}</td>
    <td>${u.getNum_container()}</td>  
    <td>${u.getTipo_container()}</td>
    <td>${u.getStatus_container()}</td>
    <td>${u.getCateg_container()}</td>  
    <td><a href="editform.jsp?id_container=${u.getId_container()}">Editar</a></td>  
    <td><a href="deletecontainer.jsp?id_container=${u.getId_container()}">Deletar</a></td>
    
    </tr>  
    
    </c:forEach>  
    </table>  
    
    <br/><a href="addcontform.jsp">Adicionar novo container</a>  
      
    </body>  
    </html>  