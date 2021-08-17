<%@page import="commyweb.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
     /*
    UserVO vo=(UserVO)request.getAttribute("vo");
     */

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

       아이디 : ${requestScope.vo.id}<br/>
       이름 : ${requestScope.vo.name}<br/>
       
       <!-- requestScope 는 생략을 많이하고 사용합니다. -->
       <!--  ${vo.id }<br/>
             ${vo.name }<br/> 
       -->
      
       
       
</body>
</html>