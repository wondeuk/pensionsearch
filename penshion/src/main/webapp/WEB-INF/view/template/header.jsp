<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="common.css">
        <link rel="stylesheet" type="text/css" href="each.css">
        
        <title>펜션</title>
        <link rel="stylesheet" type="text/css" 
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="${pageContext.request.contextPath}/js/user_register.js"></script>
        
    </head>
    <body>
        <div class="page">
        <!-- 상단영역, 메뉴영역 -->
            <header>
                <a href="${pageContext.request.contextPath}" class="">
                <div class="rogo">
                    <img src="${pageContext.request.contextPath}/icon/pen-icon.png"></div>
                </a>
            
                <a href="#" class="left">펜션찾기</a>
                <a href="#" class="left">예약확인</a>
                <a href="${pageContext.request.contextPath}/member/user_register01" class="left">회원가입</a>
                <a href="${pageContext.request.contextPath}/reserve" class="left">예약</a>
                <div class="plus">
                <a href="#" class="lef"><i class="fa fa-plus"></i></a>
                    <ul>
                        <li><a href="#" class="">공지사항</a></li>
                        <li><a href="${pageContext.request.contextPath}/member/myinfo" class="">마이페이지</a></li>
                    </ul>
                </div>
                <!--<a href="#" class="right">로그아웃</a>-->
                <a href="${pageContext.request.contextPath}/member/login" class="right">로그인</a>
            </header>
            
            <!-- 검색영역 -->
            <nav>
                <form action="#">
                    지역<input type="text" placeholder="도시,지역으로 검색">
                     예약일<input type="date" placeholder="예약일">
                     인원<input type="number" min="1" max="35" placeholder="인원">
                    <input type="submit" value="검색">
                </form>
            </nav>
            
            <main>