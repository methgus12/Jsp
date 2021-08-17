package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WebServlet
 */
@WebServlet("*.test")
public class Testcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	 public Testcontroller() {
	      super();
	     
	  }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doAction(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getRequestURI(); //URI값
		String path = request.getContextPath(); //컨택스트 경로
		
		String command = uri.substring( path.length() ); //요청 분기
		
		System.out.println(command);
		
		if(command.equals("/controller/join.test")) {
			//.....가입요청처리...
		} else if(command.equals("/controller/login.test")) {
			//.....로그인처리...
		}
		
		
		
		
		
	}
}
