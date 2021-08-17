<%@page import="commyweb.UserDAO"%>
<%@page import="commyweb.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");

String id= request.getParameter("id");
String pw = request.getParameter("pw");
String name= request.getParameter("name");
String email = request.getParameter("email");
String address= request.getParameter("address");

//vo에 값을 저장

UserVO vo = new UserVO(id,pw,name,email,address,null) ;

//DAO 생성

UserDAO dao = UserDAO.getInstance();

int result = dao.update(vo);
if(result ==1) {//성공
	
   session.setAttribute("user_name",vo.getName());
%>
<script>
   alert("회원정보가 정상 수정되었습니다.");
   location.href="mypage.jsp";


</script>
	
<%} else {//실패%>

	<script>
	alert("회원정보 수정에 실패하였습니다");
    location.href="mypage.jsp";
    </script>

<%
    }
%>