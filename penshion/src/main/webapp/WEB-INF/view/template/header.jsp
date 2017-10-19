<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/each.css">
        
        <title>펜션</title>
        <link rel="stylesheet" type="text/css" 
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    </head>
    <body>
        <div class="page">
        <!-- 상단영역, 메뉴영역 -->
            <header>
                <a href="${pageContext.request.contextPath}" class="">
                <div class="rogo">
                    <img src="${pageContext.request.contextPath}/img/pen-icon.png"></div>
                </a>
            
                <a href="#" class="left">펜션찾기</a>
                <a href="#" class="left">예약확인/취소</a>
                <a href="#" class="left">공지사항</a>
                <a href="test" class="left">테스트</a>
                
                <a href="${pageContext.request.contextPath}/member/myinfo" class="left">마이페이지</a>
                <!--<a href="#" class="right">로그아웃</a>-->
                <a href="${pageContext.request.contextPath}/member/login" class="right">로그인  &#124;</a>
                <a href="${pageContext.request.contextPath}/member/user_register01" class="left">&nbsp;회원가입</a>
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