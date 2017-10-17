<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %>    
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member.css">  
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
            <form action="user_egister02" method="post" id="next02">
                <div class="xans-member-join area-50 center">
                    <div class="boardWrite type">
                        <table border="1" summary="">
                            <caption>회원가입</caption>
                            <tbody>
                                <tr>
                                    <th>
                                        회원구분<img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수" />
                                    </th>
                                    <td>
                                        <input id="member_type0" name="member_type" fw-filter="isFill" fw-label="회원구분" fw-msg="" value="c" type="radio" checked="checked">
                                        <label for="member_type0">개인회원</label>
                                        <input id="member_type1" name="member_type" fw-filter="isFill" fw-label="회원구분" fw-msg="" value="p" type="radio">
                                        <label for="member_type1">사업자회원</label>
                                    </td>
                                </tr>


                            </tbody>
                        </table>
                    </div>

                    <h3>기본정보</h3>
                    <p class="required"><img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수" /> 필수입력사항</p>
                    <div class="boardWrite">
                        <table border="1" summary="">
                            <caption>회원 기본정보</caption>
                            <tbody>
                                <tr>
                                    <th>아이디 <img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수" /></th>
                                    <td><input id="member_id" name="id" class="inputTypeText" placeholder="" value="" type="text"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_overlap_id.gif" alt="아이디 중복확인" onclick="idCheck();" /> (영문소문자/숫자, 4~16자)</td>
                                </tr>
                                <tr>
                                    <th>비밀번호 <img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수" /></th>
                                    <td><input id="pw1" name="pw1" maxlength="16" 0="disabled" value="" type="password" onblur="pw1Check();">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</td>
                                </tr>
                                <tr>
                                    <th>비밀번호 확인 <img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수" /></th>
                                    <td><input id="pw2" name="pw2" maxlength="20" value="" type="password" onblur="pw2Check();"></td>
                                </tr>


                                <tr>
                                    <th id="{$name_title}">이름 <img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수" /></th>
                                    <td>
                                        <span id="{$name_contents}"><input type="text" name="name" id="name" maxlength="20" onblur="nameCheck();"></span>
                                    </td>
                                </tr>


                                <tr class="company">
                                    <th>상호명 <img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수" /></th>
                                    <td id="companyName"><input name="cname" class="inputTypeText" id="cname" type="text" maxlength="20" fw-msg="" fw-label="상호명" fw-filter="isMax[20]" value=""></td>
                                </tr>
                                <tr class="company">
                                    <th>사업자번호 <img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수" /></th>
                                    <td id="companySsn"><input id="crn" name="crn" fw-filter="isMax[20]" fw-label="사업자 번호" fw-msg="" class="inputTypeText" placeholder="" maxlength="20" value="" type="text"></td>
                                </tr>

                                <tr>
                                    <th>주소 <img src="${pageContext.request.contextPath}/img/ico_required.gif" class="{$display_required_address|display}" alt="필수" /></th>
                                    <td>
                                        <input id="postcode1" name="postcode1" fw-filter="isLengthRange[1][14]" fw-label="우편번호1" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text"> - <input id="postcode2" name="postcode2" fw-filter="isLengthRange[3][8]" fw-label="우편번호2" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text" disabled="" style="display: none;">
                                        <a href="#none" onclick="{$action_find_address}" id="{$btn_find_post}"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_zipcode.gif" alt="우편번호" /></a><br /> <input id="addr1" name="addr1" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"> 기본주소<br /> <input id="addr2" name="addr2" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"> 나머지주소
                                    </td>
                                </tr>
                                <tr class="company">
                                    <th>일반전화 <img src="${pageContext.request.contextPath}/img/ico_required.gif" class="{$display_required_phone|display}" alt="필수" /></th>
                                    <td><input id="phone1" name="phone[]" maxlength="4" fw-filter="isNumber&amp;isFill&amp;isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" value="" type="text">- <input id="phone2" name="phone[]" maxlength="4" fw-filter="isNumber&amp;isFill&amp;isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" value="" type="text">- <input id="phone3" name="phone[]" maxlength="4" fw-filter="isNumber&amp;isFill&amp;isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" value="" type="text"></td>
                                </tr>
                                <tr>
                                    <th>휴대전화 <img src="${pageContext.request.contextPath}/img/ico_required.gif" class="{$display_required_cell|display}" alt="필수" /></th>
                                    <td>
                                        <select id="mobile1" name="mobile[]" fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg="">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select> -
                                        <input id="mobile2" name="mobile[]" maxlength="4" fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text"> -
                                        <input id="mobile3" name="mobile[]" maxlength="4" fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text">
                                    </td>
                                </tr>
                                <tr>
                                    <th>이메일 <img src="${pageContext.request.contextPath}/img/ico_required.gif" class="{$display_required_cell|display}" alt="필수" /></th>
                                    <td><input id="email1" name="email1" fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="" value="" type="text">@<input id="email2" name="email2" fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="" readonly="readonly" value="" type="text"><select id="email3" fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="">
                                <option value="" selected="selected">- 이메일 선택 -</option>
                                <option value="naver.com">naver.com</option>
                                <option value="daum.net">daum.net</option>
                                <option value="nate.com">nate.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="yahoo.com">yahoo.com</option>
                                <option value="empas.com">empas.com</option>
                                <option value="korea.com">korea.com</option>
                                <option value="dreamwiz.com">dreamwiz.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="etc">직접입력</option>
                                </select></td>
                                </tr>
                                <tr class="company">
                                    <th>홈페이지 도메인 <img src="${pageContext.request.contextPath}/img/ico_required.gif" class="{$display_required_cell|display}" alt="필수" /></th>
                                    <td><input type="text" name="domain"></td>
                                </tr>


                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="btnArea text-center">
                    <a href="#none" onclick="sendCheck();"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_member_join1.gif" alt="회원가입" /></a>
                    <a href="${pageContext.request.contextPath}"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_member_join_cancel.gif" alt="회원가입취소" /></a>
                </div>
            </form>
<%@ include file="/WEB-INF/view/template/footer.jsp" %>    

