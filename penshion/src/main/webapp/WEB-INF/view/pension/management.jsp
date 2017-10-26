<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %>    



<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_myinfo.css">

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function() {
	$("#question").on("click", function() {
		$(".answer").toggle();
		console.log("aaa");
	});
});
</script>

<div class="empty-row"></div>
<aside class="area-20">
	<div class="row">
		<ul>
			<li><a href="myinfo" class="">나의 정보 수정</a></li>
			<li><a href="pension_info" class="">펜션정보 현황</a></li>
			<li><a href="${pageContext.request.contextPath}/pension/reserve_list" class="">펜션예약 상태</a></li>
			<li><a href="${pageContext.request.contextPath}/pension/answer_list" class="">펜션 답변상황</a></li>
		</ul>
	</div>
</aside>

<div class="area-70" id="main">
	<div class="table-users">
		<div class="header center">
			<p class="right"> ${company.company_name} 의 ${company.id} 님 </p>
			<p class="right"></p>
		</div>
		<table id="profile">
			<tr>
				<th class="area-30">아이디</th>
				<td>${company.id}</td>
			</tr>
			<tr>
				<th>회사명</th>
				<td>${company.company_name}</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>${company.location01} ${company.location02} ${company.location03}</td>
			</tr>
			<tr>
				<th>일반전화</th>
				<td>${company.phone}</td>
			</tr>
			<tr>
				<th>휴대전화</th>
				<td>${company.mobile}</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${company.email}</td>
			</tr>
			<tr>
				<th>회사 홈페이지 도메인</th>
				<td>${company.domain}</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${company.date}</td>
			</tr>
		</table>
	</div>
	<div class="empty-row"></div>
	<div class="row">
		<h3>펜션등록 현황</h3>
		<p>현재 등록된 펜션입니다<br>
		펜션번호 혹은 메뉴의 펜션정보 현황을 클릭하시면 등록한 펜션정보를 확인/수정 할 수 있습니다</p>
		<table id="reservation_info">
			<tr>
				<th>펜션번호</th>
				<th>펜션명</th>
				<th>주소</th>
				<th>펜션연락처</th>
                <th>등록일</th>
                <th>수정/객실등록</th>
			</tr>
			<c:forEach var="pension_list" items="${pension_list}">
				<tr>
					<td><a href="${pageContext.request.contextPath}/pension_info?pension_no=${pension_list.pension_no}">${pension_list.pension_no}</a></td>
					<td>${pension_list.pension_name}</td>
					<td>${pension_list.location01} ${pension_list.location02} ${pension_list.location03}</td>
					<td>${pension_list.phone}</td>
	                <td>${pension_list.date}</td>
					<td><a href="${pageContext.request.contextPath}/pension_edit?pension_no=${pension_list.pension_no}">수정</a>/<a href="${pageContext.request.contextPath}/pension/room_register">등록</a></td>
				</tr>
			</c:forEach>
		</table>
		<div class="empty-row"></div>
		<div class="empty-row"></div>
		<hr>
		
		<div class="empty-row"></div>

		<h3>객실등록 현황</h3>
		<table id="interest">
			<tr>
                <th>객실 번호</th>
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
                <td><a href=#>상세보기</a></td>
                <td><a href=#>수정</a></td>
			</tr>
		</table>
        
        
		
>>>>>>> branch 'master' of https://github.com/wondeuk/pensionsearch.git
	</div>
	<div class="empty-row"></div>
	<div class="empty-row"></div>
	<div class="empty-row"></div>
</div>

			
<%@ include file="/WEB-INF/view/template/footer.jsp" %>    
			