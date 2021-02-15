<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include
	file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_HEADER.jsp"%>
<style>
.main-head-wrap {
	background-color: rgba(0, 0, 0, 1);
	height: 45px;
	position: fixed;
	z-index: 9999999999999;
	width: 100%;
}

.movies {
	padding: 0 60px;
}

.btn-complete {
	width: 50px;
	height: 25px;
	font-size: 12px;
	border-radius: 50px;
	background-color: #F9267F;
	color: #fff;
	position: absolute;
	top: 20px;
	right: 80px;
	z-index: 999999999999;
	cursor: pointer;
}

.view-wrapper {
	background-color: rgba(0, 0, 0, 0.7);
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0;
	left: 0;
	visibility: visible;
	opacity: 1;
}

.view-wrapper.close {
	visibility: hidden;
	opacity: 0;
	transition: 0.3s;
}

.view-wrapper.open .modal {
	opacity: 1;
}

.modal {
	width: 400px;
	height: 500px;
	position: absolute;
	background-color: transparent;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	opacity: 0;
	border-radius: 5px;
	padding: 20px;
	box-shadow: -60px 0px 100px -90px #000, 60px 0px 100px -90px #000;
}

.movie-wrap {
	position: relative;
}

.movie-info {
	position: absolute;
	padding: 10px;
	bottom: 0px;
	left: 0;
	width: 100%;
	background-color: rgba(0, 0, 0, .8);
	visibility: hidden;
}

.movie-wrap:hover>.movie-info {
	visibility: visible;
}

