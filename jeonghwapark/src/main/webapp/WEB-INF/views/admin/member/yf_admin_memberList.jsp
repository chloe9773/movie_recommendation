<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_HEADER.jsp"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_userlist.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/table.css">
<script>
	$(function() {
		$(".modify").click(function() {
			$(".modal-wrapper").toggleClass("open");
		});

		$(".view").click(function() {
			$(".view-wrapper").toggleClass("open");
		});
	});
</script>
<style>
td {
	border: 1px solid #b3b3b3;
}

.modal {
	height: 500px;
	width: 720px;
}
</style>
<body>
	<!-- modal layer -->
	<div class="view-wrapper" style="z-index: 99999999999999999;">
		<!-- 바깥은 화면 전체 크기 -->
		<div class="modal">
			<!-- 실제 모달 크기 -->
			<form id="frm" name="" method="post" action="" enctype="multipart/form-data">
				<div id='viewMid'></div>
				<div class="modal-title">
					<h2 class="noto font16 m-t5">회원 정보</h2>
				</div>
				<div class="modal-body flex">
					<div class="body-left">
						<div class="photo-area">
							<img src="images/photo.jpg" alt="">
						</div>
					</div>
					<div class="body-right">
						<table style="width: 550px;">
							<tr>
								<td class="td-15 center">이메일</td>
								<td colspan="3">
									<div class="p-l5" id="viewEmail"></div>
								</td>
							</tr>
							<tr>
								<td class="center">이름</td>
								<td>
									<div class="p-l5" id="viewName"></div>
								</td>
								<td class="td-15 center" style="background-color: #e8eff8;">사용자명</td>
								<td class="td-30">
									<div class="p-l5" id="viewUserName"></div>
								</td>
							</tr>
							<tr>
								<td class="center">생년월일</td>
								<td class="p-l5" id="">
									<div class="p-l5" id="viewBirthdate"></div>
								</td>
								<td class="center" style="background-color: #e8eff8;">성별</td>
								<td class="">
									<div class="p-l5" id="viewGender"></div>
								</td>
							</tr>
							<tr>
								<td class="center">우편번호</td>
								<td colspan="3" class="p-l5" id="">
									<div id="viewPostcode"></div>
								</td>
							</tr>
							<tr>
								<td class="center">주소</td>
								<td colspan="3" class="p-l5" id="">
									<div id="viewAddress"></div>
								</td>
							</tr>
							<tr>
								<td class="center">상세주소</td>
								<td colspan="3" class="p-l5" id="">
									<div id="viewExtraAddress"></div>
								</td>
							</tr>
							<tr>
								<td class="center">선호장르</td>
								<td colspan="3" style="text-align: left; padding: 5px;">
									<div class="line flex" style="margin-bottom: 0;">
										<div class="element">
											<input type="checkbox" /> <span>드라마</span>
										</div>
										<div class="element">
											<input type="checkbox" checked /> <span>판타지</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>서부</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>공포</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>로맨스</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>블랙코미디</span>
										</div>
									</div>
									<div class="line flex">
										<div class="element">
											<input type="checkbox" checked /> <span>느와르</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>컬트</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>전쟁</span>
										</div>
										<div class="element">
											<input type="checkbox" checked /> <span>코미디</span>
										</div>
										<div class="element">
											<input type="checkbox" checked /> <span>가족</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>애니메션</span>
										</div>
									</div>
									<div class="line flex">
										<div class="element">
											<input type="checkbox" /> <span>에로</span>
										</div>
										<div class="element">
											<input type="checkbox" checked /> <span>범죄</span>
										</div>
										<div class="element">
											<input type="checkbox" checked /> <span>뮤지컬</span>
										</div>
										<div class="element">
											<input type="checkbox" checked /> <span>모험</span>
										</div>
										<div class="element">
											<input type="checkbox" checked /> <span>액션</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>다큐멘터리</span>
										</div>
									</div>
									<div class="line flex">
										<div class="element">
											<input type="checkbox" checked /> <span>SF</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>서사</span>
										</div>
										<div class="element">
											<input type="checkbox" checked /> <span>스릴러</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>실험</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>영화카툰</span>
										</div>
										<div class="element">
											<input type="checkbox" checked /> <span>영화음악</span>
										</div>
									</div>
									<div class="line flex">
										<div class="element">
											<input type="checkbox" /> <span>서스펜스</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>무협</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>미스터리</span>
										</div>
										<div class="element">
											<input type="checkbox" /> <span>영화패러디</span>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="modal-bottom center m-t10">
					<button type="button" class="btn-on" id="modifyBtn">수정</button>
					<button class="btn-off view btn-close">취소</button>
				</div>
			</form>
		</div>
	</div>
	<div class="header flex f6">
		<!-- 로고 -->
		<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_LOGO.jsp"%>
		<div class="top-head w85 bg-base">
			<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_TOP.jsp"%>
		</div>
	</div>
	<div class="body flex">
		<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_MENU.jsp"%>
		<div class="main w85 bg-base">
			<div class="main-head bg-white m10 p10">
				<span class="weight700 font16">회원 / 회원목록</span>
			</div>
			<div class="main-body bg-white m10 p10">
				<div class="search-wrap flex flex-justify m-b5">
					<div class="">
	                    <span class="btn-normal m-b5" style="height: 30px; background-color: #3700b3;">전체회원수 : ${count}명 (${curPage} of ${totalPage}pages)</span>
	                </div>
					<div class="flex" style="z-index: 1;">
						<form method="post" action="${pageContext.request.contextPath}/member">
							<select class="" name="searchOpt" style="border: 1px solid #000;">
								<option value="mUserName" id="mUserName">회원아이디</option>
								<option value="mName" id="mName">회원이름</option>
								<option value="username" id="username">아이디+이름</option>
							</select> <input type="text" name="words" required style="margin-left: -2px; height: 30px;" autocomplete="off"/>
							<button type="submit" class="btn-on" style="margin-left: -2px;">회원검색</button>
						</form>
						<div class="m-l2">
							<span class="btn-off">회원등록</span>
						</div>
					</div>
				</div>
				<div class="user-table w100">
					<table class="w100">
						<tr class="center bg-base font14 under f6">
							<td class="td-3"><input type="checkbox" onClick="chkAll();"
								id="chkAll" /></td>
							<td class="td-5">번호</td>
							<td class="td-10">회원이메일</td>
							<td class="td-5">회원이름</td>
							<td class="td-5">생년월일</td>
							<!-- 하루 전으로 입력됨 수정필요-->
							<td class="td-3">성별</td>
							<td class="td-5">우편번호</td>
							<td class="td-15">주소</td>
							<td class="">선호장르</td>
							<td class="td-5">가입일</td>
							<td class="td-5">등급</td>
							<td class="td-7">비고</td>
						</tr>
						<c:if test="${list == null}">
							<tr>
								<td colspan="14">등록된 회원 정보가 없습니다.</td>
							</tr>
						</c:if>
						<c:forEach var="member" items="${list}">
							<tr class="center">
								<td><input type="checkbox" name="chk" class="chk" data-uid="${member.mid}" /></td>
								<td class="td-5">${member.mid}</td>
								<td class="under view"><span class="pointer" onClick="viewMember(${member.mid});">${member.mEmail}</span>
								</td>
								<td>${member.mName}</td>
								<td>${member.mBirthdate}</td>
								<td>${member.mGenderTitle}</td>
								<td>${member.mPostcode}</td>
								<td>${member.mAddress}</td>
								<td>${member.mFavGenre}</td>
								<td>${member.mRegdate}</td>
								<td>${member.mPosition}</td>
								<td>
									<button class="s-btn-on modify">수정</button>
									<button class="s-btn-off">삭제</button>
								</td>
							</tr>
						</c:forEach>
					</table>
					<c:if test="${count > 0}">
						<div class="page-grp center m-t10">
							<c:choose>
								<c:when test="${curPage > 1}">
									<span class="page">
										<a href="${pageContext.request.contextPath}/member?curPage=1&searchOpt=${searchOpt}&words=${words}"><i class="fas fa-angle-double-left"></i></a>
									</span>
								</c:when>
								<c:otherwise>
									<span class="page"><i class="fas fa-angle-double-left"></i></span>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${curPage > 1}">
									<span class="page">
										<a href="${pageContext.request.contextPath}/member?curPage=${curPage-1}&searchOpt=${searchOpt}&words=${words}"><i class="fas fa-angle-left"></i></a>
									</span>
								</c:when>
								<c:otherwise>
									<span class="page"><i class="fas fa-angle-left"></i></span>
								</c:otherwise>
							</c:choose>
							<c:forEach begin="${blockBegin}" end="${blockEnd}" var="num">
								<c:if test="${selected != num}">
									<span class="page">
										<a href="${pageContext.request.contextPath}/member?curPage=${num}&searchOpt=${searchOpt}&words=${words}">${num}</a>
									</span>
								</c:if>
								<c:if test="${selected == num}">
									<span class="page page-active"><a href="" class="f6">${num}</a></span>
								</c:if>
							</c:forEach>
							<c:choose>
								<c:when test="${curPage != totalPage }">
									<span class="page"><a href="${pageContext.request.contextPath}/member?curPage=${curPage+1}&searchOpt=${searchOpt}&words=${words}"><i class="fas fa-angle-right"></i></a>
									</span>
								</c:when>
								<c:otherwise>
									<span class="page"> <i class="fas fa-angle-right"></i></span>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${curPage != totalPage }">
									<span class="page">
										<a href="${pageContext.request.contextPath}/member?curPage=${totalPage}&searchOpt=${searchOpt}&words=${words}"><i class="fas fa-angle-double-right"></i></a>
									</span>
								</c:when>
								<c:otherwise>
									<span class="page"><i class="fas fa-angle-double-right"></i></span>
								</c:otherwise>
							</c:choose>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
    $(function() {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    });
