package commyweb_board_service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import commyweb_board_model.BoardDAO;
import commyweb_board_model.BoardVO;

public class GetListServiceImpl implements IBoardService {


	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//DAO생성
		
		BoardDAO dao = BoardDAO.getInstance();
		ArrayList<BoardVO> list =dao.getList();
		
		//화면에 가지고 나갈 list 를 request저장
	    request.setAttribute("list", list);
	    
	    
	    

		
	}

}

