<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/view/template/header.jsp" %>
<%
	String title = request.getParameter("title");
%>

<%-- 제목 --%>
<h1>게시글 작성</h1>
<h5>글은 자신을 나타내는 도구입니다.</h5>

<form action="write_pro.jsp" method="post">
<%if(title != null){ %>
<input type="hidden" name="gno" value="<%=request.getParameter("gno")%>">
<input type="hidden" name="parent" value="<%=request.getParameter("parent")%>">
<input type="hidden" name="depth" value="<%=request.getParameter("depth")%>">
<%} %>

<%-- 입력공간 --%>
<table border="1" width="80%" align="center">
	<%-- 작성자, 제목, 내용, 비밀번호 --%>
	<tbody>
		<tr><td>
			<input type="text" name="writer" placeholder="작성자" required>
		</td></tr>
		<tr><td>
			<input type="text" name="title" placeholder="제목" required size="108"
					value="<%=title==null?"":title%>">
		</td></tr>
		<tr><td>
			<textarea name="detail" placeholder="내용" required
				rows="15" cols="110"  
			></textarea>
		</td></tr>
		<tr><td>
			<input type="password" name="pw" placeholder="비밀번호" required maxlength="20">
		</td></tr>
	</tbody>
</table>
<br>
<%-- 버튼들 --%>
<input type="submit" value="등록"> <a href="list.jsp">목록</a>
</form>

<%@ include file="/WEB-INF/view/template/footer.jsp" %>