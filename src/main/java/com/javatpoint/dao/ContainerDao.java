package com.javatpoint.dao;  
    
    import java.sql.*;  
    import java.util.ArrayList;  
    import java.util.List;  
    import com.javatpoint.bean.Containers;  
    public class ContainerDao {  
      
    public static Connection getConnection(){  
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
        
        return conn;
    }  
    public static int save(Containers u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "insert into container(nome_cliente, num_container, tipo_container, status_container, categ_container) values(?,?,?,?,?)");  
            ps.setString(1,u.getNome_cliente());  
            ps.setString(2,u.getNum_container());  
            ps.setString(3,u.getTipo_container());  
            ps.setString(4,u.getStatus_container());  
            ps.setString(5,u.getCateg_container());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int update(Containers u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "update container set nome_cliente=?, num_container=?,tipo_container=?,status_container=?, categ_container=? where id_container=?");  
            ps.setString(1,u.getNome_cliente());  
            ps.setString(2,u.getNum_container());  
            ps.setString(3,u.getTipo_container());  
            ps.setString(4,u.getStatus_container());
            ps.setString(5,u.getCateg_container());  
            ps.setInt(6,u.getId_container());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int delete(Containers u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from container where id_container=?");  
            ps.setInt(1,u.getId_container());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
      
        return status;  
    }  
    public static List<Containers> getAllRecords(){  
        List<Containers> list=new ArrayList<Containers>();  
          
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from container");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                Containers u=new Containers();  
                u.setId_container(rs.getInt("id_container"));  
                u.setNome_cliente(rs.getString("nome_cliente"));  
                u.setNum_container(rs.getString("num_container"));  
                u.setTipo_container(rs.getString("tipo_container"));  
                u.setStatus_container(rs.getString("status_container"));  
                u.setCateg_container(rs.getString("categ_container"));  
                list.add(u);  
            }  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    }  
    public static Containers getRecordById(int id_container){  
        Containers u=null;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from container where id_container=?");  
            ps.setInt(1,id_container);  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                u=new Containers();  
                u.setId_container(rs.getInt("id_container"));  
                u.setNome_cliente(rs.getString("nome_cliente"));  
                u.setNum_container(rs.getString("num_container"));  
                u.setTipo_container(rs.getString("tipo_container"));  
                u.setStatus_container(rs.getString("status_container"));  
                u.setCateg_container(rs.getString("categ_container")); 
            }  
        }catch(Exception e){System.out.println(e);}  
        return u;  
    }  
    }  