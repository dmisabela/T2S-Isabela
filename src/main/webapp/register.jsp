<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
        <%@ include file="WEB-INF/lib/navbar.jspf"  %>
        <%@ include file="WEB-INF/lib/jdbc.jspf"  %>
        <%@include file="WEB-INF/lib/usersession.jspf"%>
        <%@page import="java.sql.*"%>
         
    <!DOCTYPE html>
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Cadastre-se</title>
    </head>
    <% 
    
String first_namec = request.getParameter("first_name");
String last_namec = request.getParameter("last_name");
String usernamec = request.getParameter("username");
String passwordc = request.getParameter("password");
                
%>
    <body>
    
       <% try {
			Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
			out.println("Connected to database"); %>


    <h1>Cadastre-se</h1>
    <main class="login-form">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Cadastre-se</div>
                    <div class="card-body">
                    
                        <form method="get">
                            <div class="form-group row">
                                <label for="first_name" class="col-md-4 col-form-label text-md-right">Nome</label>
                                <div class="col-md-6">
                                    <input type="text" id="first_name" class="form-control" name="first_name" required autofocus>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="last_name" class="col-md-4 col-form-label text-md-right">Sobrenome</label>
                                <div class="col-md-6">
                                    <input type="text" id="last_name" class="form-control" name="last_name" required autofocus>
                                </div>
                            </div>
                            
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
                                <input type="submit" value="Cadastrar">
                           
                           </div>
                  </form>
                </div>
            </div>
        </div>
    </div>
    </div>
</main>

<% if (first_namec != null) {
			String sql= "INSERT INTO usuarios (first_name, last_name, username, password) VALUES (?, ?, ?, ?)";
			
			PreparedStatement statement = connection.prepareStatement(sql);
			
			statement.setString(1, first_namec);
			statement.setString(2, last_namec);
			statement.setString(3, usernamec);
			statement.setString(4, passwordc);
			
			
int rows = statement.executeUpdate(); %>

	<br>
	<div class="alert alert-success" role="alert">
		<% 
			if (rows > 0) {
				out.println("Sucesso! Cadastro efetuado. Faça login!");
			}
			%>
	</div>

	<%
			connection.close();} 
				} catch (SQLException e) {
					out.println("Error in connecting to database");
					
					e.printStackTrace(new java.io.PrintWriter(out));
				}		
			%>

    </body>
    </html>