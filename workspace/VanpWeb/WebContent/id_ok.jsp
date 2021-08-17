<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.UserDAO" %>
<%@page import="user.UserVO" %>
<%
    
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
 
   UserDAO dao = UserDAO.getInstance();
   int result = dao.checkId2(id);
   
  if(result ==0) {
   
%>
<script>
alert("아이디가 중복되었습니다!");
history.go(-1);
</script>

<% } else { %>
<script>
alert("사용가능한 아이디입니다 :) ");
history.go(-1);

</script>

<%}%>