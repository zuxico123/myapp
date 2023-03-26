<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %> 
<%@ page import="org.zerock.wecart.domain.BoardVO" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <script src="https://kit.fontawesome.com/78271596c1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

    <div class = "gird_container">
        <nav class="nav">
            <a href="index.html">우리동네장바구니</a>
    
            <ul class="navbar_menu">
                <li><a href="">가격비교</a></li>
                <li><a href="board.html">커뮤니티</a></li>
                <li><a href="">Q&A</a></li>
            </ul>
    
            <ul class="nav_login">
                <li>개포동 <i class="fa-solid fa-location-dot"></i> </li>
                <li>로그인</li>
            </ul>
        </nav>
    
        <main id="board_main">
    
            <div class="board_change">
                <input type="button" value="지역">
                <input type="button" value="중고거래">
                <input type="button" value="장메이트">
                <input type="button" value="크롤링">
                <input type="button" value="세일정보">
            </div>
    
            
            <article id="board_read">
                
            </article>
        </main>
    </div>


    
</body>
</html>