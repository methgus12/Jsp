package commyweb_board_model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import commyweb_util.JdbcUtil;

public class BoardDAO {
	/*
	 * DAO는 클래스는 단순히 DB연동만 담당하기 때문에 불필요하게 객체를 여러개 생성 할 필요가 없습니다.
	 * 그래서 싱글톤 패턴을 적용해서 객체를 1개만 생성되도록 만듭니다.
	 * 
	 */
	//1. 스스로 객체를 1개 생성합니다.
	private static BoardDAO instance = new BoardDAO();
	//2. 외부에서 생성자를 호출할 수 없도록 생성자에 private제한을 붙임
	private BoardDAO()  {
		try {
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			//커넥션풀을 얻는 방법
			InitialContext ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	//3. 외부에서 객체생성을 요구하면 getter메서드를 이용해서 1번의 객체를 반환
	public static BoardDAO getInstance() {
		return instance;
	}
	
	//---------------------------------------------------------------
	//멤버변수
	private DataSource ds; //데이터베이스 연결풀을 저장해놓는 객체
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	//글등록
	public void regist(String writer,String title,String content) {
	
		//insert작업
		String sql = "insert into board(BNO,WRITER,TITLE,CONTENT) values(BOARD_SEQ.nextval,?,?,?)";
		
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, writer);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			
			pstmt.executeLargeUpdate(); //등록후에 끝
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				JdbcUtil.close(conn, pstmt, null);
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		
		
		
	}

	//글목록 조회
	public ArrayList<BoardVO> getList(){
		
		ArrayList<BoardVO> list = new ArrayList<>();
		
		String sql = "select * from board order by bno desc";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int bno = rs.getInt("bno");
				String writer = rs.getString("writer");
				String title = rs.getString("title");
				String content = rs.getString("content");
				Timestamp regdate = rs.getTimestamp("regdate"); //날짜형은 Timestamp() getDate()
				int hit = rs.getInt("hit");
				
				BoardVO vo = new BoardVO(bno, writer, title, content, regdate, hit);
				list.add(vo);
			}
			
			} catch (Exception e) {
				e.printStackTrace();
		}finally {
			try {
				JdbcUtil.close(conn, pstmt, rs);
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return list;
	}

	//글 정보 가져오기
	public BoardVO getContent(String bno) {
		BoardVO vo = null;
		
		String sql = "select * from board where bno = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bno);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new BoardVO();
				vo.setBno(rs.getInt("bno"));
				vo.setWriter(rs.getString("writer"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				vo.setHit(rs.getInt("hit"));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				JdbcUtil.close(conn, pstmt, rs);
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		
		
		return vo;
	}
	
	//글수정메서드
	
	public void update(String bno, String title , String content) {
		
		
		String sql = "update board set title =?, content=?, regdate=sysdate,where bno =? "; //날짜는 현재날짜로 ~
		
		try {
			
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, title );
			pstmt.setString(2, content);
			pstmt.setString(3, bno);
			
			pstmt.executeUpdate();
			
			
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
			
		}finally {
				JdbcUtil.close(conn, pstmt, rs);
				
		
				
			
		}
		
		
		
		
	}//글삭제
	
	public void delete(String bno) {
		
		String sql ="delete from board where bno =?" ;
		
		try {
			
			conn=ds.getConnection();
			
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, bno);
			pstmt.executeUpdate();
					
			
			
		} catch(Exception e){
			e.printStackTrace();
			
			
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
	}
	//조회수 증가 메서드
	
	public void upHit(String bno) {
		
		String sql = "update board ser hit = hit+1 where bno =?";
		try {
			conn=ds.getConnection();
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,bno);
			
			pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			
			JdbcUtil.close(conn, pstmt, rs);
		}
		
	}
	
	
	
	
	
	
	
	
	
}
