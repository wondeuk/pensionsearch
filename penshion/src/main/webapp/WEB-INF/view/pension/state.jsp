<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/template/header.jsp" %>    

<div class="area-80 center">
	<c:forEach var="map" items="${test}" >
		<c:forEach var="key" items="${map.key}">
			<c:forEach var="value" items="${map.value}">
			</c:forEach>
		</c:forEach>
	</c:forEach>
</div>

<%@ include file="/WEB-INF/view/template/footer.jsp" %>