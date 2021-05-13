    <%@page import="com.javatpoint.dao.ContainerDao"%>  
    <jsp:useBean id="u" class="com.javatpoint.bean.Containers"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
    <%  
    ContainerDao.delete(u);  
    response.sendRedirect("viewcontainers.jsp");  
    %>  