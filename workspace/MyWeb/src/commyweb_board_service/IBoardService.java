package commyweb_board_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface IBoardService {
	
	//추상메서드의 매개변수로 doAction이 받고있는 request , response 객체를 받음
	public void execute(HttpServletRequest request, HttpServletResponse response);
	
	
	
	

}
