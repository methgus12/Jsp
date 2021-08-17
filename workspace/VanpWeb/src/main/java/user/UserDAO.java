package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import controller.JdbcUtil;

public class UserDAO {
	
	private String url="jdbc:oracle:thin:@localhost:1521/xe";
	private String uid ="JSP";
	private String upw ="JSP";
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private DataSource ds;
	
	private static UserDAO instance = new UserDAO();
	
	private UserDAO () {
		try {
			
			InitialContext ctx = new InitialContext();
			ds= (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {
			System.out.print("호출에러");
		}
	} 
	
	public static UserDAO getInstance() {
		return instance;
	}
	
	//아이디 중복검사
	
	public int checkId(String id) {
		int result =0;
		String sql ="select * from vanps where id =?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result =0;
			} else {
				result=1;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn,pstmt,rs);
		}
		
		return result;
	}
	
	//2
	
	public int checkId2(String id) {
		int result =0;
		String sql ="select * from vanps where id =?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result =0;
			} else {
				result=1;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn,pstmt,rs);
		}
		
		return result;
	}
	//회원가입 메서드
	
	public int join(UserVO vo) {
		int result =0;
		String sql ="insert into vanps(id,pw,name,phone,email) values (?,?,?,?,?) ";
		
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getPhone());
			pstmt.setString(5,vo.getEmail());	
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			JdbcUtil.close(conn,pstmt,null);
		}
				
	
	return result;
	}
	//로그인 메서드
	
	public UserVO login(String id, String pw) {
		UserVO vo = null;
		String sql ="select * from vanps where id=? and pw=?";
		
		try {
			
			conn = ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String id2 = rs.getString("id");
				String pw2 = rs.getString("pw");
				
				vo= new UserVO();
				vo.setId(id2);
				vo.setPw(pw2);

			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
			
		}
		
		return vo;
	}
	
	//비밀번호 찾기 
	

	
}
