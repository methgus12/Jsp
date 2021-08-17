<%@page import="Controller.TestVO"%>
<%@page import="Controller.TestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%

request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String dog = request.getParameter("dog");

TestVO vo = new TestVO(id, pw, name,dog ,null);
TestDAO dao = TestDAO.getInstance();

int result = dao.update(vo);
if (result ==1) {
	session.setAttribute("user_name" , vo.getName());
	
%>

<script>
   alert("회원정보가 정상 수정되었습니다.");
   location.href="mypage.jsp";
   
</script>

<% } else { %>

<script>
 alert("회원정보수정에 실패하였습니다.");
 location.href="mypage.jsp";
</script>

<%} %>
