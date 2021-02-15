<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 펼쳤을때 메뉴 -->
<div class="nav-box w15 open bg-base">
	<div class="nav bg-primary f6 p-t17" style="height: 100vh;">
		<div class="user-info p-l15">
			<div class="flex">
				<img src="${pageContext.request.contextPath}/images/admin_pofile.jpg" alt=""
					style="width: 30px; height: 30px; border-radius: 50%;">
				<!-- 사진 높이 맞추기 -->
				<div class="info-head p-l15" style="cursor: pointer;">
					<span class="font14"><strong>${sessionScope.mName}</strong></span><i
						class="fas fa-angle-down p-l10 font12"></i>
					<p class="font10">${sessionScope.mPosition}</p>
				</div>
			</div>
			<div class="info-content none" style="width: 135px; border: 1px solid #eee;">
				<div class="admin-info blk p15 pointer" style="border-bottom: 1px solid #eee;">
					<i class="far fa-user p-r5"></i>My Profile
				</div>
				<div class="logout blk pointer p15" onClick="logout();">
					<i class="fas fa-power-off p-r5"></i>logout
				</div>
			</div>
		</div>
		<div class="dropdown-head flex">
			<i class="fab fa-flipboard" class="font14" style="line-height: 23px;"></i>
			<p class="m-l10"><a href="${pageContext.request.contextPath}/admin" class="f6">대시보드</a></p>
		</div>
		<div class="dropdown-content"></div>
		<div class="dropdown-head flex flex-justify">
			<div class="flex">
				<i class="far fa-chart-bar" style="line-height: 23px;"></i>
				<p class="m-l10">분석</p>
			</div>
			<i class="fas fa-angle-down"></i>
		</div>
		<div class="dropdown-content">
			<!-- hover 해결하기 -->
			<a href="#">이용자 현황</a> <a href="#">선호 장르</a> <a href="#">영화 순위</a>
		</div>
		<div class="dropdown-head flex flex-justify">
			<div class="flex">
				<i class="fas fa-user" style="line-height: 23px;"></i>
				<p class="m-l10">회원관리</p>
			</div>
			<i class="fas fa-angle-down"></i>
		</div>
		<div class="dropdown-content">
			<a href="${pageContext.request.contextPath}/member">회원 목록</a>
		</div>
		<div class="dropdown-head flex flex-justify">
			<div class="flex">
				<i class="fas fa-video" style="line-height: 23px;"></i>
				<p class="m-l10">영화관리</p>
			</div>
			<i class="fas fa-angle-down"></i>
		</div>
		<div class="dropdown-content">
			<a href="${pageContext.request.contextPath}/movielist">영화 목록</a>
		</div>
		<div class="dropdown-head flex flex-justify">
			<div class="flex">
				<i class="fas fa-clipboard" style="line-height: 23px;"></i>
				<p class="m-l10">게시판관리</p>
			</div>
			<i class="fas fa-angle-down"></i>
		</div>
		<div class="dropdown-content">
			<div>
				<a href="${pageContext.request.contextPath}/board">게시판 목록</a>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/admin/board/yf_admin_board">게시판 생성</a>
			</div>
		</div>
		<div class="dropdown-head flex">
			<a href="${pageContext.request.contextPath}/calendar">
				<i class="fas fa-calendar-alt m-r10 f6" style="line-height: 23px;"></i>
				<span class="f6">캘린더</span>
			</a>
		</div>
		<div class="dropdown-content"></div>
		<div class="dropdown-head flex">
			<i class="fas fa-question-circle" style="line-height: 23px;"></i> <a
				href="${pageContext.request.contextPath}/qna" class="m-l10 f6" target="_blank">문의답변</a>
		</div>
		<div class="dropdown-content"></div>
		<div class="dropdown-head flex">
			<i class="fas fa-cog" style="line-height: 23px;"></i>
			<p class="m-l10">설정</p>
		</div>
	</div>
</div>
<!-- 접었을때 메뉴 -->
<div class="nav collapsed none bg-primary f6 font14 notokr"
	style="height: 100vh;">

	<div class="nav-content-wrap flex">
		<div class="collapsed-head center w100 p15">
			<i class="fas fa-home"></i>
		</div>
		<div class="collapsed-content none p15">
			<span>대시보드</span>
		</div>
	</div>
	<div class="nav-content-wrap flex">
		<div class="collapsed-head center w100 p15">
			<i class="far fa-chart-bar"></i>
		</div>
		<div class="collapsed-content none">
			<div class=" p15">
				<a href="${pageContext.request.contextPath}/#">이용자 현황</a>
			</div>
			<div class=" p15">
				<a href="${pageContext.request.contextPath}/#">선호 장르</a>
			</div>
			<div class=" p15">
				<a href="${pageContext.request.contextPath}/#">영화 순위</a>
			</div>
		</div>
	</div>
	<div class="nav-content-wrap flex">
		<div class="collapsed-head center w100 p15">
			<i class="fas fa-user"></i>
		</div>
		<div class="collapsed-content none p15">
			<div>
				<a href="${pageContext.request.contextPath}/member">회원 목록</a>
			</div>
		</div>
	</div>
	<div class="nav-content-wrap flex">
		<div class="collapsed-head center w100 p15">
			<i class="fas fa-video"></i>
		</div>
		<div class="collapsed-content none p15">
			<div>
				<a href="${pageContext.request.contextPath}/movielist">영화 목록</a>
			</div>
		</div>
	</div>
	<div class="nav-content-wrap flex">
		<div class="collapsed-head center w100 p15">
			<i class="fas fa-clipboard"></i>
		</div>
		<div class="collapsed-content none">
			<div class=" p15">
				<a href="${pageContext.request.contextPath}/#">게시판 목록</a>
			</div>
			<div class=" p15">
				<a href="${pageContext.request.contextPath}/#">게시판 생성</a>
			</div>
		</div>
	</div>
	<div class="nav-content-wrap flex">
		<div class="collapsed-head center w100 p15">
			<a href="${pageContext.request.contextPath}/calendar" class="f6"><i class="fas fa-calendar-alt"></i></a>
		</div>
		<div class="collapsed-content none p15">
			<span>
				<a href="${pageContext.request.contextPath}/calendar" class="f6">캘린더</a>
			</span>
		</div>
	</div>
	<div class="nav-content-wrap flex">
		<div class="collapsed-head center w100 p15">
			<i class="fas fa-question-circle"></i>
		</div>
		<div class="collapsed-content none p15">
			<a href="${pageContext.request.contextPath}/qna" class="m-l10" target="_blank">문의답변</a>
		</div>
	</div>
	<div class="nav-content-wrap flex">
		<div class="collapsed-head center w100 p15">
			<i class="fas fa-cog"></i>
		</div>
		<div class="collapsed-content none p15">
			<span>설정</span>
		</div>
	</div>
	<a href="${pageContext.request.contextPath}/logo_login.html"><i class="signout fas fa-sign-out-alt"></i></a>
</div>