<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="../include/header.jsp" %>

<section>
  <div align="center">
   <h2>로그인 하기</h2>
   <hr/>
   
   
   <form action ="login_ok.jsp" method="post">
      <input type ="text" name ="id" placeholder="ID "><br><br>
      <input type ="password" name="pw" placeholder="PW"><br><br>
      
      <input type ="submit"  value="로그인" class="button">
      <input type ="button" value ="회원가입하기" class="button" onclick="location.href='join.jsp'">
      

   
   </form>

  
  </div>


</section>
<%@include file ="../include/footer.jsp" %>
