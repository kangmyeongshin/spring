<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>클릭앤퍼니</title>
    <link rel="stylesheet" href="/click/css/style.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../js/hover.js"></script>
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
            <a href="../"><img src="/click/img/logo.png" alt="로고"></a>
          </div>
          <div>
              <ul>
                  <li>
                  	<c:if test="${member == null}">
                  		<a href="/click/member/login">LOGIN</a>
                 	</c:if>
                 	<c:if test="${member != null}">
                 		<a href="/click/member/logout">LOGOUT</a>
                 	</c:if>
                 </li>
                  <li><a class ="login_btn" href="/click/member/join">JOIN</a></li>
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
                  <a href="/click/member/faq">CS CENTER</a>
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
            <li><a href="/click/cate/new">NEW</a></li>
            <li><a href="/click/cate/outer">OUTER</a>
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