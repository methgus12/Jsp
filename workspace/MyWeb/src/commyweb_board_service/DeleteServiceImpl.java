package commyweb_board_service;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import commyweb_board_model.BoardDAO;

public class DeleteServiceImpl implements IBoardService{

	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		

		String bno = request.getParameter("bno");
		
		BoardDAO dao= BoardDAO.getInstance();
		dao.delete(bno);
		
		
	}
	
	
	
	

}
