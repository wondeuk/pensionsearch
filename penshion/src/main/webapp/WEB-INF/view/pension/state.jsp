<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/template/header.jsp" %>    

<div class="area-80 center">
	<table border="1">
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
									<input type="hidden" name="[${s.date}](${s.room_no})room_name" value="${state.key}">
									<input type="hidden" name="[${s.date}](${s.room_no})price" value="${s.price}">
									<input type="hidden" name="[${s.date}](${s.room_no})date" value="${s.date}">
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
</div>

<%@ include file="/WEB-INF/view/template/footer.jsp" %>