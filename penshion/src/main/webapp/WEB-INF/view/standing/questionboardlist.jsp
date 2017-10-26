<%@page import="spring.model.questionboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/standing.css">

<div class="empty-row"></div>
<div class="empty-row"></div>

<div class="submenu">

	<div class="menu">

		<ul>
			<li><a
				href="${pageContext.request.contextPath}/standing/standing2">입점
					안내</a></li>
			<li><a
				href="${pageContext.request.contextPath}/standing/reservesystem">예약시스템
					안내</a></li>
			<li><a
				href="${pageContext.request.contextPath}/standing/questionboardlist">Q
					& A</a></li>
		</ul>
	</div>

	<div class="submenucontext">
	<div align="center"><h3>문의 목록</h3>
	</div>
		<table border="1" width="100%" height="13%" align="center">

			<thead>
			
		<tr align="center">
			<th>번호</th>
			<th width="40%">제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="q" items="${list}">
		<tr align="center">
			<td width="10%">${q.boardno}</td>
			<td width="45%" align="left">&nbsp;&nbsp;&nbsp;${q.title}</td>
			<td width="25%">${q.writer}</td>
			<td>${q.date}</td>
			
		</tr>
		
		</c:forEach>
	</tbody>
	
	<tfoot>
                <tr>
                    <td colspan="8" align="right">
                    	<c:if test="${blockstart > 1}">
                    		<a href="${pageContext.request.contextPath}/standing/questionboardlist?page=${blockstart-1}${searchParam}">[이전]</a>
                    	</c:if>
                        <c:forEach var="n" begin="${blockstart}" end="${blockend}">
                        	<c:choose>
                        		<c:when test="${pageNo==n}">
                        			<a href="#" class="active">${n}</a>
                        		</c:when>
                        		<c:otherwise>
                        			<a href="${pageContext.request.contextPath}/standing/questionboardlist?page=${n}${searchParam}">${n}</a>
                        		</c:otherwise>
                        	</c:choose>
                        </c:forEach>
                        <c:if test="${blockend < blocktotal}">
                        	<a href="${pageContext.request.contextPath}/standing/questionboardlist?page=${blockend+1}${searchParam}">[다음]</a>
                        </c:if>
                    </td>
                </tr>
            </tfoot>

		</table>
		<div class="empty-row"></div>
		
		
		<div class="writerbtn" align="right">
		<input type="button" value="글쓰기" style="width:100; height:30;" onclick="location.href='${pageContext.request.contextPath}/standing/questionboard' ">
		</div>
		<div class="empty-row"></div>
		
		
		<div align="center">
		<form action="#">
            <div class="inner-align-right">
                <div>
                    <input id="form-btn" type="submit" value="검색">
                </div>
                <div>
                    <input class="form-input" type="search" name="key" placeholder="검색어" value="${param.key}" required>        
                </div>
                <div>
                    <select class="form-input" name="type">
                    	<c:choose>
                    		<c:when test="${param.type == 'writer'}">
								<option value="title">제목</option>
              					<option value="writer" selected>작성자</option>                    		
                    		</c:when> 
                    		<c:otherwise>
                    			<option value="title">제목</option>
              					<option value="writer">작성자</option>
                    		</c:otherwise>
                    	</c:choose>
                    </select>
                </div>
            </div>
        </form>
		</div>

	</div>

</div>

</main>

<%@ include file="/WEB-INF/view/template/footer.jsp"%>
