<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="common.css">
    <link rel="stylesheet" type="text/css" href="each.css">
    <title>펜션</title>

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <!-- jQuery를 사용하기 위한 CDN 설정 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>

</head>

<body>
    <div class="page">
        <!-- 상단영역, 메뉴영역 -->
        <header>
            <a href="#" class="">
                <div class="rogo">
                    <img src="pen-icon.png"></div>
            </a>

            <a href="#" class="left">이용후기</a>
            <a href="#" class="left">예약확인/취소</a>
            <a href="#" class="left">문의하기</a>
            
            <!--<a href="#" class="right">로그아웃</a>-->
            <a href="#" class="right">로그인 &#124;</a>
            <a href="#" class="left">&nbsp;회원가입</a>
        </header>

        <!-- 검색영역 -->
        <nav>
            <form action="#">
                지역<input type="text" placeholder="도시,지역으로 검색"> 예약일
                <input type="date" placeholder="예약일"> 인원
                <input type="number" min="1" max="35" placeholder="인원">
                <input type="submit" value="검색">
            </form>
        </nav>

        <main>
            <div class="empty-row"></div>
            <div class="empty-row"></div>
            
            
<!--            요즘 잘나가는 펜션-->
            
            <table border="5" align="center" width="60%" height="80%" bordercolor="black" bgcolor="white" class="table" cellpadding="5" cellspacing="30">
                <!-- cellpadding : 테두리와 텍스트 사이의 여백
    cellspacing :  셀과 셀 사이의 간격-->
                <tr height=50px>
                    <th class="topth"><h2>@요즘 제일 잘나가@ </h2></th>
                   
                </tr>
                <tr valign="top" bgcolor="silver">
                    <!-- 수평정렬[align] :center, right, left
     수직정렬[valign] : top, middle, bottom-->
                    
                    <td width="20%" class="img" background="1.jpg" onclick="location.href='main3.html'">&nbsp;1행 1열</td>

                    <td width="20%" class="img" background="2.jpg">&nbsp;1행 2열</td>
                    <td width="20%" class="img" background="3.jpg">&nbsp;1행 3열</td>
                </tr>
                <tr height=50px>
                    <th class="midth">끼야호펜션</th>
                    <th class="midth">이요오펜션</th>
                    <th class="midth">꾸이익펜션</th>
                </tr>


                <tr valign="top" bgcolor="silver">
                    <!-- 수평정렬[align] :center, right, left
     수직정렬[valign] : top, middle, bottom-->
                    
                    <td width="20%" class="img" background="1.jpg" onclick="location.href='main2.html'">&nbsp;1행 1열</td>

                    <td width="20%" class="img" background="2.jpg">&nbsp;1행 2열</td>
                    <td width="20%" class="img" background="3.jpg">&nbsp;1행 3열</td>
                </tr>
                <tr height=50px>
                    <th class="midth">끼야호펜션</th>
                    <th class="midth">이요오펜션</th>
                    <th class="midth">꾸이익펜션</th>
                </tr>
            </table>

            <br>
            <br>
            
            
<!--            Best pension-->
            <table border="5" align="center" width="60%" height="80%" bordercolor="black" bgcolor="white" class="table" cellpadding="5" cellspacing="30">
                <!-- cellpadding : 테두리와 텍스트 사이의 여백
    cellspacing :  셀과 셀 사이의 간격-->
                <tr height=50px>
                    <th class="topth"><h2>@BEST PENSION@ </h2></th>
                   
                </tr>
                <tr valign="top" bgcolor="silver">
                    <!-- 수평정렬[align] :center, right, left
     수직정렬[valign] : top, middle, bottom-->
                    
                    <td width="20%" class="img" background="1.jpg" onclick="location.href='main3.html'">&nbsp;1행 1열</td>

                    <td width="20%" class="img" background="2.jpg">&nbsp;1행 2열</td>
                    <td width="20%" class="img" background="3.jpg">&nbsp;1행 3열</td>
                </tr>
                <tr height=50px>
                    <th class="midth">끼야호펜션</th>
                    <th class="midth">이요오펜션</th>
                    <th class="midth">꾸이익펜션</th>
                </tr>


                <tr valign="top" bgcolor="silver">
                    <!-- 수평정렬[align] :center, right, left
     수직정렬[valign] : top, middle, bottom-->
                    
                    <td width="20%" class="img" background="1.jpg" onclick="location.href='main2.html'">&nbsp;1행 1열</td>

                    <td width="20%" class="img" background="2.jpg">&nbsp;1행 2열</td>
                    <td width="20%" class="img" background="3.jpg">&nbsp;1행 3열</td>
                </tr>
                <tr height=50px>
                    <th class="midth">끼야호펜션</th>
                    <th class="midth">이요오펜션</th>
                    <th class="midth">꾸이익펜션</th>
                </tr>
            </table>
            
            <br>
            <br>
            
<!--            고객센터-->
            <hr>
            <table border="5" align="center" width="60%" height="5" bordercolor="black" bgcolor="white" class="table" cellpadding="5" cellspacing="30">
                <!-- cellpadding : 테두리와 텍스트 사이의 여백
    cellspacing :  셀과 셀 사이의 간격-->
               
              
                <tr height=50px>
                    <td class="midth" rowspan="2">펜션 사진(번호)</td>
                    <td class="midth" rowspan="2" border="1">평일/AM 09:00 ~ PM 05:00<br>
                    점심 / PM12:30 ~ PM 01:30<br>
                    상담업무시간외엔 질분답변<br>
                    이나  이용하시기 바랍니다.
                    </td>
                     <td class="bottombtn" rowspan="2">
                    <button type="button" onclick="location.href='main3.html'" class="btn">질문답변 바로가기</button>
                    
                    
                   <td class="bottombtn" rowspan="2">
                    <button type="button" onclick="location.href='main3.html'" class="btn">업소 등록하기</button>
                </tr>
                


               
            </table>






        </main>

        <footer>
            <h3>copy&copy; 펜션(주)</h3>
        </footer>
    </div>





</body>

</html>
