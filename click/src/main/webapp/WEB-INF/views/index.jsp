<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
    <meta charset="utf-8">
    <title>클릭앤퍼니</title>
    <link rel="stylesheet" href="./css/style.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="./js/hover.js"></script>
    <script>


      $(function(){
        var li = $('main > .slider > ul > li');
        var i = 0;

        setInterval(function(){
          li.eq(i).animate({'left':'-100%'}, 1000);
          i++;

          if (i == 3) {
            i = 0;

          }
          li.eq(i).css('left','100%').animate({'left':'0'}, 1000);

        }, 1000*3);


      });
    </script>
  </head>
  <body>
    <div id="wrapper">
      <header>
        <div class="top">
          <div>
            <a href="./"><img src="./img/logo.png" alt="로고"></a>
          </div>
          <div>
              <ul>
                  <li>
                  	<c:if test="${member == null}">
						<a href="../click/member/login">LOGIN</a>
					</c:if>
					<c:if test="${member != null}">
    					<a href="/click/member/logout">LOGOUT</a>
    				</c:if>                  
                  </li>
                  <li><a class ="login_btn" href="../click/member/join">JOIN</a></li>
                <li>
                  <a href="#">MY PAGE </a>
                  <ol>
                    <li><a href="#">주문내역</a></li>
                    <li><a href="#">쿠폰내역</a></li>
                    <li><a href="#">적립금내역</a></li>
                    <li><a href="#">위시리스트</a></li>
                    <li><a href="#">회원정보수정</a></li>
                  </ol>
                </li>
                <li>
                  <a href="../click/member/faq">CS CENTER</a>
                  <ol>
                    <li><a href="#">자주묻는질문</a></li>
                    <li><a href="#">상품문의</a></li>
                    <li><a href="#">배송문의</a></li>
                    <li><a href="#">교환/반품문의</a></li>
                    <li><a href="#">공지사항</a></li>
                  </ol>
                </li>
                <li><a href="#">CART</a></li>
              </ul>
          </div>
        </div>
  </div>

        <div class="cate">
          <ul>
            <li><a href="../click/cate/new">NEW</a>
            	<ul>
            		<li></li>
            	</ul>
            </li>
            <li><a href="../click/cate/outer">OUTER</a>
              <ul>
                <li><a href="#">코트</a></li>
                <li><a href="#">자켓</a></li>
                <li><a href="#">점퍼</a></li>
                <li><a href="#">베스트</a></li>
              </ul>
            </li>
            <li><a href="#">KNIT/CARDIGAN</a>
              <ul>
                <li><a href="#">니트</a></li>
                <li><a href="#">가디건</a></li>
              </ul>
            </li>
            <li><a href="#">PANTS</a>
              <ul>
                <li><a href="#">데님</a></li>
                <li><a href="#">슬렉스</a></li>
                <li><a href="#">반바지</a></li>
                <li><a href="#">면팬츠</a></li>
              </ul>
            </li>
            <li><a href="#">TEE</a>
              <ul>
                <li><a href="#">무지티</a></li>
                <li><a href="#">후드/맨투맨</a></li>
              </ul>
            </li>
            <li><a href="#">DRESS/SKIRT</a>
              <ul>
                <li><a href="#">원피스</a></li>
                <li><a href="#">스커트</a></li>
              </ul>
            </li>
          </ul>

        </div>

      </header>

      <main>
        <div class="slider">
          <ul>
            <li><a href="#"><img class="active" src="./img/slider1.jpg"  alt="슬라이더1"></a></li>
            <li><a href="#"><img src="./img/slider2.jpg"  alt="슬라이더1"></a></li>
            <li><a href="#"><img src="./img/slider3.jpg"  alt="슬라이더1"></a></li>
          </ul>
        </div>
        <div class="under">
            <div id="wrapper">
          <div><a href="#"><img src="./img/newitem.jpg"  alt="new"></a></div>
          <div><a href="#"><img src="./img/spring.jpg"  alt="spring"></a></div>
          <div><a href="#"><img src="./img/size.jpg"  alt="size"></a></div>
        </div>
      </div>
      </main>

     <footer>

          <div class="customer">
            <div id="wrapper">

            <div> CUSTOMER CENTER
              <p><img src="./img/phone.png" alt="call">1644-4370</p>
              <p>MON - FRI 10AM - 4PM<br/>
              LUNCH 12PM-1PM</br>
              SAT, SUN, HOLIDAY OFF</p>
          </div>


            <div> INFO

              <p><a href="#">공지사항</a></br>
              <a href="#">개인정보처리방침</a></br>
              <a href="#">사업자정보확인</a>
            </p>
            </div>


            <div> STORE GUIDE
              <ul>
                <li><a href="./notice"><img src="./img/notice.png" alt="로고"><span>공지사항</span></a></li>
                <li><a href="./notice"><img src="./img/center.png" alt="로고"><span>고객센터</span></a></li>
                <li><a href="./notice"><img src="./img/refund.png" alt="로고"><span>교환/반품</span></a></li>
                <li><a href="./notice"><img src="./img/review.png" alt="로고"><span>상품리뷰</span></a></li>
            </ul>
            </div>


  <div> CONTENTS
    <P>상호. (주)클릭앤퍼니 | 대표. 김예중 | 이메일. HELP@CLICKNFUNNY.COM</br>
    전화. 1644-4370 | 주소. 서울특별시 성북구 성북로 49 운석빌딩 4층</br>
    사업자등록번호. 209-81-43420 (사업자정보확인)</br>
    통신판매업신고. 2007-서울성북-0073 | 개인정보보호책임자. 박수미</br>

    © CLICKNFUNNY. ALL RIGHT RESERVED. HOSTING BY MAKESHOP. DESIGNED BY DESIGNWIB<p>
</div>
</div>
</div>

      </footer>

  </body>

</html>
