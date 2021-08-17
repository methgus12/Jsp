package commyweb_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import commyweb_board_service.DeleteServiceImpl;
import commyweb_board_service.GetContentServiceImpl;
import commyweb_board_service.GetListServiceImpl;
import commyweb_board_service.IBoardService;
import commyweb_board_service.RegistServiceImpl;
import commyweb_board_service.UpHitServiceImpl;
import commyweb_board_service.UpdateServiceImpl;


//1.
@WebServlet("*.board") 
public class BoardControlller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public BoardControlller() {
        super();
       
    }
//2.get, post 요청 하나로 묶음
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 doAction(request,response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//요청분기작업
		
		request.setCharacterEncoding("utf-8");
		
		String uri=request.getRequestURI();
		String path =request.getContextPath();
		
		String command = uri.substring(path.length()); //요청경로
		
		System.out.println("command");
		
		//MVC2방식은 forward 이동을 기본적으로 사용합니다. 리다이랙트는 다시 컨트롤러로 연결할때 사용합니다.
		
		
		//service의 인터페이스 타입을 선언 (if문 안에서 알맞은 서비스 클래스로 연결)
		IBoardService service ;
		
		if(command.equals("/board/list.board")) { //글목록요청 들어올경로입력
			//...조회메서드를 값을 가지고 화면으로이동
			//response.sendRedirect("board_list.jsp"); //일단 화면이동
			
			service= new GetListServiceImpl();
			service.execute(request, response);
			
			//화면에 전달할값이 있으니 forward이동
			request.getRequestDispatcher("board_list.jsp").forward(request, response); //나갈경로입력
			
			
			
		} else if(command.equals("/board/write.board")) {//글작성 화면요청
			
			request.getRequestDispatcher("board_write.jsp").forward(request, response);
			
		} else if (command.equals("/board/regist.board")) {//글 등록요청
			
		    service = new RegistServiceImpl(); //if 문 바깥에서 선언하여 이런형태로 쓸수있음
		    service.execute(request, response);
		    
		    response.sendRedirect("list.board"); //리다이렉트는 다시 컨트롤러를 태울때 사용합니다.
		    
		    //기본적으로 전부 forward 형식의 모습이여야함
   
			
		} else if(command.equals("/board/getContent.board")) {
			//게시글 정보조회
			service = new GetContentServiceImpl();
			service.execute(request, response);
			
			//조회수증가
			
			service = new UpHitServiceImpl();
			service.execute(request, response);
			
			
			
			request.getRequestDispatcher("board_content.jsp").forward(request, response);
			
			
		}else if(command.equals("/board/modify.board")) {
			
			//getContentServiceimpl 재활용
			
			service = new GetContentServiceImpl();
			service.execute(request, response);
			
			request.getRequestDispatcher("board_modify.jsp").forward(request, response);
			
			
			
			
		} else if(command.equals("/board/update.board")) {
			
			//서비스
			/*
			 * 1.UpdateServiceImpl 클래스를 생성하고 execute 메서드 실행
			 * 2.서비수 영역에서 bno, title, content 를 받아서 DAO의 update메서드 실행
			 * 3.update 는 sql문을 이용해서 해당 글 번호의 내용을 수정
			 * 4.컨트롤로에서는 content화면으로 이동(content가 필요한 값을 자바측에서 전송)
			 * 
			 */
		
			
			service = new UpdateServiceImpl();
			service.execute(request, response);
			
			//다시컨트롤러를 태워서이동
			response.sendRedirect("getContent.board?bno="+request.getParameter("bno"));
			
			
			
			
			
			
		} else if(command.equals("/board/delete.board")) {
			
			service = new DeleteServiceImpl();
			service.execute(request, response);
			
			response.sendRedirect("list.board");
		}
		
		
	}
}
