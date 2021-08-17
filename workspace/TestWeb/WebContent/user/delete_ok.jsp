<%@page import="Controller.TestVO"%>
<%@page import="Controller.TestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

request.setCharacterEncoding("utf-8");

String id =(String)session.getAttribute("user_id");
String pw =request.getParameter("pw");

TestDAO dao = TestDAO.getInstance();
TestVO vo = dao.login(id, pw);
int result =dao.delete(id);

if(vo ==null) {  //비밀번호 틀린상태
	
	
%>

<script>
   alert("현재 비밀번호를 확인하세요 ");
   history.go(-1);
   

</script>


<%} else { 

   if(result ==1) {
	   
	   session.invalidate();
 %>
 
 <script>
    alert("삭제성공 , 안녕히가세요 ㅠㅠ");
    location.href="/TestWeb";
 </script>
 
<%}  else {
 %>
 
   <script>
     alert("삭제 실패 다시확인 해주세요 :(");
     location.href="mypage.jsp";
   
   </script>
   
   <%}} %>
   
   
 






