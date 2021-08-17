<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
     request.setCharacterEncoding("utf-8");
     /*
     원래 쓰던 방법
     
     String id = request.getParameter("id");
     String pw = request.getParameter("id");
     String name = request.getParameter("id");
     */
     

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

     <!-- param -태그 네임으로 한번에 받아서 사용합니다 -->
     
     ${param.id}<br/>
     ${param.pw}<br/>
     ${param.name}<br/>

</body>
</html>