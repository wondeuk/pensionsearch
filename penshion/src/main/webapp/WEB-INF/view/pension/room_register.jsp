<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %>   


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member.css">
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_register.css">
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery-te-1.4.0.css">

			<script src="https://code.jquery.com/jquery-latest.js"></script>
			<script src="js/jquery-te-1.4.0.js"></script>
			<script>
				$(document).ready(function() {
					$(".editor").jqte();
				});
			</script>
			
			<form action="user_register02" method="post" id="next02">
				<div class="xans-member-join area-50 center">
					<h2>객실 등록</h2>
					<p class="required"><img src="../img/ico_required.gif" /> 필수입력사항</p>
					<div class="boardWrite">
						<table>
							<caption>회원 기본정보</caption>
							<tbody>
								<tr>
									<th>객실명 <img src="../img/ico_required.gif" /></th>
									<td><input id="pension_name" name="pension_name" class="inputTypeText" placeholder="" value="" type="text"></td>
								</tr>
								<tr>
									<th>구조/넓이<img src="../img/ico_required.gif" /></th>
									<td>
										<textarea class="textarea"></textarea>
									</td>
								</tr>
								<tr>
									<th>성인 추가비용 </th>
									<td><input id="pension_name" name="pension_name" class="inputTypeText" placeholder="" value="" type="text"></td>
								</tr>
								<tr>
									<th>아동 추가비용 </th>
									<td><input id="pension_name" name="pension_name" class="inputTypeText" placeholder="" value="" type="text"></td>
								</tr>
								<tr>
									<th>유아 추가비용 </th>
									<td><input id="pension_name" name="pension_name" class="inputTypeText" placeholder="" value="" type="text"></td>
								</tr>
								<tr>
									<th>비수기 주중가격 <img src="../img/ico_required.gif" /></th>
									<td><input id="pension_name" name="pension_name" class="inputTypeText" placeholder="" value="" type="text"></td>
								</tr>
								<tr>
									<th>비수기 주말가격 <img src="../img/ico_required.gif" /></th>
									<td><input id="pension_name" name="pension_name" class="inputTypeText" placeholder="" value="" type="text"></td>
								</tr>
								<tr>
									<th>성수기 주중가격<img src="../img/ico_required.gif" /></th>
									<td><input id="pension_name" name="pension_name" class="inputTypeText" placeholder="" value="" type="text"></td>
								</tr>
								<tr>
									<th>성수기 주말가격 <img src="../img/ico_required.gif" /></th>
									<td><input id="pension_name" name="pension_name" class="inputTypeText" placeholder="" value="" type="text"></td>
								</tr>
								<tr>
									<th>구비시설 <img src="../img/ico_required.gif" /></th>
									<td>
										<textarea class="textarea"></textarea>
									</td>
								</tr>
								<tr>
									<th>특이사항 <img src="../img/ico_required.gif" /></th>
									<td>
										<textarea class="textarea"></textarea>
									</td>
								</tr>
								<tr>
									<th>기준인원 <img src="../img/ico_required.gif" /></th>
									<td>
										<select>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
										</select>명
									</td>
								</tr>
								<tr>
									<th>최대인원 <img src="../img/ico_required.gif" /></th>
									<td>
										<select>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
											<option value="32">32</option>
											<option value="33">33</option>
											<option value="34">34</option>
											<option value="35">35</option>
											<option value="36">36</option>
											<option value="37">37</option>
											<option value="38">38</option>
											<option value="39">39</option>
											<option value="40">40</option>
											<option value="40">40</option>
											<option value="41">41</option>
											<option value="42">42</option>
											<option value="43">43</option>
											<option value="44">44</option>
											<option value="45">45</option>
											<option value="46">46</option>
											<option value="47">47</option>
											<option value="48">48</option>
											<option value="49">49</option>
											<option value="50">50</option>
										</select>명
									</td>
								</tr>
								<tr>
									<th>객실사진1</th>
									<td>
										<input type="file" id="file" name="file" required class="user-input fill">
									</td>
								</tr>
								<tr>
									<th>객실사진2</th>
									<td>
										<input type="file" id="file" name="file" required class="user-input fill">
									</td>
								</tr>
								<tr>
									<th>객실사진3</th>
									<td>
										<input type="file" id="file" name="file" required class="user-input fill">
									</td>
								</tr>
								<tr>
									<th>객실사진4</th>
									<td>
										<input type="file" id="file" name="file" required class="user-input fill">
									</td>
								</tr>
								<tr>
									<th>객실사진5</th>
									<td>
										<input type="file" id="file" name="file" required class="user-input fill">
									</td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
				<div class="empty-row"></div>
				<div class="btnArea text-center">
					<a href="#none" onclick="sendCheck();"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_member_join1.gif"/></a>
					<a href="${pageContext.request.contextPath}"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_member_join_cancel.gif" alt="회원가입취소" /></a>
				</div>
			</form>
			
<%@ include file="/WEB-INF/view/template/footer.jsp" %>   
			