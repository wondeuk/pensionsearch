<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %>    
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
        margin-top: -15px;
    }
</style>


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_myinfo.css">
   <script>
    var img="주소?  ";
    function move(a){
        window.open(a);
    }
</script>

<div class="empty-row"></div>
<div class="area-70 center">
<h2>AA펜션의 @@객실</h2>
</div>
<div class="area-30 right">
	<a href="${pageContext.request.contextPath}/pension_info"><button class="pbtn">뒤로</button></a>
    <a href="${pageContext.request.contextPath}/room_edit"><button class="pbtn">정보수정</button></a>
    </div>
    
    <div class="empty-row"></div>
<div class="area-70 center">

    <table id="profile">
        <tr>
            <th>객실명</th>
            <td>객실이름을 적을시구요</td>
        </tr>
        <tr>
            <th>구조/넓이</th>
            <td>구조랑 넓이 적으시면돼여</td>
        </tr>
        <tr>
            <th>구비시설</th>
            <td>사용할 시설들</td>
            
        </tr>
        <tr>
            <th>특이사항</th>
            <td>특이한 점에 대해 적으라구</td>
            
        </tr>
        <tr>
            <th>기준인원/최대인원</th>
            <td>인원수(명)</td>
            
        </tr>
        <tr>
            <th>사진1</th>
            <td><button onclick="move(naver);">사진확인1</button></td>
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
            <th>비수기주중</th>
            <th>비수기주말</th>
            <th>성수기주중</th>
            <th>성수기주말</th>
        </tr>
        <tr>
            <td>비수기 평일가격</td>
            <td>비수기 주말가격</td>
            <td>성수기 평일가격</td>
            <td>성수기 주말가격 엄청 비쌉니다!!</td>
        </tr>
    </table>
    </div>
    <div class="empty-row"></div>
    <div class="empty-row"></div>
    
    <div class="area-70 center">
    <table id="reservation_info">   
        <tr>
            <th>성인 추가요금</th>
            <th>아동 추가요금</th>
            <th>유아 추가요금</th>
            
        </tr>
        <tr>
            <td>성인요금</td>
            <td>아동 요금</td>
            <td>유아도 돈 받나</td>
        </tr>
    </table>
    </div>
    <div class="empty-row"></div> 

   
    

    
<%@ include file="/WEB-INF/view/template/footer.jsp" %>    
