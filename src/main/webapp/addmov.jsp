    <%@page import="com.javatpoint.dao.MovimentacaoDao"%>  
    <jsp:useBean id="u" class="com.javatpoint.bean.Movimentacoes"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
      
    <%  
    int i=MovimentacaoDao.save(u);  
    if(i>0){  
    response.sendRedirect("addmov-success.jsp");  
    }else{  
    response.sendRedirect("addmov-error.jsp");  
    }  
    %>  