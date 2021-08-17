package boardmodel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	
	//멤버변수등
	private DataSource ds;
	private Connection conn =null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	private static BoardDAO instance = new BoardDAO();
	
	private BoardDAO() {
		
		try {
			
			InitialContext ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oacle");
			
			
		} catch (Exception e) {
			
		}
	}
	
	public static BoardDAO getInstance() {
		
		return instance;
	}
	
	public void regist() {
		
	}
}
