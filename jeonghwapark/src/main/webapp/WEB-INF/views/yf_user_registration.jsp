<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    $(function () {
        $(".btn").click(function () {
            $(".open").toggle();
            $(".collapsed").toggle();
            $(".top-head").toggleClass('top-head-collapsed');
            $(".main").toggleClass('main-collapsed');
        });

        $(".info-head").click(function(){
            $(".info-content").toggle();
        });

        $(".dropdown-head").click(function () {
            $(this).next().slideToggle(300);
        });
    });
</script>
<body style="position: fixed; overflow: hidden;">
    <div class="page-wrap">
        <div class="bg">
            <img src="images/login-bg.jpg" alt="">
        </div>
        <div class="overlay">
            <div class="head m-t10 m-l30">
            	<div class="logo">
            		<%@ include file="/WEB-INF/views/include/LOGO.jsp"%>
            	</div>
        	</div>
            <div class="main border2">
                <div class="login-sign m-b20">
                    <h2 class="f6">회원가입</h2>
                </div>
                <div class="m-b10">
                	<p class="placeholder font10 blur"><span class="noti m-r2">*</span>는 필수입력 사항입니다.</p>
                </div>
                <div class="login-wrap">
                    <form id="frm" method="post" action="${pageContext.request.contextPath}/yf_user_registration">
                        <div class="login-input m-b20">
                            <div class="emaipasswdlForm p-lr10 p-tb5 border4 m-b10 bg-darkgray">
                                <p class="placeholder font10 blur"><span class="noti m-r2">*</span>이메일 주소</p>
                                <input type="text" class="w100 f6 m-tb3 bg-darkgray" id="mEmail" name="mEmail" placeholder="ex@example.com" maxlength="50" autofocus tabindex="1" required/>
                            </div>
                            <div class="emailWrong font12 warning m-b10 none">정확한 이메일 주소를 입력하세요.</div>
                            <div class="emailDuplicated font12 warning m-b10 none">사용할 수 없는 이메일입니다.</div>
                            <div class="emailpasswdForm p-lr10 p-tb5 border4 m-b10 bg-darkgray">
                                <p class="placeholder font10 blur"><span class="noti m-r2">*</span>비밀번호</p>
                                <input type="password" class="w100 f6 m-tb3 bg-darkgray" id="mPassword" name="mPassword" placeholder="8자 이상 30자 이하" maxlength="30" tabindex="2" required/>
                            </div>
                            <div class="pwdWrong font12 warning m-b10 none">비밀번호는 숫자, 특수문자, 영문을 혼합하여 8-30자 사이여야 합니다.</div>
                            <div class="emailpasswdForm p-lr10 p-tb5 border4 m-b10 bg-darkgray">
                                <p class="placeholder font10 blur"><span class="noti m-r2">*</span>비밀번호 확인</p>
                                <input type="password" class="w100 f6 m-tb3 bg-darkgray" id="pwdChk" name="pwdChk" placeholder="비밀번호를 다시 입력해주세요." placeholder="" tabindex="3" required/>
                            </div>
                            <div class="pwdNotMatch font12 warning m-b10 none">비밀번호가 일치하지않습니다.</div>
                            <div class="emaipasswdlForm p-lr10 p-tb5 border4 m-b10 bg-darkgray">
                                <p class="placeholder font10 blur"><span class="noti m-r2">*</span>이름</p>
                                <input type="text" class="w100 f6 m-tb3 bg-darkgray" id="mName" name="mName" placeholder="2자 이상" maxlength="5" autofocus tabindex="4" required/>
                            </div>
                            <div class="birthdateForm p-lr10 p-tb5 border4 m-b10 bg-darkgray">
                            	<div class="flex flex-justify">
                            		<p class="placeholder font10 blur m-b3"><span class="noti m-r2">*</span>생일</p>
                            		<i class="fas fa-question-circle f6 pointer font10" onClick="forAgeGrp();"></i>
                            	</div>
                                <div class="flex font10 p-tb5 w100">
                                    <div class="birthyr m-r4" style="width: 33%;">
                                        <select id="mBirthYear" name="mBirthYear" class="blur bg-darkgray w100 m-tb3" tabindex="5" onChange="dayOfMonth();"></select>
                                    </div>
                                    <div class="birthmonth m-r4" style="width: 33%;">
                                        <select name="mBirthMonth" id="mBirthMonth" class="blur bg-darkgray w100 m-tb3" tabindex="6" onChange="dayOfMonth();"></select>
                                    </div>
                                    <div class="birthday" style="width:33%;">
                                        <select name="mBirthDay" id="mBirthDay" class="blur bg-darkgray w100 m-tb3" tabindex="7"></select>
                                    </div>
                                </div>
                            </div>
                            <div class="ageInfo font12 m-b10 warning none">
                                    <p>연령대별 추천 서비스를 위해 태어난 연도를 꼭 선택해주세요.</p>
                                </div>
                            <div class="genderForm p-lr10 p-tb5 border4 m-b10 bg-darkgray">
                                <p class="placeholder font10 blur m-b3"><span class="noti m-r2">*</span>성별</p>
                                <div class="flex f6 m-b3 w100 font12">
                                    <div class="blur" style="width: 20%;">
                                        <input type="radio" name="mGender" value="1" class="m-r2" tabindex="8" style="width: 15px;"/>
                                        <span style="line-height: 35px;">남</span>
                                    </div>
                                    <div class="blur" style="width: 20%;">
                                        <input type="radio" name="mGender" value="2" class="m-r2 m-l5" style="width: 15px;"/>
                                        <span style="line-height: 35px;">여</span>
                                    </div>
                                    <div class="blur">
                                        <input type="radio" name="mGender" value="3" class="m-r2 m-l5" style="width: 15px;"/>
                                        <span style="line-height: 35px;">선택안함</span>
                                    </div>
                                </div>
                            </div>
                            <div class="zipcodeForm p-lr10 p-tb5 border4 m-b10 bg-darkgray">
                                <p class="placeholder font10 blur m-b3">우편번호</p>
                                <div class="zipCode flex w100">
                                    <input type="text" name="mPostcode" id="zipcode" class="m-r4 bg-darkgray f6" maxlength="5" style="width: 30%;" tabindex="9" />
                                    <button type="button" class="p3 border2 f6 font10 weight4" style="width: 32%; background-color: rgba(255, 255, 255, 0.2);" tabindex="10" onClick="postcode();">우편번호</button> <!-- 타입 모르겠음-->
                                </div>
                            </div>
                            <div class="addressForm p-lr10 p-tb5 border4 m-b10 bg-darkgray">
                                <p class="placeholder font10 blur">주소</p>
                                <input type="text" name="mAddress" class="w100 f6 m-tb3 bg-darkgray" id="address" maxlength="100" tabindex="11"/>
                            </div>
                            <div class="addressForm p-lr10 p-tb5 border4 m-b10 bg-darkgray">
                                <p class="placeholder font10 blur">상세주소</p>
                                <input type="text" name="mExtraAddress" class="w100 f6 m-tb3 bg-darkgray" id="extraaddress" maxlength="100" tabindex="12"/>
                            </div>
                        </div>
                        <div class="btn">
                            <button type="submit" class=" bg-noti f6 font12 border4 p-tb10" style="display:block; width: 100%;" tabindex="16">계정 생성하기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
	function postcode(){
		daum.postcode.load(function(){
			new daum.Postcode({
				oncomplete: function(data) {
					var addr = '';

					if (data.userSelectedType === 'R') {
						addr = data.roadAddress;
					} else {
						addr = data.jibunAddress;
					}

					document.getElementById('zipcode').value = data.zonecode;
					document.getElementById('address').value = addr;

					document.getElementById('extraaddress').focus();
				}
			}).open();
		});
	}
