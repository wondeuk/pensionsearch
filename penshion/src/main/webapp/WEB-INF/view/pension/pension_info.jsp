<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="/WEB-INF/view/template/header.jsp" %>
<style>
	.pbtn{
        width: 120px;
        height: 40px;
        background-color: #CAC5C5;
        display: inline;
        font-size: 1em; 
        border: 0.2px solid white;
        background-size: 30px;      
        color: #515050;
    }
</style>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_myinfo.css">
<div class="empty-row"></div>
<div class="area-70 center">
    <h2>펜션정보</h2>
    
    <table id="profile">
        <tr>
            <th>펜션명</th>
            <td>편션이름을 적을시구요</td>
        </tr>
        <tr>
            <th>펜션주소</th>
            <td>펜션 주소 적으시면돼여</td>
        </tr>
        <tr>
            <th>연락처</th>
            <td>펜션전화번호</td>
            
        </tr>
        <tr>
            <th>픽업여부</th>
            <td>가능/불가능 택일</td>
            
        </tr>
        <tr>
            <th>이용/시설</th>
            <td>이용시설에 대한 안내에 대해 적어주세요</td>
            
        </tr>
        <tr>
            <th>주의사항</th>
            <td>주의할 사항에 적어주세요</td>
        </tr>
        <tr>
            <th>성수기기간</th>
            <td>성수기시작기간 (~) 성수기마침기간</td>
        </tr>
        <tr>
            <th>사진1</th>
            <td>사진확인1</td>
        </tr>
        <tr>
            <th>사진2</th>
            <td>사진확인2</td>
        </tr>
        <tr>
            <th>사진3</th>
            <td>사진확인3</td>
        </tr>
        <tr>
            <th>사진4</th>
            <td>사진확인4</td>
        </tr>
        <tr>
            <th>사진5</th>
            <td>사진확인5</td>
        </tr>
    </table>
    <div class="empty-row"></div>
    <div class="empty-row"></div>
    <table id="reservation_info">   
        <tr>
            <th>은행명</th>
            <th>계좌번호</th>
            <th>예금주</th>
        </tr>
        <tr>
            <td>어디 좋은은행 말해봐</td>
            <td>어쩌구저쩌구 번호</td>
            <td>받을사람 대표할 이름</td>
        </tr>
    </table>
    </div>
    <div class="empty-row"></div>
    
    <div class="area-30 right">
    <a href="${pageContext.request.contextPath}/pension/room_register"><button class="pbtn">객실등록</button></a>
    <a href="${pageContext.request.contextPath}/pension_edit"><button class="pbtn">정보수정</button></a>
    </div>

        <div class="empty-row"></div>
        
        
<div class="area-70 center">
<hr>
	<div class="empty-row"></div>
		
    <h2>객실정보 리스트</h2>
		<table id="interest">
			<tr>
                <th>객실번호</th>
				<th>펜션명</th>
				<th>객실명</th>
				<th>구조/넓이</th>
				<th>기준/최대인원</th>
				<th>상세보기</th>
                <th>수정</th>
			</tr>
			<tr>
                <td>1341324</td>
				<td>밤도펜션</td>
                <td>123호</td>
                <td>ㄷ</td>
                <td>3/5(명)</td>
                <td><a href="${pageContext.request.contextPath}/pension/room_info">상세보기</a></td>
                <td><a href="${pageContext.request.contextPath}/room_edit">수정</a></td>
			</tr>
		</table>
</div>
<div class="empty-row"></div>
<div class="empty-row"></div>

<%@ include file ="/WEB-INF/view/template/footer.jsp" %>