<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2>1~100까지의 홀수의 합</h2>
   <%--자바로 쓰는법 --%>
   <%
   int sum =0;
   for (int i =1; i <=100; i+=2) {
	   sum = sum+i;
	   
   }
   %>
   결과: <%=sum %>
   <hr/>
   
   <%--<c:forEach 이용법 --%>
   <c:set var = "total" value ="0"    />
   <%--반복문은 c:forEach var="변수" begin ="시작값" end"종료값"step ="증가값" --%>
   <c:forEach var ="i" begin ="1" end ="100" step="2">
      <c:set var ="total" value="${total + i }"/>
   
   </c:forEach>
   
   결과 : ${total}
   
   <hr/>
   
   <h2>구구단 3단</h2>
   
   <c:forEach var ="i" begin ="1" end="9">
      3 x ${i } = ${3*i }<br/>
   </c:forEach>
   
   <h3>2단 ~ 9단까지 구구단 출력</h3>
   
   <c:forEach var = "i" begin="2" end="9">
      <hr/> 구구단 ${ i} <hr/><br/>
     <c:forEach var ="j" begin ="1" end="9">
     
     ${i } X ${j } =${i*j }<br/>
     
    
     </c:forEach>
    
   </c:forEach>
   
   <h3>자바를 이용한 향상된 포문</h3>
   
   <%
   int [] arr = new int[] {1,2,3,4,5};
   
   for (int i :arr) {
	   out.println(i);
	   
   }
   
   %>
   
   <h3>forEach를 이용한 향상된 포문</h3>
   <%---- 향상된 포문 forEach와 items를 사용/ varStatus는 for 문의 상대값을 확인 --%>
   
   <c:set var ="arr2" value = "<%=new int[] {1,2,3,4,5} %>" /> <%--배열은 이렇게 표현해 줍니다. --%>
   <c:forEach var ="i" items="${arr2 }" varStatus ="s"> 
     ${s.index } 인덱스:  ${i } <br/>
     
    
   
   </c:forEach>
   
   

   

</body>
</html>