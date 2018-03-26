package Dao;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import connect.connect;
import model.tintuc;

public class tintucDao {
	public static Connection conn=connect.getConnection();
    public static PreparedStatement stmt=null;
    public static ResultSet rs=null;
    public boolean insertTinTuc(String a,String b,String c,String d)
    {
    	 String sql="insert into tintuc(tieude,noidung,mota,tacgia) values(?,?,?,?)";
    	 conn=connect.getConnection();
    	 try {
			stmt=conn.prepareStatement(sql);
			    
			stmt.setString(1,a);          
            stmt.setString(2,b);  
            stmt.setString(3,c);  
            stmt.setString(4,d);  
            stmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
             
    	return true;
    }
    public boolean deleteTinTuc(int ID)
    {
    	 String sql="delete from tintuc where ID=?";
    	 conn=connect.getConnection();
    	 try {
			stmt=conn.prepareStatement(sql);
			    
			stmt.setInt(1,ID);          
            
            stmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
             
    	return true;
    }
    public java.util.List<tintuc> getAllTinTuc()
    {
    	tintuc tt  = null; 
    	java.util.List<tintuc> list=null;
    	list=new ArrayList<tintuc>();
    	 String sql="select * from tintuc";
    	 conn=connect.getConnection();
    	 try {
			stmt=conn.prepareStatement(sql);
            rs=stmt.executeQuery();
            while(rs.next())
            {
            	tt=new tintuc();
            	tt.setID(rs.getInt("ID"));
            	tt.setTieuDe(rs.getString("TieuDe"));
            	tt.setNoiDung(rs.getString("noidung"));
            	tt.setMoTa(rs.getString("mota"));
            	tt.setTacGia(rs.getString("tacgia"));
            	list.add(tt);
            }
            
            
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
             
    	return list;
    }
    public tintuc getTinTuc(int ID)
    {
    	tintuc tt  = null; 
    	
    	 String sql="select * from tintuc where ID=?";
    	 conn=connect.getConnection();
    	 try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1,ID);  
            rs=stmt.executeQuery();
            while(rs.next())
            {
            	tt=new tintuc();
            	tt.setID(rs.getInt("ID"));
            	tt.setTieuDe(rs.getString("tieude"));
            	tt.setNoiDung(rs.getString("noidung"));
            	tt.setMoTa(rs.getString("mota"));
            	tt.setTacGia(rs.getString("tacgia"));
            }
            
            
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
             
    	return tt;
    }



}
