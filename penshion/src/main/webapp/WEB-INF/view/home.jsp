<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<%@ include file="/WEB-INF/view/template/header.jsp" %>   

            <div class="empty-row"></div>
            <div class="empty-row"></div>
            
            
<!--            요즘 잘나가는 펜션-->
            
            <table border="5" align="center" width="60%" height="80%" bordercolor="black" bgcolor="white" class="table" cellpadding="5" cellspacing="30">
                <!-- cellpadding : 테두리와 텍스트 사이의 여백
    cellspacing :  셀과 셀 사이의 간격-->
                <tr height=50px>
                    <th class="topth"><h2>@요즘 제일 잘나가@</h2></th>
                </tr>
                <tr valign="top" bgcolor="silver">
              		<c:forEach var="pension"  begin="0" step="1" end="2" items="${list_latest}">
	                   <td width="20%" class="img" background="${pageContext.request.contextPath}/pension/${pension.photo1}" onclick="location.href='reserve?pension_no=${pension.pension_no}'"></td>
                	</c:forEach>
                </tr>
                <tr height=50px>
              		<c:forEach var="pension"  begin="0" step="1" end="2" items="${list_latest}">
	                    <th class="midth">${pension.pension_name}</th>
                	</c:forEach>
                </tr>

                <tr valign="top" bgcolor="silver">
              		<c:forEach var="pension"  begin="3" step="1" end="5" items="${list_latest}">
	                   <td width="20%" class="img" background="${pageContext.request.contextPath}/pension/${pension.photo1}" onclick="location.href='reserve?pension_no=${pension.pension_no}'"></td>
                	</c:forEach>
                </tr>
                <tr height=50px>
              		<c:forEach var="pension"  begin="3" step="1" end="5" items="${list_latest}">
	                    <th class="midth">${pension.pension_name}</th>
                	</c:forEach>
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
                    
                    <td width="20%" class="img" background="${pageContext.request.contextPath}/img/1.jpg" onclick="location.href='main3.html'">&nbsp;1행 1열</td>

                    <td width="20%" class="img" background="${pageContext.request.contextPath}/img/2.jpg">&nbsp;1행 2열</td>
                    <td width="20%" class="img" background="${pageContext.request.contextPath}/img/3.jpg">&nbsp;1행 3열</td>
                </tr>
                <tr height=50px>
                    <th class="midth">끼야호펜션</th>
                    <th class="midth">이요오펜션</th>
                    <th class="midth">꾸이익펜션</th>
                </tr>
                <tr valign="top" bgcolor="silver">
                    <!-- 수평정렬[align] :center, right, left
     수직정렬[valign] : top, middle, bottom-->
                    
                    <td width="20%" class="img" background="${pageContext.request.contextPath}/img/1.jpg" onclick="location.href='main2.html'">&nbsp;1행 1열</td>

                    <td width="20%" class="img" background="${pageContext.request.contextPath}/img/2.jpg">&nbsp;1행 2열</td>
                    <td width="20%" class="img" background="${pageContext.request.contextPath}/img/3.jpg">&nbsp;1행 3열</td>
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
        
        <%@ include file="/WEB-INF/view/template/footer.jsp" %>   
        