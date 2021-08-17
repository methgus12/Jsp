<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 //삭제
 session.invalidate();
 
 
 //홈화면으로 다시 돌아옴
 response.sendRedirect("/TestWeb");
 
 %>