</script>
<script>
	$(function(){
		$.ajax({
			type: 'GET',
			url: '/admin/movie/yf_movielist',
			dataType: 'json',
			contentType: 'application/json; charset=utf-8,
		}).done(function(res) {
			alert(JSON.stringify(res)); 
		}).fail(function (error) { 
			alert(JSON.stringify(error));
		});
	});
</script>
<script>
	function viewMember(mid) {
		//alert(mid);
		var formData = {
			mid : mid
		};
		
		$.ajax({
			type : 'POST',
			url : '${pageContext.request.contextPath}/member/yf_member_get',
			data: formData,
			success : function (resData) {
				//alert(resData.mUserName);
				$("#viewMid").replaceWith("<input type='hidden' name='mid' value='" + resData.mid + "' />");
				$("#viewEmail").append(resData.mEmail);
				$("#viewUserName").append(resData.mUserName);
				$("#viewName").append(resData.mName);
				$("#viewGender").append(resData.mGenderTitle);
				$("#viewBirthdate").append(resData.mBirthdate);
				$("#viewPostcode").append(resData.mPostcode);
				$("#viewAddress").append(resData.mAddress);
				$("#viewExtraAddress").append(resData.mExtraAddress);
				$("#modifyBtn").replaceWith("<button type='button' class='btn-on' id='modifyBtn' onClick='modifyMember(" +resData.mid + ");'>수정</button>");
				//$("#viewGenre").append(resData.mEmail);
			},
			error : function() {
				alert("시스템 에러");
			}
		});
	}

	function modifyMember(mid) {
		//alert(mid);
		var formData = {
				mid : mid
			};
		var gender;

		var btnForm = "<button type='submit' class='btn-on'>수정</button>";

		$.ajax({
			type : 'POST',
			url : '${pageContext.request.contextPath}/member/yf_member_get',
			data: formData,
			success : function (resData) {
				var emailForm = "<input type='text' id='mEmail' name='mEmail' class='input-250 m-r2' id='' maxlength='' tabindex='1' value='" + resData.mEmail + "' onChange='verifyEmail();' /><span class='emailValidate p-r5 none' style='line-height: 35px;'>";
				emailForm += "<i class='far fa-check-circle correct p-l5 p-r5 font14'></i>사용할 수 있는 이메일입니다.</span><span class='emailWrong p-r5 none' style='line-height: 35px;'>";
				emailForm += "<i class='far fa-times-circle p-r5 font14 warning'></i>사용할 수 없는 이메일입니다.</span>";

				var nameForm = "<input type='text' class='input-full' id='' maxlength='' tabindex='2' value='" + resData.mName + "''/>";

				var genderForm = "<div class='flex f6 m-b3 w100 font12'><div class='blk' style='width: 20%;'>";
					genderForm += "<input type='radio' name='mGender' value='1' class='m-r2' tabindex='' style='width: 15px;'/>";
					genderForm += "<span style='line-height: 35px;'>남</span></div>";
					genderForm += "<div class='blk' style='width: 20%;'>";
					genderForm += "<input type='radio' name='mGender' value='2' class='m-r2' tabindex='' style='width: 15px;'/>";
					genderForm += "<span style='line-height: 35px;'>여</span></div>";
					genderForm += "<div class='blk'>";
					genderForm += "<input type='radio' name='mGender' value='3' class='m-r2 m-l5' tabindex='' style='width: 15px;'/>";
					genderForm += "<span style='line-height: 35px;'>선택안함</span></div></div>";

				var birthdateForm = "<div class='flex font10 p-tb5 w100'><div class='birthyr m-r4' style='width: 33%;'>";
					birthdateForm += "<select id='mBirthYear' name='mBirthYear' class='blur w100 m-tb3' tabindex='' onChange='dayOfMonth();'></select></div>";
					birthdateForm += "<div class='birthmonth m-r4' style='width: 33%;'><select name='mBirthMonth' id='mBirthMonth' class='blur w100 m-tb3' tabindex='' onChange='dayOfMonth();'></select></div>";
					birthdateForm += "<div class='birthday' style='width:33%;'><select name='mBirthDay' id='mBirthDay' class='blur w100 m-tb3' tabindex=''></select></div></div>";

				var postcodeForm = "<div class='zipCode flex w100'>";
					postcodeForm += "<input type='text' name='mPostcode' id='zipcode' class='m-r4' maxlength='5' style='width: 30%; border: 1px solid #d5d5d5;' tabindex='' value='" + resData.mPostcode + " '/>";
					postcodeForm += "<button type='button' class='p3 border2 font10 weight4' style='width: 15%; border: 1px solid #d5d5d5;' tabindex='' onClick='postcode();'>우편번호</button>";
					postcodeForm += "</div>";

				var addressForm = '<div class="addressForm p-tb5 border4">';
					addressForm += '<input type="text" name="mAddress" class="w100" id="address" maxlength="100" style="border: 1px solid #d5d5d5;" tabindex="11" value="' + resData.mAddress + '"/>';
					addressForm += '</div>';

				var extraAddressForm = '<div class="addressForm p-tb5 border4">';
					extraAddressForm += '<input type="text" name="mExtraAddress" class="w100" id="extraaddress" maxlength="100" style="border: 1px solid #d5d5d5;" tabindex="12" value="' + resData.mExtraAddress + '"/>';
					extraAddressForm += '</div>';

				$("#viewEmail").replaceWith(emailForm);
				$("#viewName").replaceWith(nameForm);
				$("#viewGender").replaceWith(genderForm);
				$("#viewBirthdate").replaceWith(birthdateForm);
				$("#viewPostcode").replaceWith(postcodeForm);
				$("#viewAddress").replaceWith(addressForm);
				$("#viewExtraAddress").replaceWith(extraAddressForm);
				$("#modifyBtn").replaceWith(btnForm);
				
				$("input:radio[name='mGender']:radio[value='" + resData.mGender +"']").prop('checked', true);
				
			},
			error : function() {
				alert("시스템 에러");
			}
		});
		
	}
</script>
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
		//$('#viewBirthdate').append("<option value="+i+">"+i+"</option>");
		//document.getElementById('mBirthYear').options[i] = new Option(yr, yr);
		
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
	            	$('.emailWrong').removeClass('none');
	            	$('.emailValidate').addClass('none');
                	$('#mEmail').val("");
                	$('#mEmail').focus();
                } else {
                	$('.emailWrong').addClass('none');
	            	$('.emailValidate').removeClass('none');
	            }
            },
            error: function () {
	            alert("시스템 오류입니다.");
	        }
        });
	} else {
		$('.emailWrong').removeClass('none');
	}
}
</script>
<script src="${pageContext.request.contextPath}/js/logout.js"></script>
<script src="${pageContext.request.contextPath}/js/admin_common.js"></script>
</html>