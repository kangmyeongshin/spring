<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_head.jsp" %>

<main>
   <div id="wrapper">
     <h2 class="CS">CUSTOMER CENTER</h2>
       <div class="faq-container">
           <div class="faq1">
             <div>
               <ul>
                 <li><img src="../img/faq_sns01.jpg" alt="전화"></li>
                 <li><strong>1644-4370</strong><li>
                 <li>10AM - 4PM (LUNCH 12PM-1PM)<br/>SAT, SUN, HOLIDAY OF</li>
                </ul>
              </div>
            <div>
              <ul>
                <li><img src="../img/faq_sns02.jpg" alt="카카오톡"></li>
                 <li><strong>카카오톡 실시간상담</strong><li>
                 <li>ID : @클릭앤퍼니<br/>
                   10AM - 4PM (LUNCH 12PM-1PM)<br/>
                   SAT, SUN, HOLIDAY OFF</li><br/>
               </ul>
       	    </div>
            <div>
               <ul>
                 <li><a href="#"><img src="../img/faq_sns03.jpg" alt="아이디"><span>아이디찾기</span></a></li>
                 <li><a href="#"><img src="../img/faq_sns04.jpg" alt="주문조회"><span>주문조회</span></a></li>
               </ul>
             </div>
           </div>
           <div class="faq2">
             <div><p>교환/반품 주소지 : 서울특별시 성북구 성북로 49 운석빌딩 4층 (CJ대한통운 택배를 이용해주세요. TEL : 1588-1255)</p></div>
           </div>
           <div class="faq3">
             <div>
                 <h2>
                     <span class="main">Q&A</span>
                     <span>궁금한 사항이 있으실 경우 문의사항을 남겨주시면 답변을 드립니다.</span>
                 </h2>
           	    <div class="blackline"></div>
                <div class="qnamenu">
                     <div><a href="#">상품문의</a></div>
                     <div><a href="#">배송문의</a></div>
                     <div><a href="#">교환/반품문의</a></div>
                     <div><a href="#">취소/기타문의</a></div>
                     <div><a href="#">제휴/도매문의</a></div>
                     <div><a href="#">VIP전용</a></div>
                </div>
             </div>
       	   	 <div>
                <h2>
                   <span class="main">NOTICE</span>
                   <span>궁금한 사항이 있으실 경우 문의사항을 남겨주시면 답변을 드립니다.</span>
                   <a href="#">더보기</a>
                 </h2>
              </div>
              <div>
                 <table border="0">
                 	<tbody>
	                   <tr>
		                     <th>번호</th>
		                     <th>제목</th>
		                     <th>등록일</th>
	                   </tr>
	                   <tr class="bd_num1">
						       <td align="center" class="board_num">5</td>
						       <td><a href="#"><b>2019 적립금 소멸 안내</b></font></a></td>
						       <td align="center">2019-01-24</td>
				      </tr>
	                   <tr class="bd_num1">
						       <td align="center" class="board_num">4</td>
						       <td><a href="#"><b>2018 금 소멸 안내</b></font></a></td>
						       <td align="center">2019-01-24</td>
				      </tr>
                      <tr class="bd_num1">
						       <td align="center" class="board_num">3</td>
						       <td><a href="#"><b>2019 적립금 소멸 안내</b></font></a></td>
						       <td align="center">2019-01-24</td>
				      </tr>
                      <tr class="bd_num1">
						       <td align="center" class="board_num">2</td>
						       <td><a href="#"><b>2019 적립금 소멸 안내</b></font></a></td>
						       <td align="center">2019-01-24</td>
				      </tr>
	                   <tr class="bd_num1">
						       <td align="center" class="board_num">1</td>
						       <td><a href="#"><b>2019 적립금 소멸 안내</b></font></a></td>
						       <td align="center">2019-01-24</td>
				      </tr>
                  </tbody>
               </table>
             </div>
         </div>

             <fieldset>
                 <legend>FAQ 검색 폼</legend>
                 <div class="search">
                       <select class="select-category">
	                        <option value="">전체검색</option>
	                        <option value="8">베스트 FAQ</option>
	                        <option value="2">회원정보</option>
	                        <option value="4">주문결제</option>
	                        <option value="5">배송관련</option>
	                        <option value="6">취소/반품/교환</option>
	                        <option value="7">기타</option>
                        </select>
              		      <span class="faq_text">FAQ SEARCH</span>
	                  	   <span class="faq_sch">
	                        <input id="faqSearch" class="MS_input_txt faqinpt" onkeypress="javascript:faqEnter(event);" type="text" value=""></span>
                            <a href="javascript:faqSearch('keyword')" class="faq_sch_btn">검색</a>
                      </div>
              </fieldset>

              <div class="faq4">
                <div>
                   <h2>
                     <span class="main">FAQ</span>
                     <span>자주 문의하시는 질문에 대한 답변을 확인하실 수 있습니다.</span>
                   </h2>

                </div>
                <div class="faq4_cate">
                    <a href="#">전체보기</a>
                    <a href="#">베스트 FAQ</a>
                    <a href="#">회원정보</a>
                    <a href="#">주문결제</a>
                    <a href="#">배송관련</a>
                    <a href="#">취소/반품/교환</a>
                    <a href="#">기타</a>
                 </div>
                  <div>
                    <table>
                      <tbody>
                        <tr>
                       	  <td>1</td>
                          <td>적립금 적립방법...</td>
                        </tr>
                        <tr>
                           <td>2</td>
                          <td>적립금 적립방법1...</td>
                        </tr>
                        <tr>
                           <td>3</td>
                          <td>적립금 적립방법2...</td>
                        </tr>
                        <tr>
                          <td>4</td>
                          <td>적립금 적립방법3...</td>
                        </tr>
                        <tr>
                           <td>5</td>
                          <td>적립금 적립방법4...</td>
                        </tr>
                     </tbody>
                   </table>
               </div>
          </div>
     </div>
</main>
<%@ include file="../_footer.jsp" %>