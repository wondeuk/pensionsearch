<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %>    
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member.css">
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_register.css">
			<script src="${pageContext.request.contextPath}/js/user_register.js"></script>
			<script src="https://code.jquery.com/jquery-latest.js"></script>

			<script>
				$(document).ready(function() {
					$(".company").css("display", "none");
					$("#member_type1").on("change", function() {
						$(".company").css("display", "");
					});
					$("#member_type0").on("change", function() {
						$(".company").css("display", "none");
					});

				});
			</script>
			<form action="user_register02" method="post" id="next02">
			<input type="hidden" value="${agree}" name="agree">
			
				<div class="xans-member-join area-50 center">
					<div class="boardWrite type">
						<table border="1" summary="">
							<caption>회원가입</caption>
							<tbody>
								<tr>
									<th>
										회원구분<img src="img/ico_required.gif" />
									</th>
									<td>
										<input id="member_type0" name="member_type" fw-label="회원구분" value="c" type="radio" checked="checked">
										<label for="member_type0">개인회원</label>
										<input id="member_type1" name="member_type" fw-label="회원구분" value="p" type="radio">
										<label for="member_type1">사업자회원</label>
									</td>
								</tr>


							</tbody>
						</table>
					</div>

					<h3>기본정보</h3>
					<p class="required"><img src="img/ico_required.gif" /> 필수입력사항</p>
					<div class="boardWrite">
						<table>
							<caption>회원 기본정보</caption>
							<tbody>
								<tr>
									<th>아이디 <img src="img/ico_required.gif" /></th>
									<td><input id="member_id" name="id" class="inputTypeText" placeholder="" value="" type="text" onblur="idCheck();"> (영문소문자/숫자, 4~16자)</td>
								</tr>
								<tr>
									<th>비밀번호 <img src="img/ico_required.gif" /></th>
									<td><input id="pw1" name="pw1" maxlength="16" 0="disabled" value="" type="password" onblur="pw1Check();">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</td>
								</tr>
								<tr>
									<th>비밀번호 확인 <img src="img/ico_required.gif" /></th>
									<td><input id="pw2" name="pw2" maxlength="20" value="" type="password" onblur="pw2Check();"></td>
								</tr>


								<tr>
									<th id="{$name_title}">이름 <img src="img/ico_required.gif" /></th>
									<td>
										<span id="{$name_contents}"><input type="text" name="name" id="name" maxlength="20" onblur="nameCheck();"></span>
									</td>
								</tr>


								<tr class="company">
									<th>상호명 <img src="img/ico_required.gif" /></th>
									<td id="companyName"><input name="cname" class="inputTypeText" id="cname" type="text" maxlength="20" value=""></td>
								</tr>
								<tr class="company">
									<th>사업자번호 <img src="img/ico_required.gif" /></th>
									<td id="companySsn"><input id="crn" name="crn" class="inputTypeText" placeholder="" maxlength="20" value="" type="text"></td>
								</tr>
								<tr class="company">
									<th>일반전화 <img src="img/ico_required.gif" class="{$display_required_phone|display}" /></th>
									<td><input id="phone1" name="phone1" maxlength="4" value="" type="text">- <input id="phone2" name="phone2" maxlength="4" value="" type="text">- <input id="phone3" name="phone3" maxlength="4" value="" type="text"></td>
								</tr>
								<tr>
									<th>휴대전화 <img src="img/ico_required.gif" class="{$display_required_cell|display}" /></th>
									<td>
										<select id="mobile1" name="mobile01">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select> -
										<input id="mobile2" name="mobile02" maxlength="4" type="text"> -
										<input id="mobile3" name="mobile03" maxlength="4" type="text">
									</td>
								</tr>
								<tr>
									<th>이메일 <img src="img/ico_required.gif" class="{$display_required_cell|display}" /></th>
									<td>
										<input id="email1" name="email01" value="" type="text">
										@
										<input id="email2" name="email02" value="" type="text">
									</td>
								</tr>
								<tr class="company">
									<th>홈페이지 도메인 <img src="img/ico_required.gif" class="{$display_required_cell|display}" /></th>
									<td><input type="text" name="domain"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="empty-row"></div>
				
				<div class="btnArea text-center">
					<button id="login_btn" type="submit" onclick="sendCheck();"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_member_join1.gif"/></button>
					<button onclick="location.href='${pageContext.request.contextPath}'"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_member_join_cancel.gif" alt="회원가입취소" /></button>
				</div>
			</form>
<%@ include file="/WEB-INF/view/template/footer.jsp" %>    

