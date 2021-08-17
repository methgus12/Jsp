<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

     <!-- 부트스트랩 css파일참조 -->
     <link rel="stylesheet" href="css/bootstrap.css">
     <!-- 부트스트랩 js를 사용하기 위해서 jquery라이브러리 참조 -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
     <!-- 부트스트랩 js참조 -->
     <script src="js/bootstrap.js"></script>
     <!--개인 디자인-->
     <link rel="stylesheet" href="css/basic.css">
     <!--로그인디자인-->
     <link rel="stylesheet" href="css/login.css">
     <link rel="stylesheet" href="css/basic.css">
     <link rel="stylesheet" href="css/thanks.css">
     <link rel="preconnect" href="https://fonts.gstatic.com">
 <link href="https://fonts.googleapis.com/css2?family=Mate+SC&display=swap" rel="stylesheet">
 <style>
     *{
         font-family: 'Mate SC', serif;
     }
 </style>



</head>
<body>

    <header>
        <div class="container">
            <div class="inner-logo">
                <a href="index.jsp">the vanp</a>
            </div>
            <!-- <div class="inner-list">
                <a href="login.html">login</a>
                <a href="join.html">join</a>
                <a href="board.html">board</a>
            </div>
             -->
        </div>
    </header>


    <section>

        <div class="t-group">
            <div class="t-title">
                <p>가입해주셔서 감사합니다. 즐겁게 둘러보시고 좋은 하루 보내세요 :)</p>
          </div>

            <div class="t-list">
                <ul >
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="board.jsp">Board</a></li>
                    <li><a href="mypage.jsp">Mypage</a></li>
                </ul>

            </div>
        </div>





    </section>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  <%@ include file ="include/footer.jsp" %>
 