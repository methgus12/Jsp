package boardservice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IBoardService {
	
	public void execute(HttpServletRequest request, HttpServletResponse response);
}
