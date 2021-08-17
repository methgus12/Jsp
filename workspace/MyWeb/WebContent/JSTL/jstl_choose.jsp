<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <!-- elseif 문 c:choose 문을 사용합니다. -->
  

  <c:choose>
       <c:when test ="${param.name eq '홍길동' }">
          <p>홍길동입니다.</p>
          </c:when>
          
       <c:when test ="${param.name eq '이순신' }">
         <p>이순신입니다.</p>
         </c:when>
       
       <c:when test ="${param.name eq '홍길자' }">
         <p>홍길자입니다.</p>
         </c:when>
         
       <c:otherwise>
       <p>셋다아닌대용</p>
       </c:otherwise>
    </c:choose>
 
 
  
  <!-- 20세 이상 , 20세미만을 choose 문으로처리 -->
  
  <c:choose>
     <c:when test="${param.age >=20 }">
     <p>20세이상입니다</p>
     
     </c:when>
     <c:otherwise>
      미성년자입니다.
     </c:otherwise>
   </c:choose>
</body>
</html>