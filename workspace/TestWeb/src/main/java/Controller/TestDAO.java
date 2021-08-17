package  Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import JdbcUtil.JDBC;

@SuppressWarnings("unused")
public class TestDAO {
	 ////멤버변수
	   private String url = "jdbc:oracle:thin:@localhost:1521/xe";
	   private String uid = "JSP";
	   private String upw = "JSP";
	   
	   private Connection conn = null;
	   private PreparedStatement pstmt = null;
	   private ResultSet rs = null;
	   private DataSource ds; //데이터 페이스 연결풀을 저장해놓는 객체
	   
	  
	
	//1.스스로 객체 한개 생성한 것 .
	private static TestDAO instance = new TestDAO();
	
	//2.생성자에 private 제한 
	private TestDAO() {

		
		try {
			//커넥션 툴얻기
			InitialContext ctx = new InitialContext();
			ds=(DataSource)ctx.lookup("java:comp/env/jdbc/oracle");

		}catch(Exception e) {
			
			System.out.println("드라이버 호출에러");
			
			
			
		}
	}
	
	//3.getter , setter 메서드
	public static TestDAO getInstance() {
		
		return instance;
	}
	
	//1.회원가입시 , 아이디 중복검사
	
	public int checkId(String id) {
		
		int result =0;
		
		String sql="select * from DOGUSERS where id = ?";
		
		try {
			
			conn= ds.getConnection();
	    	pstmt = conn.prepareStatement(sql);
	    	pstmt.setString(1, id);
	    	
	    	rs= pstmt.executeQuery();
	    	
	    	
	    	if(rs.next()) { //중복된경우
	    		result =0;
	    		
	    	} else {
	    		
	    		result=1; //중복아님
	    		
	    	}
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			
		} finally {
			JDBC.close(conn, pstmt, rs);
		}
		return result;
		
	}
	
	//회원가입 메서드
	
	public int join(TestVO vo) {
		int result =0;
		
		String sql="insert into dogusers(id, pw, name, dog) values(?,?,?,?)";
		
		
		try {
			conn= ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getDog());
			
			result =pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
			
		} finally {
			JDBC.close(conn, pstmt, null);
		}
		
		return result;
	}
	
	//로그인 메서드 만들기 
	
	public TestVO login(String id , String pw) {
		
		TestVO vo = null;
		String sql ="select * from dogusers where id =? and pw=?";
		
		try {
			
			conn = ds.getConnection();
			pstmt =conn.prepareStatement(sql);
			
			//sql 문에 넣기
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			
			
			if(rs.next()) {
				String id2 =rs.getString("id");
				String pw2 = rs.getString("pw");
				
				vo = new TestVO();
				vo.setId(id2);
				vo.setPw(pw2);
			
				
				
			}
			
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			
		} finally {
			JDBC.close(conn, pstmt, rs);
		}
		
		return vo;
	}
	
	//탈퇴 메서드
	
	public int delete(String id) {
		
		int result =0;
		
		String sql= "delete from dogusers where id=?";
		
		try {
			conn = ds.getConnection();
			pstmt =conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			result =pstmt.executeUpdate();
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
			
		} finally {
			JDBC.close(conn, pstmt, null); 
		}
		
		return result;
		
	}
	
	//회원정보조회
	public TestVO getInfo(String id) {
		TestVO vo = null;
		String sql="select * from dogusers where id =?";
		
		try {
			conn =ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1,id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String id2 = rs.getString("id");
				String name= rs.getString("name");
				String dog = rs.getString("dog");
				
				vo = new TestVO(id2, null, name, dog ,null );
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBC.close(conn, pstmt, rs);
		}
		
		return vo;
	}
	
	//회원정보수정메서드
	
	public int update(TestVO vo) {
		int result =0;
		String sql = "update dogusers set pw=? , name=? , dog where id=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getPw());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getDog());
			pstmt.setString(4, vo.getId());
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			JDBC.close(conn, pstmt, rs);
		}
		
		return result;
	}
}
