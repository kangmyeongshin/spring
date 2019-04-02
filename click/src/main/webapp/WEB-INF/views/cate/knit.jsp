<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_head.jsp" %>

<main>
    <div class="list">
       <div class="head_cate">
           <h2 class="cate_fo">KNIT / CARDIGAN</h2>
           <div class="midcate">
              <ul>
                <li><a href="/click/cate/kindofKnit?cate=knit">니트</a><span>/</span></li>
                <li><a href="/click/cate/kindofKnit?cate=cardigan">가디건</a><span>/</span></li>
              </ul>
            </div>
        </div>
        <div id="wrapper">
          <div class="sort_wrap">
             <div class="sortproduct">
               <ul>
                  <li><a href="#">인기상품</a></li>
                  <li><a href="#">신상품</a></li>
                  <li><a href="#">낮은가격</a></li>
                  <li><a href="#">높은가격</a> </li>
              </ul>
             </div>
           </div>
           <div class="prd_list">
         	 <div class="prd_wrap">
           	   <ul>
          		  <c:if test="${goodsMap != null }">
            	  <c:forEach var="item" items="${goodsMap.knit}">
           		  	<li class="item">
                		<div class="space">
                    	<div class="thumbnail">
               	      		 <a href="#">
	                	     <img src="/click/detail/${item.GOODS_ID}/${item.FILENAME}" alt=""> </a>
                   		  </div>
                    	  <div class="prd_info">
                      		  <div class="prd_name">${item.GOODS_TITLE}</div>
                      		  <div class="price">
                      			 <fmt:formatNumber value="${item.GOODS_PRICE}" type="number" var="goods_price" />${goods_price}원
                   			   </div>
                  		  </div>
                		</div>
            		</li>
           		 </c:forEach>
           	    </c:if>
        	     <c:if test="${goodsMap == null }">
            		  <c:forEach var="item" items="${goodsList}">
            			<li class="item">
                			<div class="space">
                   				 <div class="thumbnail">
                     				 <a href="#">
                     				 <img src="/click/detail/${item.GOODS_ID}/${item.FILENAME}" alt=""> </a>
                    			</div>
                    			<div class="prd_info">
                     			 <div class="prd_name">${item.GOODS_TITLE}	</div>
					                <div class="price">
					                    <fmt:formatNumber value="${item.GOODS_PRICE}" type="number" var="goods_price" />${goods_price}원
                      				</div>
                   				 </div>
                			</div>
           				 </li>
             		</c:forEach>
            	 </c:if>
              </ul>
            </div>
        </div>
  	</div>
</main>

<%@ include file="../_footer.jsp" %>