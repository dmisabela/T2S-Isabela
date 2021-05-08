package isabela;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SistemaApp {

	public static void main(String[] args) {
		String jdbcURL = "jdbc:postgresql://localhost:5432/T2S";
		String username = "postgres";
		String password = "postgres";
		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, username, password);
			System.out.println("Connected to database");
			
			connection.close();
			
		} catch (SQLException e) {
			System.out.println("Error in connectiong to database");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
	}
}
