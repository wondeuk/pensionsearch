<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="${pageContext.request.contextPath}/js/user_register.js"></script>
<script>
function pValue(){
	console.log("pValue")
	document.getElementById("userId").value = opener.document.userInfo.id.value;
}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body onload="pValue()">
	<div id="wrap">
		<br>
		<b><font size="4" color="gray">아이디중복체크</font></b>
		<hr size="1" width="460">
		<br>
		<div id="chk" class="text-center">
			<form id="checkForm">
				<input type="hidden" name="id">
				<input type="text" name="idinput" id="userId">
				<input type="button" value="중복확인" onclick="idCheck()">
			</form>
			<div id="msg"></div>
			<br>
			<input id="cancelBtn" type="button" value="취소"  onclick="window.close()"><br>
			<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
		</div>
	</div>

</body>
</html>