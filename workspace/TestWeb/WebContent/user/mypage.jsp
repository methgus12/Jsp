<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   if(session.getAttribute("user_id")==null) {
	   response.sendRedirect("login.jsp");
   }

   String id = (String)session.getAttribute("user_id");
  
   
   
%>

<%@ include file="../include/header.jsp" %>
<section>
<div>

    <h2>[ <%=id %> ] 님의 개인정보를 관리합니당</h2>
    <a href ="logout.jsp">LOGOUT !</a><br/>
     <a href ="update.jsp">UPDATE MYPAGE </a><br/>
     <a href ="delete.jsp">SECESSION :(</a><br/>
     
    
    
   

</div>

</section>
<%@ include file="../include/footer.jsp" %>
