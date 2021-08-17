package commyweb_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/TestController")
@WebServlet("*.test") //확장자 패턴
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public TestController() {
        super();
        
    }

	
    //2.get, Post 요청을 doAction메서드 하나로 연결
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request,response);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request,response);
	}
	
    protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String uri=request.getRequestURI();//uri값
    	String path = request.getContextPath(); //컨텍스트종료
    	
    	String command =uri.substring(path.length());//요청분기
    	
    	System.out.println(command);
    	
    	if(command.equals("/controller/join.test")) {
    		//가입요청처리
    	} else if(command.equals("/controller/login.test")) {
    		//로그인처리
    	}
    	
		
	}  

}
