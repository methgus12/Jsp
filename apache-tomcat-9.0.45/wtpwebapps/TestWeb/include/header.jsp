<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="styleshseet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/custom.css">
        <title>BBS Test</title>
        
        
        <!--메인만 적용되는 css영역-->   
        <style>
        
       
<%--스타일적용해보기 --%>
<%--글꼴 , 버튼 스타일--%>     
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');

*{font-family: 'Black Han Sans', sans-serif;}


.button {
   display: inline-block;
   color: black;
   text-align: center;
   border: 1px solid black;
   background-color: white;
   transition: all;
   
}
.button:hover{background-color:black}
.button:hover{color:white;}

            body {
                background-image: url(images/headerback.png);
                background-repeat: no-repeat;
                background-size: cover
            }
            
 
           
        </style>
        
         <style>

        .wrap {
            width: 80%;
            height: 400px;
            margin: 0 auto;
            text-align: center;

        }
        .menu {
            margin: 0 auto;
            background-color : black;
            border: 1px solid white;
            color : white;
            text-align: center;
        }

        
        
        

    </style>
    </head>

    <body>
    <nav class="navbar navbar-default" id="nav">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="##">bolt park</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="" style="margin-right: 10px;">bolt</a></li>
                <li><a href="##">board</a></li>
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">WITH !<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="../user/login.jsp">LOGIN</a></li>
                        <li><a href="../user/join.jsp">JOIN US</a></li>
                        <li><a href="../user/mypage.jsp">MYPAGE</a></li>
                    </ul>
                </li>
            </ul>
       
        </div>
    </nav>
