    <%@page import="com.javatpoint.dao.ContainerDao"%>  
    <jsp:useBean id="u" class="com.javatpoint.bean.Containers"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
      
    <%  
    int i=ContainerDao.update(u);  
    if(i>0){  
    response.sendRedirect("editcont-success.jsp");  
    }else{  
    response.sendRedirect("editcont-error.jsp");  
    }  
    %>  