package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class User {
    
    public Connection conectarBD() {
        Connection conn = null;

      try {
    	  Class.forName("org.postgresql.Driver");
    	  String jdbcURL = "jdbc:postgresql://172.31.41.82:5432/T2S";
          //String jdbcURL = "jdbc:postgresql://localhost:5432/T2S";
          String user = "postgres";
          String pwd = "postgres";
          conn = DriverManager.getConnection(jdbcURL, user, pwd);
          System.out.println("Connected to database"); 
          
    	  }catch (Exception e) {}
      return conn;}
    
    public String first_name="";
    public boolean result = false;
    public boolean verificarUsuario(String username, String password) {
    	
    	String sql = "";
    	
    	Connection conn = conectarBD();
    	sql += "select first_name from usuarios ";
    	sql +="where username = " + "'" + username + "'";
    	sql +="and password = " + "'" + password + "';";
    	try {
    		Statement st = conn.createStatement();
    		ResultSet rs = st.executeQuery(sql);
    		if (rs.next()) {
    			result = true;
    			first_name = rs.getString("first_name");}
    	}catch(Exception e) {}
    	return result; }    		
    	}  	  