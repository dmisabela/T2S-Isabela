    <%@page import="com.javatpoint.dao.ContainerDao"%>  
    <jsp:useBean id="u" class="com.javatpoint.bean.Containers"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
      
    <%  
    int i=ContainerDao.save(u);  
    if(i>0){  
    response.sendRedirect("addcont-success.jsp");  
    }else{  
    response.sendRedirect("addcont-error.jsp");  
    }  
    %>  