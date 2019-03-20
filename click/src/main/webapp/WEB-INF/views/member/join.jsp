<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_head.jsp" %>

        <main>
          <div id="wrapper">
            <h2 class="join-tit">JOIN</h2>
            <div class="join-form">
              <div class="cupon">
                <img src="../img/join_banner02.jpg" alt="쿠폰">
              </div>
              <div class="pp">
                <p>클릭앤퍼니는 고객님의 소중한 개인정보를 보호하기 위해, 주민등록번호를 수집하지 않습니다.</p>
              <div id="member">
                          <section class="register">
                              <form action="#" method="POST">
                                  <section>
                                      <table>
                                          <caption>사이트 이용정보 입력</caption>
                                            <tr>
                                                <td>아이디</td>
                                                <td>
                                                    <input type="text" name="uid" placeholder="아이디를 입력" required />
                                                    <span class="resultId"></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>비밀번호</td>
                                                <td><input type="password" name="pass" placeholder="비밀번호를 입력" required /></td>
                                            </tr>
                                            <tr>
                                                <td>비밀번호확인</td>
                                                <td><input type="password" name="pw2" placeholder="비밀번호를 확인" required /></td>
                                            </tr>
                                        </table>
                                    </section>
                                    <section>
                                        <table>
                                            <caption>개인정보 입력</caption>
                                            <tr>
                                                <td>이름</td>
                                                <td><input type="text" name="name" placeholder="이름을 입력" required /></td>
                                            </tr>
                                            <tr>
                                                <td>별명</td>
                                                <td>
                                                    <span class="info">공백없이 한글, 영문, 숫자만 입력가능</span>
                                                    <div>
                                                        <input type="text" name="nick" placeholder="별명을 입력" required />
                                                    </div>
                                                    <span class="resultNick"></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>EMAIL</td>
                                                <td><input type="email" name="email" placeholder="이메일을 입력"     required /></td>
                                            </tr>
                                            <tr>
                                                <td>휴대폰</td>
                                                <td><input type="text" name="hp" placeholder="-포함 13자리를 입력" maxlength="13" required /></td>
                                            </tr>
                                            <tr>
                                                <td>주소</td>
                                                <td>
                                                    <div>
                                                        <input type="text" name="zip" id="zip" placeholder="우편번호" readonly />
                                                        <button type="button" class="btnFind">주소검색</button>
                                                    </div>
                                                    <div>
                                                        <input type="text" name="addr1" id="addr1" size="50" placeholder="주소를 검색하세요." readonly />
                                                    </div>
                                                    <div>
                                                        <input type="text" name="addr2" id="addr2" size="50" placeholder="상세주소를 입력하세요." />
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>

                                    </section>
                                     <div>
                                        <a href="#" class="cancel">취소</a>
                                        <input type="submit" class="join" value="회원가입" />
                                    </div>
                               </form>
                          </section>
                        </div>

              </div>

                <div class="admit1">
                  <p><label><input type="checkbox" value="Y">14세 이상입니다. (필수)</label></p>
                  <span>* 회원가입에 필요한 최소한의 정보만 입력 받음으로써 고객님의 개인정보 수집을 최소화하고 편리한 회원가입을 제공합니다.</span>
                </div>
                <div class="admit-wrap">
                <div class="admit2">
                  <div>
                    <p><label><input type="checkbox" >전체 동의</label></p>
                  </div>
                  <div>
                      <div class="term1">
                        <ul>
                          <li class="ml-30 pt-10"><label><input name="yaok2" class="input-cbox every_agree" id="yaok2" type="checkbox" value="Y"> 이용약관</label> <a href="#chk_cont1">내용보기</a></li>
                            <li class="ml-30 pt-10"><label><input name="privacy1" class="input-cbox every_agree" id="privacy1" type="checkbox" value="agree_uidB"> 개인정보 수집 및 이용 안내</label> <a href="#chk_cont2">내용보기</a></li>
                            <li class="ml-30 pt-10"><label><input name="3ja" class="input-cbox every_agree" id="3ja" type="checkbox" value="#">개인정보 제3자 제공</label><a href="#chk_cont2">내용보기</a></li>
                                                  <li class="ml-30 pt-10"><label><input name="3ja" class="input-cbox every_agree" id="3ja" type="checkbox" value="#">개인정보 처리위탁</label><a href="#chk_cont2">내용보기</a></li>
                        </ul>
                      </div>
                      <div class="term2">
                          <label><input type="checkbox"><strong>마케팅 수신동의</strong></label>
                          &nbsp;       (
                          <label><input type="checkbox">이메일</label>
                          &nbsp;&nbsp;&nbsp;
                          <label><input type="checkbox">SMS</label>
                          &nbsp;&nbsp;&nbsp;
                          <label><input type="checkbox">앱Push알림</label>
                          )<br/>
                          쇼핑몰에서 제공하는 신상품 소식/ 할인쿠폰을 무상으로 보내드립니다!<br/>
                          단, 상품 구매 정보는 수신동의 여부 관계없이 발송됩니다.<br/>
                          제공 동의를 하지 않으셔도 서비스 이용에는 문제가 없습니다.<br/>
                      </div>
                  </div>
                </div>


              </div>
              <div class="admit3">
               <a href="#"><span>동의하고 가입하기</span></a>

              </div>
              <div class="terms">
                <h3>이용약관</h3>
                <textarea>ddddd</textarea>
              </div>
              <div class="pd1">

              </div>
              <div class="pd2">

              </div>
            </div>
          </div>

        </main>
<%@ include file="../_footer.jsp" %>
