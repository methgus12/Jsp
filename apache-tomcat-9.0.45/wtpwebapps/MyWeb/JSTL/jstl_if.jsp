<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- 약속된 주소  --> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- 추가로 종속된 태그가 없으면 /> 마감처리합니다. -->
    <c:set var="num" value="1" /> <!-- 변수명 num , 변수 값 1로 설정한것  -->
    
    <!-- 변수출력 -->
    <c:out value="${num}"/> <!-- 출력하기 -->
    
    <!-- 즉 c:set => 저장, c:out => 출력 -->
    
    <hr/>
    
    <% if(true) {%>
        <p>무조건 실행되는 문장^^</p>
        
    <% } %>
    
    <!-- 위와 같은출력 , c:if이용한 모습  -->
    
    <!-- if 구문 c:if  test="조건절" -->
    <c:if test="true">
       <p>무조건 실행되는 문장^^</p>
       
    </c:if>
    
    <!-- 위의 c:set으로 지정한 num을 이용한 if 문 응용 -->
    <c:if test="${num eq 1 }">
        <p>num은 1이네요~</p>
    </c:if>
    
    <hr/>
    
    <h2>파라미터 값을 el jstl로 받기</h2>
    <c:if test="${param.name eq '홍길동' }">
    홍길동입니다.
    </c:if>

    <c:if test="${param.name =='이순신' }">
    이순신입니다.
    </c:if>
    
    <!-- age파라미터값이 20이상이면 성인입니당 20 미만이면 미성년자입니다. -->
    
    <c:if test="${param.age >=20 }">
      성인입니당~
    </c:if>
    
    <c:if test="${param.age <20 }">
    미성년자입니다! 
    </c:if>
    
    <!--if 구문을 ifelse 구문으로 작성도가능 -->
    
    
    
    
    
    
        

</body>
</html>