.rated {
	color: #FBC02D;
}
</style>
</head>
<body>
	<!-- modal layer -->
	<div class="view-wrapper open" style="z-index: 99999999999999999;">
		<!-- 바깥은 화면 전체 크기 -->
		<div class="modal">
			<!-- 실제 모달 크기 -->
			<div class="center f6" style="font-size: 100px;">
				<i class="far fa-star"></i>
			</div>
			<div class="center f6 m-t10 weight700" style="font-size: 20px;">먼저
				10개 이상의 별점이 필요해요!</div>
			<div class="center m-t30">
				<button class="btn-large" id="modal">알겠어요</button>
			</div>
		</div>
	</div>
	<div class="main-head-wrap flex flex-justify">
		<div class="logo m-t10" style="margin-left: 60px;">
			<h2>
				<%@ include file="/WEB-INF/views/yf_user/user_include/USER_LOGO.jsp"%>
			</h2>
			<div class=""></div>
		</div>
		<div class="head-menu flex"></div>
	</div>
	<div class="body-wrap">
		<form id="frm" name="frm" action="">
			<div class="movie-lines f6">
				<div class="movies flex flex-justify" style="margin-bottom: 1.5%;">
					<div class="movie">
						<div class="movie-wrap">
							<div class="movie-poster">
								<span title="인셉션"><img
									src="${pageContext.request.contextPath}/images/poster1.jpg"
									alt="인셉션" title="인셉션"></span>
							</div>
							<div class="movie-info center font12">
								<div class="movie-title weight700">인셉션</div>
								<div class="movie-year m-t5">2010</div>
								<div class="m-t5 font16">
									<span class="star-rating"> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i>
									</span>
								</div>
								<div class="m-t5">
									<a href="#" class="f6"><i class="fas fa-plus m-r4"></i>마이리스트</a>
								</div>
							</div>
						</div>
					</div>
					<div class="movie">
						<div class="movie-wrap">
							<div class="movie-poster">
								<span title="라라랜드"><img src="${pageContext.request.contextPath}/images/poster2.jpg"
									alt="라라랜드" title="라라랜드"></span>
							</div>
							<div class="movie-info center font12">
								<div class="movie-title weight700">라라랜드</div>
								<div class="movie-year m-t5">2016</div>
								<div class="m-t5 font16">
									<span class="star-rating"> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i>
									</span>
								</div>
								<div class="m-t5">
									<a href="#" class="f6"><i class="fas fa-plus m-r4"></i>마이리스트</a>
								</div>
							</div>
						</div>
					</div>
					<div class="movie">
						<div class="movie-wrap">
							<div class="movie-poster">
								<span title="미드나잇 인 파리"><img src="${pageContext.request.contextPath}/images/poster3.jpg"
									alt="미드나잇 인 파리" title="미드나잇 인 파리"></span>
							</div>
							<div class="movie-info center font12">
								<div class="movie-title weight700">미드나잇 인 파리</div>
								<div class="movie-year m-t5">2012</div>
								<div class="m-t5 font16">
									<span class="star-rating"> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i>
									</span>
								</div>
								<div class="m-t5">
									<a href="#" class="f6"><i class="fas fa-plus m-r4"></i>마이리스트</a>
								</div>
							</div>
						</div>
					</div>
					<div class="movie">
						<div class="movie-wrap">
							<div class="movie-poster">
								<span title="캐롤"><img src="${pageContext.request.contextPath}/images/poster4.jpg" alt="캐롤"
									title="캐롤"></span>
							</div>
							<div class="movie-info center font12">
								<div class="movie-title weight700">캐롤</div>
								<div class="movie-year m-t5">2016</div>
								<div class="m-t5 font16">
									<span class="star-rating"> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i>
									</span>
								</div>
								<div class="m-t5">
									<a href="#" class="f6"><i class="fas fa-plus m-r4"></i>마이리스트</a>
								</div>
							</div>
						</div>
					</div>
					<div class="movie">
						<div class="movie-wrap">
							<div class="movie-poster">
								<span title="플립"><img src="${pageContext.request.contextPath}/images/poster5.jpg" alt="플립"
									title="플립"></span>
							</div>
							<div class="movie-info center font12">
								<div class="movie-title weight700">플립</div>
								<div class="movie-year m-t5">2017</div>
								<div class="m-t5 font16">
									<span class="star-rating"> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i>
									</span>
								</div>
								<div class="m-t5">
									<a href="#" class="f6"><i class="fas fa-plus m-r4"></i>마이리스트</a>
								</div>
							</div>
						</div>
					</div>
					<div class="movie">
						<div class="movie-wrap">
							<div class="movie-poster">
								<span title="그녀"><img src="${pageContext.request.contextPath}/images/poster6.jpg" alt="그녀"
									title="그녀"></span>
							</div>
							<div class="movie-info center font12">
								<div class="movie-title weight700">그녀</div>
								<div class="movie-year m-t5">2014</div>
								<div class="m-t5 font16">
									<span class="star-rating"> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i>
									</span>
								</div>
								<div class="m-t5">
									<a href="#" class="f6"><i class="fas fa-plus m-r4"></i>마이리스트</a>
								</div>
							</div>
						</div>
					</div>
					<div class="movie">
						<div class="movie-wrap">
							<div class="movie-poster">
								<span title="뷰티 인사이드"><img src="${pageContext.request.contextPath}/images/poster7.jpg"
									alt="뷰티 인사이드" title="뷰티 인사이드"></span>
							</div>
							<div class="movie-info center font12">
								<div class="movie-title weight700">뷰티 인사이드</div>
								<div class="movie-year m-t5">2015</div>
								<div class="m-t5 font16">
									<span class="star-rating"> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i>
									</span>
								</div>
								<div class="m-t5">
									<a href="#" class="f6"><i class="fas fa-plus m-r4"></i>마이리스트</a>
								</div>
							</div>
						</div>
					</div>
					<div class="movie">
						<div class="movie-wrap">
							<div class="movie-poster">
								<span title="콜 미 바이 유어 네임"><img src="${pageContext.request.contextPath}/images/poster8.jpg"
									alt="콜 미 바이 유어 네임" title="콜 미 바이 유어 네임"></span>
							</div>
							<div class="movie-info center font12">
								<div class="movie-title weight700">콜 미 바이 유어 네임</div>
								<div class="movie-year m-t5">2018</div>
								<div class="m-t5 font16">
									<span class="star-rating"> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i>
									</span>
								</div>
								<div class="m-t5">
									<a href="#" class="f6"><i class="fas fa-plus m-r4"></i>마이리스트</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<button type="submit" class="btn-complete">완성</button>
		</form>
	</div>
	<span class="up">Top</span>
	<div class="footer center">
		<div class="copyright">&copy; copyright</div>
	</div>
</body>
<script>
	$(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 700) {
				$(".up").fadeIn("500");
			} else {
				$(".up").fadeOut("500");
			}

		});
	});

	$(function() {
		$(".up").click(function() {
			/* html, body, document 화면 */
			$("html, body").animate({
				scrollTop : 0
			}, 300);
		});
	});

	$(function() {
		$("#modal").click(function() {
			$(".view-wrapper").toggleClass("close");
		});
	});

	$(".star-rating i").click(function() {
		//alert("클릭");
		$(this).parent().children("i").removeClass("rated");
		$(this).addClass("rated").prevAll("i").addClass("rated");
	});
</script>
<script>
	$(function(){
		var check_num = /[0-9]/;  
		var check_eng = /[a-zA-Z]/; 
		var check_spc = /[~!@#$%^&*()_+|<>?:{}]/;
		var check_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

		for 

	});
</script>
<script src="js/common.js"></script>
</html>