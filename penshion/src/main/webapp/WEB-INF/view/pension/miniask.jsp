<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/question.css">
				
				<c:choose>
				<c:when test="${loginFlag}">
				<div class= "qborder center area-60">
				<div class="empty-row"></div>
				<div class="empty-row"></div>
				<div class="center area-80">
					<h3>질문 하기</h3>
				</div>
				
				
				<div class="empty-row"></div>
				<form action="${pageContext.request.contextPath}/mini/ask" method="post">
				<input type="hidden" name="pension_no" value="${no}">
				<table class="qand center area-70">
					<tr>
						<th>
						<input type=text name="title" placeholder="제목">
						</th>
					</tr>
					<tr>
						<td>
						<textarea name="detail"></textarea>
						</td>
					</tr>
					<tr>
						<th>
						<input type="submit" value="작성">
						</th>
					</tr>	
				</table>
                </form>  
                   </div>
                  </c:when>
                  
                  
                  <c:when test="${companyFlag}">
                  
                  	<div>
                    <table class="qborder center area-80">
                    	<tr>
                    		<th>제목</th>
                    	</tr>
                    	<tr>
                    		<th>작성자(날짜) /<a href="${pageContext.request.contextPath}/mini/ask?pension_no=${pension.pension_no}">답글달기</a></th>
                    	</tr>
                    	<tr>
                            <td>할인은 안 되나요 외부음식은 반입이 가능한가요?? 바베큐 가능 한가요? 연장도 가능한가요</td>
                        </tr>
                      </table>
                      </div>
                  		
                       		 <hr>
                   <div class="answer">
                        <form  action="${pageContext.request.contextPath}/mini/ask">
                        <table class="qborder center area-50">
                            <tr>
                            	<th><textarea>답변답변답변</textarea></th>
                            </tr>
                            <tr>
                                <td><input type="submit" value="답변"></td>
                            </tr>
                    </table>
                    </form>
                   </div>
                   </c:when>
                   
                   </c:choose>


<%@ include file="/WEB-INF/view/template/footer.jsp" %> 