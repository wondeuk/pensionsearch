<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/template/header.jsp" %>   
    
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reservation.css">
                
                <div class="content">
                <div class="empty-row"></div>
                    
                <div class="info1">
                <h3>객실정보 확인</h3>
                    <table>
                        <tr>
                            <th>펜션이름</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>객실이름</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>요금유형</th>
                            <td>비성수기 주말</td>
                        </tr>
                        <tr>
                            <th>객실요금</th>
                            <td></td>
                        </tr>
                    </table>
                </div>
                
                <div class="empty-row"></div>
                
               
                <div class="info2">
                        <h3>예약</h3>
                           <form>
                               <table>
                                    <tr>
                                        <th>예약날짜</th>
                                        <td><input type="date"></td>
                                    </tr>
                                    <tr>
                                        <th>숙박기간</th>
                                        <td><select>
                                    <option>1박2일</option>
                                    <option>2박3일</option>
                                    <option>3박4일</option>
                                    <option>4박5일</option>
                                    <option>5박이상</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>숙박인원</th>
                                        <td>성인: <input type="number" min="1"> 아동: <input type="number" min="0"></td>
                                   </tr>
                                   <tr>
                                        <th>마일리지</th>
                                        <td><input type="text" min="0">원   <span>*보유적립금은 3000원입니다</span></td>
                                   </tr>
                                   <tr>
                                        <th>결제금액</th>
                                        <td></td>
                                   </tr>
                               </table>
                               
                               <div class="ckd">
                                            <input type="checkbox" value="신용카드"><span>신용카드</span>
                                            <input type="checkbox" value="무통장입금"><span>무통장입금</span>
                                            <input type="checkbox" value="실시간계좌이체"><span>실시간계좌이체</span>
                               </div>
                               <p>예약시 개인정보취급방침 및 예약이용문의에 동의하게 됩니다<p>
                                  
                               <div class="reservebtn">
                                <input type="button" value="취소">
                                <input type=submit value="확인">
                               </div>
                                  
                            </form>
                </div>
                    
                    
                </div>
                <div class="empty-row"></div>
			
<%@ include file="/WEB-INF/view/template/footer.jsp" %>   
			