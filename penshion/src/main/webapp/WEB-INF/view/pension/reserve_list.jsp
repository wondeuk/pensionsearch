<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %> 

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/member_myinfo.css">   
<div class="area-60 center">
<h2>펜션예약 상태</h2>
    <div class="area-60 center">
        <p>펜션예약 현황을 확인할 수 있습니다<br>
        예약상태를 변경할 수 있습니다</p>
    </div>
		<table id="qna">
			<tr>
				<th>펜션명</th>
                <th>객실명</th>
				<th>예약자명</th>
                <th>숙박기간</th>
                <th>결제금액</th>
				<th>예약상태</th>
			</tr>
			<tr>
                <td>펜션이름이랑</td>
				<td>객실이름이랑</td>
                <td>예약한 사람이름</td>
                <td>숙박기간</td>
                <td>결제한 금액</td>
				<td>
                    <select>
                        <option>입금대기중</option>
                        <option>예약완료</option>
                    </select>
                    <input type="submit" value="확인">
                </td>
			</tr>
		</table>
</div>

<%@ include file="/WEB-INF/view/template/footer.jsp" %>    