
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  <!-- fmt로 바꿔주기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <h2>formatNumber , formatDate , parseNumber</h2>
    <!-- form 형식을 바꿈 , parse는 형변환  -->
    
    <c:set var ="d01" value ="2020"/>
    
    <fmt:formatNumber var="v01" value="${d01}" pattern ="0000.000"/>
    <fmt:formatNumber var="v02" value="${d01}" pattern ="00000000"/>
    
    ${v01 }
    ${v02 }
    <hr/>
    <c:set var="d02" value="<%=new Date() %>"/>
    <fmt:formatDate var="v02" value="${d02}" pattern="yyyyMMdd HH:mm:ss"/> <!-- value는 반드시 날짜의 형식이 들어갑니다. -->
    <fmt:formatDate var="v04" value="${d02 }" pattern="yyyy년 MM월dd일"/>
    <fmt:formatDate var="v05" value="${d02 }" pattern="yyyy-MM-dd HH:mm:ss"/>
    
    
    
    ${v03 }<br/>
    ${v04 }<br/>
    ${v05 }<br/>
    
    <hr/>
    <fmt:parseNumber var="v06" value="1.100" pattern ="0.000" /><!-- 숫자형식 자리를 지정해서 변 -->
    <fmt:parseNumber var="v07" value="1,123abc" type ="number" /><!-- 숫자로 변환가능한 부분을 숫자로 변경 -->
   
    ${v06 }<br/>
    ${v07 }
    
    <hr/>
    <h2>문자를 날짜로 변경 : parseDate</h2>
    
    <c:set var="d03" value="2020/11/04"/>
    
    <fmt:parseDate var="v08" value="${d03 }" pattern="yyyy/MM/dd"/>
    <fmt:formatDate var="a" value="${v08 }" pattern="yyyy년MM월 dd일"/>
    <!-- 두번의작업을거쳐야함 -->
    ${v08 }<br/>
    ${a }
    
    <c:set var="d04" value="2020-11-04 23:12:11"/>
    <fmt:parseDate var ="v09" value="${ d04}" pattern="yyyy-MM-dd HH:mm:ss" />
    <fmt:formatDate var="b" value="${v09 }" pattern="yyyy년MM월 dd일"/>
    
    
    ${v09 }
    ${b }<br/>
    
    
    
    
    
    

</body>
</html>