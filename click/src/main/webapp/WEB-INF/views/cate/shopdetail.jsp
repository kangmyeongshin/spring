<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../_head.jsp" %>
        <main>
          <div id="wrapper">
            <div id="detail_wrap">
           	 <div class="detail_left">
              <div class="left_img" >
                <img src="/click/detail/${goods.GOODS_ID}/${goods.FILENAME}" alt="옷이미지">
              </div>
            </div>
            <div class="detail_right">
              <div class="cinfo">
                <div class="name">${goods.GOODS_TITLE} </div>
                <div class="price"><span>${goods.GOODS_PRICE}원</span> </div>
              </div>
              <table>
                <tbody>
                  <tr>
                    <th>제품코드</th>
                    <td>jk46590</td>
                  </tr>
                  <tr>
                    <th>해외배송</th>
                    <td>ok</td>
                  </tr>
                  <tr>
                    <th>카드혜택</th>
                    <td>무이자 할부 혜택</td>
                  </tr>
                  <tr>
                    <th>색상</th>
                    <td> <select class="" name="color">
                      <option value="" selected>-- 선택 --</option>
                     <option value="nabvy">네이비</option>
                    </select>
                   </td>
                  </tr>
                  <tr>
                    <th>사이즈</th>
                    <td> <select class="" name="size">
                      <option value="" selected>--선택 --</option>
                      <option value="">라지</option>
                    </select>
                   </td>
                  </tr>
                </tbody>
              </table>
              <div class="total_price">
                <span>총 상품금액</span>
              </div>
              <div class="btn_detail">
                <div class="cart">장바구니 </div>
                <div class="buy">바로구매 </div>
              </div>
            </div>
          </div>
 	 </div>
</main>
<%@ include file="../_footer.jsp" %>
