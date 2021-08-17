<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.UserDAO" %>
<%@page import="user.UserVO" %>


<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

UserDAO dao = UserDAO.getInstance();

UserVO vo = dao.login(id, pw);

if(vo == null) {	
%>

<script>
alert("아이디와 비밀번호를 확인하세요 :(");
history.go(-1);

</script>


<%
} else { 

session.setAttribute("user_id" , vo.getId());
session.setAttribute("user_pw", vo.getPw());

response.sendRedirect("mypage.jsp");
}
%>


