<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body style="position: fixed; overflow: hidden;">
    <div class="page-wrap">
        <div class="bg">
            <img src="${pageContext.request.contextPath}/images/login-bg.jpg" alt="">
        </div>
        <div class="overlay">
            <div class="head m-t10 m-l30">
            	<div class="logo">
            		<%@ include file="/WEB-INF/views/include/LOGO.jsp"%>
            	</div>
        	</div>
            <div class="main border2">
                <div class="login-sign m-b20">
                    <h2 class="f6">로그인</h2>
                </div>
                <div class="login-wrap">
                    <form id="frm" method="post" action="${pageContext.request.contextPath}/yf_user_login">
                    	<c:if test="${msg eq 'failure'}">
                    		<div class="loginInfoWrong p-lr10 p-tb5 m-b10 bg-orange border4 f6 font12">
								<p>죄송합니다. 이 이메일 주소를 사용하는 계정을 찾을 수 없습니다. 다시 시도하시거나 <a href="${pageContext.request.contextPath}/yf_user_registration"><u>새로운 계정을 등록</u></a>하세요.</p>
                        	</div>	
                        </c:if>
                        <div class="login-input m-b20">
                            <div class="emaipasswdlForm p-lr10 p-tb5 border4 bg-darkgray">
                                <p class="placeholder font10 blur">이메일 주소</p>
                                <input type="text" class="w100 m-tb3 bg-darkgray f6" id="mEmail" name="mEmail" placeholder="ex@example.com" autofocus tabindex="1" style="border: 1px solid #404040;" autocomplete="off"/>
                            </div>
                            <div class="emailWrong font12 warning m-b10 none">정확한 이메일 주소를 입력하세요.</div>
                            <div class="emailpasswdForm p-lr10 p-tb5 border4 m-t10 bg-darkgray">
                                <p class="placeholder font10 blur">비밀번호</p>
                                <input type="password" class="w100 m-tb3 bg-darkgray f6" id="mPassword" name="mPassword" placeholder="8자 이상 30자 이하" tabindex="2" style="border: 1px solid #404040;"/>
                            </div>
                            <div id="passwdWrong" class="font12 warning m-b10 none">비밀번호는 8-30자 사이여야 합니다.</div>
                        </div>
                        <div class="btn">
                            <button type="submit"class="bg-noti f6 font12 border4 p-tb10" style="display:block; width: 100%;">로그인</button>
                        </div>
                        <div class="login-extra flex flex-justify m-t10">
                            <div class="keepLoggedin flex">
                                <input type="checkbox">
                                <p class="font12 weight400 p-l5 littlebright">로그인 정보 저장</p> <!-- 로그인 성공시 저장하기 -->
                            </div>
                            <div class="needHelp">
                                <a href="#" class="font12 weight400 littlebright" style="vertical-align: top;">도움이 필요하신가요?</a>
                            </div>
                        </div>
                        <div class="toRegistration font12 m-t10">
                            <p class="blur">회원이 아니신가요? <a href="${pageContext.request.contextPath}/yf_user_registration">지금 가입하세요.</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="${pageContext.request.contextPath}/js/login.js"></script>
<script>
	function chkEmailValidation() {
		$('#mEmail').blur(function () {
			var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; //이메일 형식 확인식
			var email = $('#mEmail').val();
			
			if (email.match(regExp) != null) {
				$('.emailWrong').addClass('none');
			} else {
				$('.emailWrong').removeClass('none');
			}
		});
	}
</script>
</html>