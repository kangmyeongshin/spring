<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_head.jsp" %>
<script src="/click/resources/js/idCheck.js"></script>
<script src="/click/resources/js/pwCheck.js"></script>


<main>
   <div id="wrapper">
     <h2 class="join-tit">MODIFY</h2>
     <div class="join-form">
       <div id="member">
		<section class="register">
		    <form action="#" method="POST">
		        <section>
		            <table>
		                <caption>사이트 이용정보 수정</caption>
		                  <tr>
		                      <td>아이디</td>
		                      <td>
		                          <span>
		                          <input type="hidden" name="uid" value="${member.uid}"/>
		                          ${member.uid}
		                          </span>
		                      </td>
		                  </tr>
		                  <tr>
		                      <td>비밀번호 변경</td>
		                      <td><input type="password" name="pass" id="pass" placeholder="비밀번호를 입력" required />
		                      	<p class="alert alert-success" id="alert-success">비밀번호가 일치합니다</p>
		                      	<p class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</p>
		                      </td>
		                  </tr>
		                  <tr>
		                      <td>비밀번호확인</td>
		                      <td><input type="password" name="pw2" id="pw2" placeholder="비밀번호를 확인" required /></td>
		                  </tr>
		              </table>
		          </section>
		          <section>
		              <table>
		                  <caption>개인정보 수정</caption>
		                  <tr>
		                      <td>이름</td>
		                      <td>${member.name} </td>
		                  </tr>
		                  <tr>
		                      <td>별명</td>
		                      <td>
		                          <span class="info">공백없이 한글, 영문, 숫자만 입력가능</span>
		                          <div>
		                              <input type="text" name="nick" value="${member.nick }" required />
		                          </div>
		                          <span class="resultNick"></span>
		                      </td>
		                  </tr>
		                  <tr>
		                      <td>EMAIL</td>
		                      <td><input type="email" name="email" value="${member.email }"     required /></td>
		                  </tr>
		                  <tr>
		                      <td>휴대폰</td>
		                      <td><input type="text" name="hp" value="${member.hp }" maxlength="13" required /></td>
		                  </tr>
		                  <tr>
		                      <td>주소</td>
		                      <td>
		                          <div>
		                              <input type="text" name="zip" id="zip" value="${member.addr1}" readonly />
		                              
		                              <button type="button" class="btnFind">주소</button>
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
                       <input type="submit" id="submit" disabled="disabled" value="회원정보수정" />
                  </div>
              </form>
            </section>
        </div>
   </div>

        

       

 </main>
<%@ include file="../_footer.jsp" %>
