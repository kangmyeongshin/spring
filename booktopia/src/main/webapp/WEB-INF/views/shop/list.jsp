<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_head.jsp" %>
<article>
  <title>도서 목록 페이지</title>
  <hgroup>
    <h1>컴퓨터와 인터넷</h1>
    <h2>오늘의 책</h2>
  </hgroup>
  <section id="new_book">
    <h3>새로나온 책</h3>
    <div id="left_scroll">
      <a href='javascript:slide("left");'><img src="/booktopia/img/left.gif"></a>
    </div>
    <div id="carousel_inner">
      <ul id="carousel_ul">
      
        <!-- 검색 후 해당 도서가 없을때
		<li>
			<div id="book"><a href="#"><h1>제품이없습니다.</h1></a></div>
		</li>
        -->
        
        <li>
          <div id="book">
            <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
            <div class="sort">[컴퓨터 인터넷]</div>
            <div class="title">
              <a href="#">모두의 파이썬1</a>
            </div>
            <div class="writer">이승찬 | 길벗</div>
            <div class="price"><span>12,000원</span><br>10,800원(10%할인)</div>
          </div>
        </li>
        <li>
          <div id="book">
            <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
            <div class="sort">[컴퓨터 인터넷]</div>
            <div class="title">
              <a href="#">모두의 파이썬2</a>
            </div>
            <div class="writer">이승찬 | 길벗</div>
            <div class="price"><span>12,000원</span><br>10,800원(10%할인)</div>
          </div>
        </li>
        <li>
          <div id="book">
            <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
            <div class="sort">[컴퓨터 인터넷]</div>
            <div class="title">
              <a href="#">모두의 파이썬3</a>
            </div>
            <div class="writer">이승찬 | 길벗</div>
            <div class="price"><span>12,000원</span><br>10,800원(10%할인)</div>
          </div>
        </li>
        <li>
          <div id="book">
            <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
            <div class="sort">[컴퓨터 인터넷]</div>
            <div class="title">
              <a href="#">모두의 파이썬4</a>
            </div>
            <div class="writer">이승찬 | 길벗</div>
            <div class="price"><span>12,000원</span><br>10,800원(10%할인)</div>
          </div>
        </li>
        <li>
          <div id="book">
            <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
            <div class="sort">[컴퓨터 인터넷]</div>
            <div class="title">
              <a href="#">모두의 파이썬5</a>
            </div>
            <div class="writer">이승찬 | 길벗</div>
            <div class="price"><span>12,000원</span><br>10,800원(10%할인)</div>
          </div>
        </li>
        <li>
          <div id="book">
            <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
            <div class="sort">[컴퓨터 인터넷]</div>
            <div class="title">
              <a href="#">모두의 파이썬6</a>
            </div>
            <div class="writer">이승찬 | 길벗</div>
            <div class="price"><span>12,000원</span><br>10,800원(10%할인)</div>
          </div>
        </li>
      </ul>
    </div>
    <div id="right_scroll">
      <a href='javascript:slide("right");'><img src="/booktopia/img/right.gif"></a>
    </div>
    <input id="hidden_auto_slide_seconds" type="hidden" value="4000">

    <div class="clear"></div>
  </section>
  <div class="clear"></div>
  <div id="sorting">
    <ul>
      <li><a class="active" href="#">베스트 셀러</a></li>
      <li><a href="#">최신 출간</a></li>
      <li><a style="border: currentColor; border-image: none;" href="#">최근 등록</a></li>
    </ul>
  </div>
  <table id="list_view">
    <tbody>
      <tr>
        <td class="goods_image">
          <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
        </td>
        <td class="goods_description">
          <h2><a href="#">모두의 파이썬</a></h2>
          <div class="writer_press">이승찬|길벗|2016-05-09</div>
        </td>
        <td class="price">
          <span>12,000원</span><br>
          <strong>10,800원</strong><br>(10% 할인)
        </td>
        <td><input type="checkbox" value=""></td>
        <td class="buy_btns">
          <ul>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">구매하기</a></li>
            <li><a href="#">비교하기</a></li>
          </ul>
        </td>
      </tr>
      <tr>
        <td class="goods_image">
          <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
        </td>
        <td class="goods_description">
          <h2><a href="#">모두의 파이썬</a></h2>
          <div class="writer_press">이승찬|길벗|2016-05-09</div>
        </td>
        <td class="price">
          <span>12,000원</span><br>
          <strong>10,800원</strong><br>(10% 할인)
        </td>
        <td><input type="checkbox" value=""></td>
        <td class="buy_btns">
          <ul>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">구매하기</a></li>
            <li><a href="#">비교하기</a></li>
          </ul>
        </td>
      </tr>
      <tr>
        <td class="goods_image">
          <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
        </td>
        <td class="goods_description">
          <h2><a href="#">모두의 파이썬</a></h2>
          <div class="writer_press">이승찬|길벗|2016-05-09</div>
        </td>
        <td class="price">
          <span>12,000원</span><br>
          <strong>10,800원</strong><br>(10% 할인)
        </td>
        <td><input type="checkbox" value=""></td>
        <td class="buy_btns">
          <ul>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">구매하기</a></li>
            <li><a href="#">비교하기</a></li>
          </ul>
        </td>
      </tr>
      <tr>
        <td class="goods_image">
          <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
        </td>
        <td class="goods_description">
          <h2><a href="#">모두의 파이썬</a></h2>
          <div class="writer_press">이승찬|길벗|2016-05-09</div>
        </td>
        <td class="price">
          <span>12,000원</span><br>
          <strong>10,800원</strong><br>(10% 할인)
        </td>
        <td><input type="checkbox" value=""></td>
        <td class="buy_btns">
          <ul>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">구매하기</a></li>
            <li><a href="#">비교하기</a></li>
          </ul>
        </td>
      </tr>
      <tr>
        <td class="goods_image">
          <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
        </td>
        <td class="goods_description">
          <h2><a href="#">모두의 파이썬</a></h2>
          <div class="writer_press">이승찬|길벗|2016-05-09</div>
        </td>
        <td class="price">
          <span>12,000원</span><br>
          <strong>10,800원</strong><br>(10% 할인)
        </td>
        <td><input type="checkbox" value=""></td>
        <td class="buy_btns">
          <ul>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">구매하기</a></li>
            <li><a href="#">비교하기</a></li>
          </ul>
        </td>
      </tr>
      <tr>
        <td class="goods_image">
          <a href="#"><img width="75" alt="" src="/booktopia/goods/thumb_395.png"></a>
        </td>
        <td class="goods_description">
          <h2><a href="#">모두의 파이썬</a></h2>
          <div class="writer_press">이승찬|길벗|2016-05-09</div>
        </td>
        <td class="price">
          <span>12,000원</span><br>
          <strong>10,800원</strong><br>(10% 할인)
        </td>
        <td><input type="checkbox" value=""></td>
        <td class="buy_btns">
          <ul>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">구매하기</a></li>
            <li><a href="#">비교하기</a></li>
          </ul>
        </td>
      </tr>
    </tbody>
  </table>
  <div class="clear"></div>
  <div id="page_wrap">
    <ul id="page_control">
      <li><a class="no_border" href="#">Prev</a></li>
      <li><a class="page_contrl_active" href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
      <li><a href="#">6</a></li>
      <li><a href="#">7</a></li>
      <li><a href="#">8</a></li>
      <li><a href="#">9</a></li>
      <li><a href="#">10</a></li>
      <li><a class="no_border" href="#">Next</a></li>
    </ul>
  </div>
</article>

<%@ include file="../_tail.jsp" %>