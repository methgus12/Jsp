<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- 약속된 주소  --> 
    
<%
    List<Integer> list = new ArrayList<>();
    list.add(1);
    list.add(2);
    list.add(3);
    list.add(4);
    list.add(5);
    
    //request에 setAttr로 저장
    request.setAttribute("list", list);
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach var ="i" items="${list }"> <%--requestScope 생략가능 원래는 requestScope.list --%>
  ${i}

</c:forEach>


<%--알아둘것들
   1.set : 값 설정 , 즉 변수에 값지정
   2.out : 값 출력 
   3.forEach : 포문
   4.if : 조건문 if
   5.choose  when :조건문 elseif
    
--%>


</body>
</html>