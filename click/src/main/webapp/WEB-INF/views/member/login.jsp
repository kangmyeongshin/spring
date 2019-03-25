<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_head.jsp" %>

        <main>
          <div id="wrapper">
            <h2 class="login-tit">LOGIN</h2>
              <div class="login-container">
                <div class="login-wrap">
                  <div class="login-box">
                      <h3 class="login-sub-tit">로그인</h3>
                      <form action="/click/member/login" method="post" name="form1" autocomplete="off">
                  					<input type="hidden" name="page" value="${page}" />
                  					<div class="clear">
                  						<div class="login-left fright">
                  							<div class="input-box">
                  								<p class="login-id"><input type="text" name="uid" maxlength="20"  class="MS_login_id" placeholder="아이디" ></p>
                  								<p class="login-pw"><input type="password" name="pass" maxlength="20" class="MS_login_pw" placeholder="비밀번호" ></p>
                  							</div>
                  							<div class="security">
                  								<label><input type="checkbox" name="save_id" id="chk_save_id" value="on"> 아이디 저장</label>
                  								<label><img src="../img/scre-icon.png" alt=""> 보안접속</label>
                  							</div>
                  						</div>

                  						<div class="login-right fright">
                  							<div class="login-btn">
                  								<!-- <a href="#" id="submitBtn">로그인</a>
                  								 -->
                  								<input type="submit" class="btnLogin" value="로그인" />
                  							</div>
                  							<div class="find-wrap">
                    							<div class="find_wrap"><a class="box_bot_text" href="/shop/lostpass.html">아이디/비밀번호찾기</a></div>
                						    </div>
                					     </div>
                				      </div>
				                </form>
                     </div>

                  <div class="login-bottom">
                    <div class="login-around">

                      <div class="bottom-left">
                        <div class="text">
                          아직 클릭앤퍼니 회원이 아니신가요?<br/>
                          지금 신규가입하고 [ 3,000원 할인 + 무료배송 ] 받기
                        </div>
                        <div>
                        <button type="button" class="but" onclick="location.href='./join.html'">회원가입</button>
                      </div>
                      </div>
                      <div class="bottom-right">
                        <div class="text">비회원 주문/배송 조회가 필요하신가요?</div>
                        <div>
                          <button type="button" class="but" onclick="#">비회원 주문조회</button>
                        </div>
                      </div>
                    </div>


                  </div>

                </div>
              </div>
          </div>
        </div>

        </main>
      <%@ include file="../_footer.jsp" %>