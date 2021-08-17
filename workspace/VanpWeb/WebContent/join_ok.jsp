<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.UserDAO" %>
<%@page import="user.UserVO" %>
<%
    
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String gender = request.getParameter("gender");
    
   UserDAO dao = UserDAO.getInstance();
   int result = dao.checkId(id);
   
  if(result ==0) {
   
%>
<script>
alert("아이디가 중복되었습니다!");
history.go(-1);
</script>

<% } else  {
	UserVO vo = new UserVO(id,pw,name,phone,gender);
	int result2 = dao.join(vo);
	
	if(result2==1) {
	
%>
<script>
alert("회원가입을 축하합니다!");
location.href="thanks_join.jsp";

</script>

<%
} else {
%> 
<script>
alert("네트워크오류입니다");
location.href="join.jsp";

</script>
<%
}
	
}

%>