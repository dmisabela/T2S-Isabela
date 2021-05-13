<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="WEB-INF/lib/navbar.jsp"  %>
   <%@page import="java.sql.*"%>  
   <%@page import="login.User"%>
       
      
<% 
		String jdbcURL = "jdbc:postgresql://172.31.41.82:5432/T2S";
		//String jdbcURL = "jdbc:postgresql://localhost:5432/T2S"; 
		String user = "postgres";
		String pwd = "postgres";
		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, user, pwd);
			out.println("Connected to database" + "<br/>");
			
					
			connection.close();
			
		} catch (SQLException e) {
			out.println("Error in connecting to database");
			
			e.printStackTrace();
		}
				
%>

<!DOCTYPE html>
<html>
<head> 
<head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   

    <title>T2S - Login</title>
</head>
<body>

<main class="login-form">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Login</div>
                    <div class="card-body">
                    
                        <form action="checklogin.jsp" method="post">
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



</body>
</html>