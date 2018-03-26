package connect;
import java.sql.Connection;
import java.sql.DriverManager;


public class connect {
//	 private static final String DRIVER_JDBC = "com.mysql.jdbc.Driver";
	 private static final String DRIVER_JDBC = "com.mysql.cj.jdbc.Driver";
	 private static final String URL_DB = "jdbc:mysql://google/mode?cloudSqlInstance=ducanh-196810:us-central1:spring&socketFactory=com.google.cloud.sql.mysql.SocketFactory&user=root&password=1234";
	   // private static final String URL_DB = "jdbc:mysql://35.230.89.36/user";
//	    private static final String URL_DB = "jdbc:mysql://localhost:3306/demo";
	    // Pass and User
	    private static final String USER = "root";
	    private static final String PASS = "1234";

	    private static Connection conn;

	    public static Connection getConnection() {
	        try {
	            Class.forName(DRIVER_JDBC);
//	            conn = DriverManager.getConnection(URL_DB, USER, PASS);
	            conn = DriverManager.getConnection(URL_DB);
	        } catch (Exception e) {
	            System.out.println("Error connection " + e);
	        }

	        return conn;
	    }
}
