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

<div class="area-60 center" id="main">
	<div class="table-users">
		<div class="header center">
			<p class="right"> 특정회사 의 가입 아이디(님) </p>
			<p class="right"></p>
		</div>
		<table id="profile">
			<tr>
				<th class="area-30">아이디</th>
				<td>${info.id}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${info.name}</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${info.email}</td>
			</tr>
			<tr>
				<th>일반전화</th>
				<td>${info.mobile}</td>
			</tr>
			<tr>
				<th>휴대전화</th>
				<td>${info.mobile}</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${info.mobile}</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>${info.mobile}</td>
			</tr>
			<tr>
				<th>회사 홈페이지 도메인</th>
				<td>${info.mobile}</td>
			</tr>
		</table>
	</div>
	<div class="empty-row"></div>
	<hr>
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
			<tr>
				<td><a href="${pageContext.request.contextPath}/pension_info">102371924</a></td>
				<td>라봉펜션</td>
				<td>주소</td>
				<td>펜션연락연락</td>
                <td>2014.10.23</td>
				<td><a href="${pageContext.request.contextPath}/pension_edit">수정</a>/<a href="${pageContext.request.contextPath}/pension/room_register">등록</a></td>
			</tr>
		</table>
		
	

	</div>
	<div class="empty-row"></div>
	<div class="empty-row"></div>
	<div class="empty-row"></div>
</div>

			
<%@ include file="/WEB-INF/view/template/footer.jsp" %>    
			