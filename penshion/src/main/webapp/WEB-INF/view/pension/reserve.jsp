<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reserve.css">

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
					
					
					$("input[type=checkbox]").change(function() {
						if ($("input[type=checkbox]").is(":checked")) {
							$("#paybox").css("display", "block");

							var name = $(this).next().val();
							var date = $(this).next().next().val();
							var guest = $(this).next().next().next().val()+" / " +$(this).next().next().next().next().val();
							var price = $(this).next().next().next().next().next().val();
							
							var row = appendData(name, date, guest, price);
							$("#paybox_body").append(row);
							
							console.log("체크박스 체크했음!");
						} else {
							$("#paybox").css("display", "none");

							console.log("체크박스 체크 해제!");
						}
					});

					function appendData(name, date, guest, price) {
						var row = createRow();
						row.append(createCell(name));
						row.append(createCell(date));
						row.append(createCell(guest));
						row.append(createCell(price));
						return row;
					}

					function createRow() {
						return $("<tr/>");
					}

					function createCell(obj) {
						var cell = $("<td/>");
						if (typeof obj === "string")
							cell.text(obj);
						else if (typeof obj === "object")
							cell.append(obj);

						return cell;
					}
					
					

				});
			</script>
			<style>
					#paybox{
						display:none;
					}
			</style>


			<div id="info">
				<table class="outtable center">
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/pension/[${pension.pension_no}]${pension.pension_name}/${pension.photo1}">
						</td>
						<td class="pinfo">

							<h3>${pension.pension_name}</h3>
							<hr>
							<table class="intable">

								<tr>
									<th>주소</th>
									<td>${pension.location01} ${pension.location02} ${pension.location03}</td>
								</tr>
								<tr>
									<th>예약문의</th>
									<td>${pension.phone}</td>
								</tr>
								<tr>
									<th>픽업여부</th>
									<td>${pension.pickup}</td>
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

							<button class="bt1" onclick="location.href='state?pension_no=${pension.pension_no}'">예약현황</button>
							<button class="bt2" onclick="location.href='reservation'">예약하기</button>
							<button class="bt3">찜하기</button>
						</td>
					</tr>
				</table>
			</div>

			<div class="empty-row"></div>
			<div class="empty-row"></div>
			
			<div class="area-80 center">
				<table border="1" align="center">
					<tr>
						<td rowspan="2">객실</td>
						<c:forEach var="state"  begin="0" end="0" step="1" items="${reserve_state_list}">
							<c:forEach var="s" items="${state.value}">
								<td>${s.season}</td>
							</c:forEach>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="state"  begin="0" end="0" step="1" items="${reserve_state_list}">
							<c:forEach var="s" items="${state.value}">
								<td>${s.date}<br>${s.day}</td>
							</c:forEach>
						</c:forEach>
					</tr>
					
					<c:forEach var="state"  items="${reserve_state_list}">
						<tr>
							<td rowspan="2">${state.key}</td>
								<c:forEach var="s" items="${state.value}">
									<td>${s.price}</td>
								</c:forEach>
						</tr>
						<tr>
								<c:forEach var="s" items="${state.value}">
									<c:choose>
										<c:when test="${s.reservation eq '가능'}">
											<td>
												<input type="checkbox" name="[${s.date}](${s.room_no})" >
												<input type="hidden" id="room_name" name="[${s.date}](${s.room_no})room_name" value="${state.key}">
												<input type="hidden" id="date" name="[${s.date}](${s.room_no})date" value="${s.date}">
												<input type="hidden" id="guest" name="[${s.date}](${s.room_no})guest" value="${s.guest}">
												<input type="hidden" id="max_guest" name="[${s.date}](${s.room_no})max_guest" value="${s.max_guest}">
												<input type="hidden" id="price" name="[${s.date}](${s.room_no})price" value="${s.price}">
											</td>
										</c:when>
										<c:otherwise>
											<td>완료</td>
										</c:otherwise>
									</c:choose>
								</c:forEach>
						</tr>
					</c:forEach>
				</table>
				<div class="empty-row"></div>
				
					
				<table border="1" align="center" width="1100px" id="paybox">
					<thead>
						<tr>
							<th>객실명</th>
							<th>이용일</th>
							<th>기준인원 / 최대인원</th>
							<th>결제액</th>
						</tr>
					</thead>
					<tbody id="paybox_body">
					</tbody>
				</table>
			</div>
			<div class="empty-row"></div>
			<div class="empty-row"></div>
			<div class="content">
				<table class="subtable">
					<tr>
						<th>객실명</th>
						<th>객실구조</th>
						<th>기준인원 / 최대인원</th>
						<th>비성수기 평일</th>
						<th>비성수기 주말</th>
						<th>성수기 평일</th>
						<th>성수기 주말</th>
						<th>추가요금<br>(성인/아동/유아)</th>
						<th>상세보기</th>
					</tr>
					<c:forEach var="room" items="${room_list}">
						<tr>
							<td>${room.room_name}</td>
							<td>${room.structure}</td>
							<td>${room.guest} / ${room.max_guest}</td>
							<td>${room.off_weekday}</td>
							<td>${room.off_weekend}</td>
							<td>${room.peak_weekday}</td>
							<td>${room.peak_weekend}</td>
							<td>${room.add_adult}/${room.add_child}/${room.add_baby}</td>
							<td><a href="${pageContext.request.contextPath}/room/room_info?room_no=${room.room_no}">클릭</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>


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
				<h1>${pension.guide}</h1>
			</div>
			<div class="rowc">
				<h1>${pension.caution}</h1>
			</div>
			<div class="askc">
				<h1>질문게시판입니다</h1>
			</div>
			<div class="reviewc">
				<h1>이용후기 게시판입니다</h1>
			</div>

			<div class="empty-row"></div>
			<div class="empty-row"></div>

			

			<hr>

			<div class="empty-row"></div>
			<div class="empty-row"></div>

			<div class="imglist">
				<h3>이미지</h3>
				<img src="${pageContext.request.contextPath}/pension/[${pension.pension_no}]${pension.pension_name}/${pension.photo1}" width="290px" height="232px">
				<img src="${pageContext.request.contextPath}/pension/[${pension.pension_no}]${pension.pension_name}/${pension.photo2}" width="290px" height="232px">
				<img src="${pageContext.request.contextPath}/pension/[${pension.pension_no}]${pension.pension_name}/${pension.photo3}" width="290px" height="232px">
				<img src="${pageContext.request.contextPath}/pension/[${pension.pension_no}]${pension.pension_name}/${pension.photo4}" width="290px" height="232px">
				<img src="${pageContext.request.contextPath}/pension/[${pension.pension_no}]${pension.pension_name}/${pension.photo5}" width="290px" height="232px">
			</div>

			<div class="empty-row"></div>
			<div class="empty-row"></div>
			
<%@ include file="/WEB-INF/view/template/footer.jsp" %>   
			