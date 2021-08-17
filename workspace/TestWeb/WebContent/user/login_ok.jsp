<%@page import ="Controller.TestDAO" %>
<%@page import ="Controller.TestVO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("utf-8");


  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
  
  TestDAO dao = TestDAO.getInstance();
  TestVO vo = dao.login(id, pw);
  
  if (vo == null) {
%>
<script>

  alert("아이디와 비밀번호를 확인하세요 ㅠ_ㅠ");
  history.go(-1);
</script>

<%
//로그인 성공
} else { 
	
	session.setAttribute("user_id", vo.getId());
	session.setAttribute("user_pw", vo.getPw());
	
	response.sendRedirect("mypage.jsp");
}
  

%>

