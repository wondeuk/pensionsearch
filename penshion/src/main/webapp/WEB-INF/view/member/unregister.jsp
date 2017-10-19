<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %>    

			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">

			<aside>
				<div class="row">
					<ul>
						<li><a href="myinfo" class="">나의 정보</a></li>
						<li><a href="mileage" class="">적립금</a></li>
						<li><a href="edit" class="">회원 정보 수정</a></li>
						<li><a href="unregister" class="">회원 탈퇴</a></li>
					</ul>
				</div>
			</aside>
			<form action="#" method="post">
				<div class="area-20 center">
					<div class="empty-row"></div>
					<div class="row">
						<h3>회원 탈퇴</h3>
					</div>
					<div class="row">
						비밀번호 : <input type="password" name="pw">
					</div>
					<div class="text-center">
						<input type="submit" value="확인">
						<input type="button" value="취소">
					</div>
				</div>
			</form>
            
<%@ include file="/WEB-INF/view/template/footer.jsp" %>    
            