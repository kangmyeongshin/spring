<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_head.jsp" %>
<main>
    <div id="wrapper">
         <div class="Mypage-tit">
              <img src="../img/mypage.gif" alt="MYPAGE">
          </div>
           <div class="mypage_box">
              <div class="boxmargin">
	              <div class="myinfo">
       		         <div class="member_icon">
        		          <img src="../img/royalimg_MX18.gif" alt="레벨">
            	     </div>
           		     <div class="info"><p>${member.name }님 안녕하세요<br/>
                  						<br/>총주문금액</p>
                	 </div>
              	 </div>
               	 <div class="link">
                	<ul>
		                  <li> <a href="/click/member/mypage?mypage_type=myorder"> <img src="../img/icon_order_list.png" alt=""></a></li>
		                  <li> <a href="/click/member/mypage?mypage_type=cuponlist"> <img src="../img/icon_coupon.png" alt=""></a> </li>
		                  <li> <a href=""> <img src="../img/icon_mileage.png" alt=""></a> </li>
		                  <li> <a href=""> <img src="../img/icon_wish.png" alt=""></a> </li>
		                  <li> <a href=""> <img src="../img/icon_myinfo.png" alt=""></a> </li>
		                  <li> <a href="/click/member/modify"> <img src="../img/icon_withdrawal.png" alt="회원정보수정"></a> </li>
		
                	</ul>
              	 </div>
             </div>
           </div>
           <div class="list_title">
              <p>※ '조회'버튼을 클릭하시면 주문상세 내역 및 배송현황을 살펴보실 수 있습니다^^</p>
           </div>
           <div class="tablelist">
              <table border="0">
                <tbody>
                  <tr>
                  	
                    <th>번호
                    </th>
                    <th>주문번호</th>
                    <th>주문날짜</th>
                    <th>주문상품</th>
                  </tr>
                  <tr>
                    <td><input type="hidden" name="seq" value="${myorder.seq}" />
                    ${myorder.seq}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
               </tbody>
          	 </table>
         </div>
     </div>
</main>

<%@ include file="../_footer.jsp" %>