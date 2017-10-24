<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="/WEB-INF/view/template/header.jsp" %>
 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/standing.css">      

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/standing.css">

            <div class="empty-row"></div>
            <div class="empty-row"></div>
            
                 
            <div class="submenucontext">
           
              <table border="1" width="50%" align="center" height="50%">
                  
		      <tbody>
		    
        	<tr>
        		<th>번호</th>
        		<th>작성자</th>
        		<th>제목</th>
        		<th>내용</th>
        		
        	</tr>
        	<c:forEach var="q" items="${list}">
        	<tr>
        		<td>${q.boardno}</td>
        		<td>${q.writer}</td>
        		<td>${q.title}</td>
        		<td>${q.detail}</td>
        	</tr>
        	</c:forEach>
			
	       </tbody>
            </table>
                    
            </div>
            
        </main>

        <%@ include file="/WEB-INF/view/template/footer.jsp" %>

