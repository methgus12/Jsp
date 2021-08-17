<%@page import ="Controller.TestDAO" %>
<%@page import ="Controller.TestVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
    

<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String dog = request.getParameter("dog");



//1.회원가입시 , 가입할 아이디 중복 검사

TestDAO dao = TestDAO.getInstance();
int result = dao.checkId(id);

if(result ==0) { //중복인 상태
%>

 <script>
     alert("아이디가 중복되었습니다.");
     history.go(-1); //뒤로 한칸
 
 </script>	
	


<%} else { 

  //회원가입
  
  TestVO vo = new TestVO(id, pw, name, dog ,null);
  int result2 = dao.join(vo);
  if(result2==1) {
	  
%>

<script >

   alert("회원가입을 축하합니다~ -볼트올림-"); 
   location.href ="login.jsp";

</script>


<% } else { %>

<script>
   alert("네트워크오류입니다");
   location.href="join.jsp";
</script>  

<%
   }

}

%>

