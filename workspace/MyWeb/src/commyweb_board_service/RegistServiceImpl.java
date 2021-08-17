package commyweb_board_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import commyweb_board_model.BoardDAO;

public class RegistServiceImpl implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		//controller에서 처리할 내용을 service 클래스가 분담
		
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content=request.getParameter("content");
		
		System.out.println(writer);
		System.out.println(title);
		System.out.println(content);
		
		//모델연결
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.regist(writer,title,content);
		
		
	}
	
	
	
	

}
