import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class JdbcInsert {
	
	public static void main(String[] args) {
		
		//insert 
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("ID>");
		String id=scan.next();
		System.out.println("PW>");
		String pw=scan.next();
		System.out.println("NAME>");
		String name=scan.next();
		System.out.println("EMAIL>");
		String email=scan.next();
		
		
		String url="jdbc:oracle:thin:@localhost:1521/xe";
		String uid="JSP";
		String upw="JSP";
		
		Connection conn =null;
		PreparedStatement pstmt=null;
		String sql="insert into members values(?,?,?,?)";
		
		try {
			//1.드라이버로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//2.conn 객체생성
			conn= DriverManager.getConnection(url,uid, upw);
			
			//3.pstmt 객체생성
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			
			//4.sql실행
			int result =pstmt.executeUpdate();
			
			if(result ==1) {
				System.out.println("정상처리");
				
			} else {
				System.out.println("insert 실패");
			}
			
		} catch(Exception e) {
			
		}finally {
			try {
				conn.close();
				pstmt.close();
				
			} catch(Exception e2) {
				
			}
		}
		
		
		
	}

}
