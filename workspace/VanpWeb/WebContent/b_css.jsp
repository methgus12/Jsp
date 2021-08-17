<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <link rel="stylesheet" href="css/info.css"> 
    <link rel="stylesheet" href="css/thanks.css">
    <link rel="stylesheet" href="css/forgot.css">
    <link rel="stylesheet" href="css/board.css">

    <!--보드디자인-->
    <link rel="stylesheet" href="css/board.css">
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Mate+SC&display=swap" rel="stylesheet">
<style>
    *{
        font-family: 'Mate SC', serif;
    }
</style>

<title>Insert title here</title>
</head>
<body>

 <header>
        <div class="container">
            <div class="inner-logo">
                <a href="index.jsp">the vanp</a>
            </div>
            <div class="inner-list">
                <a href="login.jsp">login</a>
                <a href="join.jsp">join</a>
                <a href="board.jsp">board</a>
            </div>
            
        </div>
    </header>

    <section>
        <div class="col-lg-12 b-group">
            <span class="board-list-home" ><a href="board.html">Home</a></span>
            <span class="board-list" ><a href="boardcss.html">HTML & CSS</a></span>
            <span class="board-list" ><a href="boardjava.html">JAVA</a></span>
            <span class="board-list" ><a href="boardjsp.html">JSP</a></span>
            <span class="board-list" ><a href="boardjs.html">JS</a></span>
            <span class="board-list" ><a href="boarddb.html">DB</a></span>
        </div>

        <div class="container">
          <div class="col-lg-12 code-group">
              <div class="code-title"><a href="">HTML & CSS</a></div>
              <hr>

              <div class="code-box">
                <div class="code-title">
                    <p class="p-num">num</p>
                    <p class="p-title">title</p>
                    <p class="p-id">id</p>
                    <p class="p-date">date</p>
                </div>

              </div>
              <input type="button" value="write" class="btn board-btn" onclick="location.href='writer'">
              </div>
             

              </div>

              </div>


          </div>

        </div>

    </section>
 
    <footer>
        <div class="foot">
            <ul>
                <li><a href="https://www.instagram.com/1997kg_f/?hl=ko">Instagram</a></li>
                <li><a href="https://blog.naver.com/thevanppp">Blog</a></li>
                <li><a href="">Email</a></li>
                <li><a href="index.html">@thevanppp</a></li>
            </ul>
        </div>
     </footer>


</body>
</html>