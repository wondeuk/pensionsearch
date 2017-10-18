<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %> 
<link rel="stylesheet" type="text/css" href="member.css">   
<link rel="stylesheet" type="text/css" href="member_login.css">   
<form action="#" method="post">
                <div class="xans-member-login">
                    <div class="login">
                        <h3><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/h3_login.gif" alt="회원로그인" /></h3>
                        <fieldset>
                            <legend>회원로그인</legend>
                            <label class="id"><span>아이디</span><input id="member_id" name="member_id" class="inputTypeText" placeholder="" value="" type="text"></label>
                            <label class="password"><span>비밀번호</span><input id="member_passwd" name="member_passwd" value="" type="password"></label>
                            <button id="login_btn" type="submit"><img class="btn-img" src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_login.gif"></button>
                            
                            <ul>
                                <li><a href="/member/id/find_id.html">아이디찾기</a></li>
                                <li><a href="/member/passwd/find_passwd_info.html">비밀번호찾기</a></li>
                            </ul>
                            <p class="link">
                                회원가입을 하시면 다양하고<br>특별한 혜택이 준비되어 있습니다.
                                <a href="user_register01"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_join.gif" alt="회원가입"></a>
                            </p>
                        </fieldset>
                    </div>
                </div>
            </form>
<%@ include file="/WEB-INF/view/template/footer.jsp" %>    

