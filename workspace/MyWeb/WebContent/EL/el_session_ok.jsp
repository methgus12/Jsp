<%@page import="commyweb.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    /*
    UserVO vo = (UserVO)session.getAttribute("vo");
    String auth =(String)session.getAttribute("auth");
    */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <!-- 세션값을 el 태그로 참조하려면 sessionScope.이름 -->
 <!-- sessionScope 생략가능 , 하지만 표시해주는게 조금더 좋음 -->
 
   auth:${sessionScope.auth}<br/>
   아이디 ${sessionScope.vo.id} <br/>
   이름 ${sessionScope.vo.name}<br/>
   
   app에 admin : ${applicationScope.admin } <br/>

</body>
</html>