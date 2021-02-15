<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/user_main.css">
<body style="position: fixed; overflow: hidden;">
	<div class="bg">
		<img src="${pageContext.request.contextPath}/images/login-bg.jpg"
			alt="">
	</div>
	<div class="overlay">
		<div class="head m-t10 m-r30" style="float: right;">
			<a href="${pageContext.request.contextPath}/yf_user_login">
				<span class="toLogin f6 font14">로그인</span>
			</a>
		</div>
		<div class="page-wrap">
			<div class="title-content">
				<div class="sub-title noti">
					<h6>취향저격 영화 찾기 프로젝트!</h6>
				</div>
				<div class="main-title f6 noti weight700 m-b10">
					<p style="font-size: 50px;">YOUNG FLOWER</p>
				</div>
				<div class="sub-title f6 m-b20">
					<h3>식사시간 동안 볼 영화를 고르는데 더 이상 시간 낭비 하지마세요.</h3>
				</div>
			</div>
			<div class="btn-grp center m-t15">
				<a href="${pageContext.request.contextPath}/yf_user_registration">
					<button class="toRegister btn-log bg-noti f6">회원가입</button>
				</a>
			</div>
		</div>
	</div>
</body>
</html>