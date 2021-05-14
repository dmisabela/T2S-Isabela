<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>     
        
   <%@page import="java.sql.*"%> 
    <%@ include file="WEB-INF/lib/navbar.jspf"  %>
    <%@ include file="WEB-INF/lib/jdbc.jspf"  %> 
    <%@ include file="WEB-INF/lib/usersession.jspf"  %> 
    
   
<!DOCTYPE html>
<html>
<head> 
<head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
   

    <title>T2S - Login</title>
</head>
<body>

<%
String usernamei = request.getParameter("username");
String passwordi = request.getParameter("password");
%>

<main class="login-form">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Login</div>
                    <div class="card-body">
                    
                        <form method="post">
                            <div class="form-group row">
                                <label for="username" class="col-md-4 col-form-label text-md-right">E-mail</label>
                                <div class="col-md-6">
                                    <input type="text" id="username" class="form-control" name="username" required autofocus>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">Senha</label>
                                <div class="col-md-6">
                                    <input type="password" id="password" class="form-control" name="password" required>
                                </div>
                            </div>

                            <div class="col-md-6 offset-md-4">
                                <input type="submit" value="Entrar">
                                                                
                                <a href="register.jsp" class="btn btn-link">
                                    Cadastre-se
                                </a>
                           </div>
                  </form>
                </div>
            </div>
        </div>
    </div>
    </div>

</main>
<%
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
			String sql = "Select first_name, username, password  from usuarios WHERE username='" + usernamei + "'";
			Statement statement = connection.createStatement();
			;
			ResultSet result = statement.executeQuery(sql);
		%>
		<%
		while (result.next()) {
			String db_username = result.getString("username");
			String db_password = result.getString("password");
			String db_first_name = result.getString("first_name");
			if (passwordi.equals(db_password) && usernamei.equals(db_username)) {
			session.setAttribute("usersession.username", db_first_name);
			response.sendRedirect("./checklogin.jsp");
			
			} 
			 
			else { %>
			
			<div class="alert alert-danger">
			
			<% 
				out.println ("Login ou senha incorretos");		
			} %>
				
		</div>	
			<%
			connection.close();
			}
			} catch (SQLException e) {
				out.println("Error in connecting to database");
				// TODO Auto-generated catch block
				e.printStackTrace(new java.io.PrintWriter(out));
				}
			%>


</body>
</html>