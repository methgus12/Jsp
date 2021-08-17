<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <h2>아래값을 yyyy-mm-dd일형식으로 변경해서 출력</h2>
   
   <c:set var="time_a" value ="2020-05-03"/>
   <fmt:parseDate var="v1" value="${time_a }" pattern="yyyy-MM-dd"/>
   <fmt:formatDate var="a" value="${v1}" pattern="yyyy-MM-dd"/>
   ${a }
   
   <c:set var="time-d" value ="2020-05-03 21:30:32"/>
   <fmt:parseDate var ="v2" value="${time_b }" pattern="yyyy-MM-dd HH:mm:ss"/>
   <fmt:formatDate var="b" value="${v2 }" pattern="yyyy-MM-dd"/>
   
   ${b }
   
   <c:set var="time-c" value="<%=new Date()%>"/>
   <fmt:formatDate var="c" value="${time-c }" pattern ="yyyy-MM-dd"/>
   ${c }
  

</body>
</html>