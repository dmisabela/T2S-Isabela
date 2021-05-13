<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
        <%@ include file="WEB-INF/lib/navbar.jsp"  %>
         <%@page import="java.sql.*"%>
         
    <!DOCTYPE html>
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Cadastre-se</title>
    </head>
    <body>
    
   

<% 
		String jdbcURL = "jdbc:postgresql://172.31.41.82:5432/T2S";
        //String jdbcURL = "jdbc:postgresql://localhost:5432/T2S";
        String user = "postgres";
        String pwd = "postgres";
        
        try {
            Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
            out.println("Connected to database");
            
            connection.close();
            
        } catch (SQLException e) {
            out.println("Error in connecting to database");
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
                
%>
    
    
    <h1>Cadastre-se</h1>
    <main class="login-form">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Cadastre-se</div>
                    <div class="card-body">
                    
                        <form action="login.jsp" method="post">
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
                                <label for="username" class="col-md-4 col-form-label text-md-right">Usuário</label>
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
    </body>
    </html>