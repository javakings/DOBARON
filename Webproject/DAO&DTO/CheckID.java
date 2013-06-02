package project;

import java.sql.*;
import java.util.HashMap;

public class CheckID {
	
	
	private String id;
	private String pw;
	private String kind;
	private HashMap<String, Integer> map = new HashMap<String, Integer>(); 
	
	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String JDBC_URL = "jdbc:mysql://localhost/ii_nbrick?" +"useUnicode=true&characterEncoding=euckr";
	private final String USER = "ii_nbrick";
	private final String PASS = "java1440";
	
	public HashMap<String, Integer> getMap() {
		return map;
	}
	public String getKind() {
		return kind;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}	
	
	public int login(){		// �α���
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
	    
		try{
		    conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
			//3. statement ����
			stmt = conn.createStatement();
			//4. ��������
			rs = stmt.executeQuery("SELECT * from Divclient where id = '"+id+"'");
			
			if(rs.next()){
				if(rs.getString("pwd")==null){
					return 9; // �н����尡 null�� ���(client�� ȸ������ �� ó�� �α��� �Ҷ�)
									// ���� �ۻ󿡼� ��й�ȣ�� �����϶�� �����ؾߵ�.
				}
				
				if(rs.getString("pwd").equals(pw)){
			    	kind=rs.getString("Kind");
					return 1; // ���� �α��ο� �������� ���
				}else{
					return 2; // ���̵�� �ִµ� ��й�ȣ�� �ùٸ��� �ʴ� ���
				}
			}	
	
		}catch(Exception e){
		}finally{
			if(rs != null)try{rs.close();}catch(SQLException ex){}
			if(stmt != null)try{stmt.close();}catch(SQLException ex){}
			if(conn != null)try{conn.close();}catch(SQLException ex){}
		}
		return 3; //���̵� ���� ���
	}
	public String clientsomaecheck(String userid){		// Client�� ���� ��ü ���� Ȯ��
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

	    String imsi = "";
		try{
		    conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
			//3. statement ����
			stmt = conn.createStatement();
			//4. ��������
			rs = stmt.executeQuery("SELECT * from Allclient where HP = '"+userid+"' Group by Somae");
			
			while(rs.next()){
				imsi += rs.getString("Somae")+"|";
			}
			
		}catch (Exception e) {
			return "ASDF";
		}finally{
			if(rs != null)try{rs.close();}catch(SQLException ex){}
			if(stmt != null)try{stmt.close();}catch(SQLException ex){}
			if(conn != null)try{conn.close();}catch(SQLException ex){}			
		}
		return imsi;
	}
	public int clientcoupon(String somaename, String userid){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try{
		    conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
			//3. statement ����
			stmt = conn.createStatement();
			//4. ��������
			rs = stmt.executeQuery("SELECT * from "+somaename+" where Phone = '"+userid+"'");
			
			if(rs.next()){
				return (rs.getInt("Cnt")+rs.getInt("Hanjan")*10);
			}
			
		}catch (Exception e) {
			return 0;
		}finally{
			if(rs != null)try{rs.close();}catch(SQLException ex){}
			if(stmt != null)try{stmt.close();}catch(SQLException ex){}
			if(conn != null)try{conn.close();}catch(SQLException ex){}			
		}
		return 0;
	}
}
