<%@page import="commyweb.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
    
<%
     UserVO vo= new UserVO();
     vo.setId("kkk123");
     vo.setName("홍길동");
     
     request.setAttribute("vo",vo);
     request.getRequestDispatcher("el_request_ok.jsp").forward(request, response);
     
     

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>