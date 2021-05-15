package com.javatpoint.dao;  
    
    import java.sql.*;  
    import java.util.ArrayList;  
    import java.util.List;  
    import com.javatpoint.bean.Movimentacoes;  
    public class MovimentacaoDao {  
      
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
    public static int save(Movimentacoes u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "insert into movimentacoes (tipo_movimentacao, data_inicio, data_fim, numero_container) values(?,?,?,?)");  
            ps.setString(1,u.getTipo_movimentacao());  
            ps.setString(2,u.getData_inicio());  
            ps.setString(3,u.getData_fim());  
            ps.setString(4,u.getNumero_container());   
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int update(Movimentacoes u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "update movimentacoes set tipo_movimentacao=?, data_inicio=?,data_fim=?,numero_container=? where id_movimentacao=?");  
            ps.setString(1,u.getTipo_movimentacao());  
            ps.setString(2,u.getData_inicio());  
            ps.setString(3,u.getData_fim());  
            ps.setString(4,u.getNumero_container());   
            ps.setInt(6,u.getId_movimentacao());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int delete(Movimentacoes u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from movimentacoes where id_movimentacao=?");  
            ps.setInt(1,u.getId_movimentacao());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
      
        return status;  
    }  
    public static List<Movimentacoes> getAllRecords(){  
        List<Movimentacoes> list=new ArrayList<Movimentacoes>();  
          
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from movimentacoes");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                Movimentacoes u=new Movimentacoes();  
                u.setId_movimentacao(rs.getInt("id_movimentacao"));  
                u.setTipo_movimentacao(rs.getString("tipo_movimentacao"));  
                u.setData_inicio(rs.getString("data_inicio"));  
                u.setData_fim(rs.getString("data_fim"));  
                u.setNumero_container(rs.getString("numero_container"));  
                
                list.add(u);  
            }  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    }  
    public static Movimentacoes getRecordById(int id_movimentacao){  
        Movimentacoes u=null;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from movimentacoes where id_movimentacao=?");  
            ps.setInt(1,id_movimentacao);  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                u=new Movimentacoes();  
                u.setId_movimentacao(rs.getInt("id_movimentacao"));  
                u.setTipo_movimentacao(rs.getString("tipo_movimentacao"));  
                u.setData_inicio(rs.getString("data_inicio"));  
                u.setData_fim(rs.getString("data_fim"));  
                u.setNumero_container(rs.getString("numero_container")); 
            }  
        }catch(Exception e){System.out.println(e);}  
        return u;  
    }  
    }  