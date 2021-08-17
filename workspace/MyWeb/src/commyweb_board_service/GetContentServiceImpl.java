package commyweb_board_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import commyweb_board_model.BoardDAO;
import commyweb_board_model.BoardVO;

public class GetContentServiceImpl implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bno = request.getParameter("bno");
		
		//DAO객체생성
		
		BoardDAO dao = BoardDAO.getInstance();
		
		
		//DAO getContent() 메서드 생성 .
		///BoardDAO에 메서드 생성하러 이동하세용 ~
		
		//bno를 기반으로 한 행을 vo에 담아서 가지고 나옵니다
		BoardVO vo =dao.getContent(bno);
		
		
		//request객체의 vo이름으로 데이터를 저장
		
		request.setAttribute("vo",vo);
		
		//content.jsp화면에서는 vo값을 출력
		
		
		
		
		
	}
	
	

}
