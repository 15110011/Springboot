package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connect.connect;
import model.page;
import model.tintuc;

public class pageDao {
	public static Connection conn=connect.getConnection();
    public static PreparedStatement stmt=null;
    public static ResultSet rs=null;
    public boolean updateTinTuc(String a,String b,String c,String d,String g,String f)
    {
    	 String sql="update page1 set tieude=? ,noidung=?,  link1=? ,link2=?,link3=?,link4=?  where ID=1";
    	 conn=connect.getConnection();
    	 try {
			stmt=conn.prepareStatement(sql);
			    
			stmt.setString(1,a);          
            stmt.setString(2,b);  
            stmt.setString(3,c);  
            stmt.setString(4,d);
            stmt.setString(5,g);
            stmt.setString(6,f);
            stmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
             
    	return true;
    }
    public page getPage()
    {
    	page tt  = null; 
    	
    	 String sql="select * from page1 where ID=1";
    	 conn=connect.getConnection();
    	 try {
			stmt=conn.prepareStatement(sql);
		 
            rs=stmt.executeQuery();
            while(rs.next())
            {
            	tt=new page();
            	tt.setID(rs.getInt("ID"));
            	tt.setTieuDe(rs.getString("tieude"));
            	tt.setNoiDung(rs.getString("noidung"));
            	tt.setLink1(rs.getString("link1"));
            	tt.setLink2(rs.getString("link2"));
            	tt.setLink3(rs.getString("link3"));
            	tt.setLink4(rs.getString("link4"));
            }
            
            
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
             
    	return tt;
    }

}
