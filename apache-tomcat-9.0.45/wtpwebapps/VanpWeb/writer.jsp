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
    <link rel="stylesheet" href="css/info.css">
    <link rel="stylesheet" href="css/thanks.css">
    <link rel="stylesheet" href="css/forgot.css">

    <!--보드디자인-->
    <link rel="stylesheet" href="css/board.css">

    
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
                <a href="index.html">the vanp</a>
            </div>
            <div class="inner-list">
                <a href="login.html">login</a>
                <a href="join.html">join</a>
                <a href="board.html">board</a>
            </div>
            
        </div>
    </header>

    <div class="container">

        <form action="" class="w-group">
            <div class="w-box">

                <label>제목</label>
                <input type="text" class="w-inner">
    
            </div>
    
            <div class="w-box">
                <label>게시판</label>
                <select class="w-inner" >
                    <option>JAVA</option>
                    <option>JSP</option>
                    <option>JS</option>
                    <option>HTML&CSS</option>
                    <option>DB</option>
            
                </select>
            </div>

            <div class="w-box">
                <hr>
                <textarea class="textbox" rows="20" placeholder="내용을 입력하세요" ></textarea>
            </div>

            <div>
                <input type="button" value="등록하기" class="btn board-btn">
            </div>
        </form>
    </div>

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