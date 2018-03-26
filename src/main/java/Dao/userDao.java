package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connect.connect;
import model.user;



public class userDao {
	public static Connection conn=connect.getConnection();
    public static PreparedStatement stmt=null;
    public static ResultSet rs=null;
    
    public boolean insertUser(String a,String b)
    {
    	 String sql="insert into taikhoan values(?,?)";
    	 conn=connect.getConnection();
    	 try {
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, a);          
            stmt.setString(2, b);  
             stmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
             
    	return true;
    }
    public user login(String c)
    {
        user u = new user();
    	String sql="select * from taikhoan where name=?";
   	 	conn=connect.getConnection();
   	 try {
			
			stmt=conn.prepareStatement(sql);
            stmt.setString(1, c);
            rs=stmt.executeQuery();
            
            u.setName("");
            u.setPass("");
            
            if (rs.next() && rs.getString("name")!=null) {
                String name = rs.getString("name");
                String pass = rs.getString("pass");
                u.setName(name);
                u.setPass(pass);
                return u;
            }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	return u;
    }
  
}
