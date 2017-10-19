<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %>   
    
<link rel="stylesheet" type="text/css" href="css/reserve.css">

			<script src="https://code.jquery.com/jquery-latest.js">
			</script>
			<script>
				$(document).ready(function() {
					$(".row").on("click", function() {
						$(".submenu button").css("color", "white").
						css("background-color", "gray");
						$(".row").css("background-color", "white").css("color", "#222");
						$(".rowc").css("display", "block");
						$(".checkedc").css("display", "none");
						$(".askc").css("display", "none");
						$(".reviewc").css("display", "none");

					});

					$(".checked").on("click", function() {
						$(".submenu button").css("color", "white").
						css("background-color", "gray");
						$(".checked").css("background-color", "white").css("color", "#222");
						$(".rowc").css("display", "none");
						$(".checkedc").css("display", "block");
						$(".askc").css("display", "none");
						$(".reviewc").css("display", "none");

					});

					$(".ask").on("click", function() {
						$(".submenu button").css("color", "white").
						css("background-color", "gray");
						$(".ask").css("background-color", "white").css("color", "#222");
						$(".rowc").css("display", "none");
						$(".checkedc").css("display", "none");
						$(".askc").css("display", "block");
						$(".reviewc").css("display", "none");

					});

					$(".review").on("click", function() {
						$(".submenu button").css("color", "white").
						css("background-color", "gray");
						$(".review").css("background-color", "white").css("color", "#222");
						$(".rowc").css("display", "none");
						$(".checkedc").css("display", "none");
						$(".askc").css("display", "none");
						$(".reviewc").css("display", "block");

					});

				});
			</script>


			<div id="info">
				<table class="outtable center">
					<tr>
						<td>
							<img src="img/77030173.jpg">
						</td>
						<td class="pinfo">

							<h3>놀러올 펜션(펜션이름)</h3>
							<hr>
							<table class="intable">

								<tr>
									<th>주소</th>
									<td>경기도 어쩌구 저쩌구</td>
								</tr>
								<tr>
									<th>예약문의</th>
									<td>예약문의</td>
								</tr>
								<tr>
									<th>사용시간</th>
									<td>사용시간</td>
								</tr>
								<tr>
									<th>시설</th>
									<td>시설</td>
								</tr>
								<tr>
									<th>정보</th>
									<td>정보</td>
								</tr>

							</table>

							<button class="bt1">예약현황</button>
							<button class="bt2" onclick="location.href='reservation'">예약하기</button>
							<button class="bt3">찜하기</button>
						</td>
					</tr>
				</table>
			</div>

			<div class="empty-row"></div>
			<div class="empty-row"></div>


			<div class="submenu center">
				<hr>
				<ul>
					<li>
						<button class="checked">예약안내</button>
					</li>

					<li>
						<button class="row">규정 및 주의사항</button>
					</li>
					<li>
						<button class="ask">질문/답변</button>
					</li>
					<li>
						<button class="review">이용후기</button>
					</li>
				</ul>
			</div>
			<div class="checkedc">
				<h1>안내 내용입니다</h1>
			</div>
			<div class="rowc">
				<h1>규정사항 안내입니다</h1>
			</div>
			<div class="askc">
				<h1>질문게시판입니다</h1>
			</div>
			<div class="reviewc">
				<h1>이용후기 게시판입니다</h1>
			</div>

			<div class="empty-row"></div>
			<div class="empty-row"></div>

			<div class="content">

				<table class="subtable">
					<tr>
						<th>객실명</th>
						<th>객실형태</th>
						<th>크기</th>
						<th>인원</th>
						<th>성수기 주말</th>
						<th>성수기 평일</th>
						<th>비성수기 주말</th>
						<th>비성수기 평일</th>
						<th>추가요금</th>
						<th>예약</th>
					</tr>
					<tr>
						<td>네모네모</td>
						<td>마루</td>
						<td>100</td>
						<td>4</td>
						<td>7000</td>
						<td>10000</td>
						<td>12000</td>
						<td>90000</td>
						<td>+1000</td>
						<td>예약</td>
					</tr>
				</table>
			</div>

			<hr>

			<div class="empty-row"></div>
			<div class="empty-row"></div>

			<div class="imglist">
				<h3>이미지</h3>
				<img src="img/201683125855.jpg" width="300px" height="240px">
				<img src="img/borddeau_1.jpg" width="300px" height="240px">
				<img src="img/2016421144648.jpg" width="300px" height="240px">
				<img src="img/2016101115840.jpg" width="300px" height="240px">
			</div>

			<div class="empty-row"></div>
			<div class="empty-row"></div>
			
<%@ include file="/WEB-INF/view/template/footer.jsp" %>   
			