</script>
<script>
	var startYr = "1900";
	var curYr = new Date().getFullYear();
	var i = 0;

	for (var yr = curYr; yr >= startYr; yr--) {
		document.getElementById('mBirthYear').options[i] = new Option(yr, yr);
		i++;
	}
	
	i = 0;

	for (var mon = 1; mon < 13; mon++) {
		document.getElementById('mBirthMonth').options[i] = new Option(mon, mon);
		i++;
	}

	dayOfMonth();
	
	function dayOfMonth(){
		$('.ageInfo').addClass('none');
		
		var year = document.getElementById('mBirthYear').value;
		var month = document.getElementById('mBirthMonth').value;
		var day= new Date(new Date(year,month,1)-86400000).getDate();
		var dayindex_len=document.getElementById('mBirthDay').length;

		if(day>dayindex_len){ 
			for(var i=(dayindex_len+1); i<=day; i++){ 
				document.getElementById('mBirthDay').options[i-1] = new Option(i, i); 
			} 
		} else if(day<dayindex_len){ 
			for(var i=dayindex_len; i>=day; i--){ 
				document.getElementById('mBirthDay').options[i]=null; 
			} 
		}
	}
</script>
<script>
	function verifyEmail() {
		$('#mEmail').blur(function () {
			//alert("checked");
			//alert($('#mEmail').val(););
			var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; //이메일 형식 확인식
			var email = $('#mEmail').val();
			
			if (email.match(regExp) != null) {
				$.ajax({
		            type: "POST",
		            url: "/portfolio/yf_user_chk",
		            data: {
		                "mEmail": $('#mEmail').val()
		            },
		            success: function (resData) {
		            	if (resData == "failure") {
		    				$('.emailWrong').addClass('none');
			            	$('.emailDuplicated').removeClass('none');
		                	$('#mEmail').val("");
		                	$('#mEmail').focus();
		                } else {
		    				$('.emailWrong').addClass('none');
		                	$('.emailDuplicated').addClass('none');
			            }
		            },
		            error: function () {
			            alert("시스템 오류입니다.");
			        }
		        });
			} else {
				$('.emailWrong').removeClass('none');
			}
		});

	}

	function verifyPwd() {
		$('#mPassword').blur(function(){
			var pwd = $('#mPassword').val();
			var regExp = /(?=.*\d{1,30})(?=.*[~`!@#$%\^&*()-+=]{1,30})(?=.*[a-zA-Z]{1,30}).{8,30}$/; // 비밀번호 유효성 확인식
			//alert(pwd.length);
			if (pwd.length < 8 || pwd.length > 30) {
				$('.pwdWrong').removeClass('none');
			}  else if (pwd.match(regExp) == null) {
				$('.pwdWrong').removeClass('none');
			} else {
				$('.pwdWrong').addClass('none');
			}
		});

		$('#pwdChk').blur(function(){
			var pwd = $('#mPassword').val();
			var pwdchk = $('#pwdChk').val();

			if (pwd != pwdchk) {
				$('.pwdNotMatch').removeClass('none');
			} else {
				$('.pwdNotMatch').addClass('none');
			}
 		});
		
	}

	function forAgeGrp(){
		$('.ageInfo').removeClass('none');
	}
	
	$(function(){
		verifyEmail();
		verifyPwd();
	});
</script>
</html>