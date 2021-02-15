<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="board-left font14">
	<div class="left-head center p-t40">
		<div class="photo">
			<img src="${pageContext.request.contextPath}/images/photo.jpg" alt=""
				class="profile">
		</div>
		<div class="userID m-b15 weight700">${sessionScope.mUserName}</div>
		<div class="left-head-btn-grp p-b20">
			<button class="btn-on">정보수정</button>
			<a href="user_main.html" class="btn-off">로그아웃</a>
		</div>
	</div>
	<div class="my-info p20">
		<div class="my-info-head weight700 p-b20">내 정보</div>
		<div class="my-info-body font12">
			<div class="email">
				<div class="info-head">이메일</div>
				<div>${sessionScope.mEmail}</div>
			</div>
			<hr class="dashed-hr">
			<div class="myarticles">
				<div class="info-head">작성한 게시글 수</div>
				<div>총 ${aCount} 개</div>
			</div>
			<hr class="dashed-hr">
			<div class="regdate">
				<div class="info-head">회원가입일시</div>
				<div>${sessionScope.mRegdate}</div>
			</div>
		</div>
	</div>
	<div class="contact p20 weight700 font12"
		style="border-bottom: 1px solid #eee;">
		<a href="${pageContext.request.contextPath}/yf_user/yf_user_contact"
			class="info-head pointer">1:1 문의</a>
	</div>
	<div class="closing-account p20 weight700 font12"
		style="border-bottom: 1px solid #eee;">
		<a href="${pageContext.request.contextPath}/user_main.html"
			style="color: #ccc;">회원탈퇴</a>
	</div>
	<div class="toRate p20 center">
		<a href="${pageContext.request.contextPath}/user_rate_movie.html"><span
			class="btn-flexible">평가하기</span></a>
	</div>
</div>