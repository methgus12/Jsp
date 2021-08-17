package commyweb_board_service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import commyweb_board_model.BoardDAO;


public class UpdateServiceImpl implements IBoardService {
	
	//서비스
		/*
		 * 1.UpdateServiceImpl 클래스를 생성하고 execute 메서드 실행
		 */

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bno = request.getParameter("bno");
		String title= request.getParameter("title");
		String content = request.getParameter("content");
		
		//DAO객체생성
		BoardDAO dao= BoardDAO.getInstance();
		dao.update(bno, title, content);
		
		
		
			
		
		
		
		
	}
	
	
	/*
	 * 2.서비수 영역에서 bno, title, content 를 받아서 DAO의 update메서드 실행
	 * 3.update 는 sql문을 이용해서 해당 글 번호의 내용을 수정
	 * 4.컨트롤로에서는 content화면으로 이동(content가 필요한 값을 자바측에서 전송)
	 * 
	 */
	
	
	

}
