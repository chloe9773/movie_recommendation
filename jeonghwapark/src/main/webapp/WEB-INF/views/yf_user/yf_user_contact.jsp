<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_HEADER.jsp"%>
<style>
        .board-left {
            width: 15%;
            height: 600px;
            background-color:#fff;
            box-shadow: 3px 3px 3px 3px rgba(0,0,0, .5); 
            box-shadow: -3px 3px 3px -3px rgba(0,0,0, .5);
        }

        .board-right {
            width: 80%;
        }

        .left-head {
            border-bottom: 1px solid #eee ;
        }

        .my-info {
            border-bottom: 1px solid #eee;
        }

        .info-head {
            color: #8C9EC2;
            font-weight: 700;
            padding-bottom: 5px;
        }

        .profile {
            width: 50px;
            height: 50px;
            border-radius: 50%;
        }

        hr.dashed-hr {
            border: 1px dashed #eee;
            margin: 10px 0;
        }

        .board-article-body tr:not(:first-child)>td {
            border: 1px solid #eee;
        }

        tr:not(:first-child):hover{
            border-left: 1px solid transparent;
            background-color: #fff;
        }
        
        .articleCnt {
        	display: inline-block;
    		width: 18px;
    		height: 18px;
    		border-radius: 50%;
    		background-color: rgb(249, 38, 127);
    		text-align: center;
    		line-height: 18px;
        }
        
        .noQuestion{
        	display: inline-block;
        	padding: 100px;
       	}
       	
</style>
<body>
    <div class="main-head-wrap flex flex-justify">
        <div class="logo m-t10">
            <%@ include file="/WEB-INF/views/yf_user/user_include/USER_LOGO.jsp"%>
        </div>
        <div class="head-menu flex">
            <div class="nav m-t15 m-r30">
                <%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_MENU.jsp"%>
            </div>
            <div class="user-info"> 
                <div class="user-wrap f6 m-t10 m-r90 pointer">
                    <span class="user-name" id="log">${sessionScope.mUserName}</span>
                    <i class="fas fa-caret-down"></i>
                </div>
            </div>
        </div>
    </div>
    <div class="info-content-initial none">
        <%@ include file="/WEB-INF/views/yf_user/user_include/USER_INIT.jsp"%>
    </div>
    <div class="body-wrap">
        <div class="board-head f6">
            <div class="head-wrap weight700 font18 m-b50 w100">
                <div class="bg">
                    <img src="${pageContext.request.contextPath}/images/login-bg.jpg" alt="" class="w100">
                </div>
                <div class="boardTitle">
                    <span>마이페이지</span>
                </div>
            </div>
        </div>
        <div class="board-body flex flex-justify">
            <div class="board-left font14">
                <div class="left-head center p-t40">
                    <div class="photo">
                        <img src="${pageContext.request.contextPath}/images/photo.jpg" alt="" class="profile">
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
                            <div>총 12 개</div>
                        </div>
                        <hr class="dashed-hr">
                        <div class="regdate">
                            <div class="info-head">회원가입일시</div>
                            <div>${sessionScope.mRegdate}</div>
                        </div>
                    </div>
                </div>
                <div class="contact p20 weight700 font12" style="border-bottom: 1px solid #eee;">
                    <a href="${pageContext.request.contextPath}/yf_user/yf_user_mypage" class="info-head pointer">마이페이지 대시보드</a>
                </div>
                <div class="closing-account p20 weight700 font12" style="border-bottom: 1px solid #eee;">
                    <a href="${pageContext.request.contextPath}/user_main.html" style="color: #ccc;">회원탈퇴</a>
                </div>
                <div class="toRate p20 center">
                    <a href="${pageContext.request.contextPath}/user_rate_movie.html"><span class="btn-flexible">평가하기</span></a>
                </div>
            </div>
            <div class="board-right">
                <div class="board-right-title m-b10 f6">
                	<span>1:1 문의게시판</span>
                	<span class="articleCnt font12">${count}</span>
                	<hr class="f6 m-t20">
                </div>
                <div class="board-right-body">
                	<div class="">
                		<c:if test="${list eq null}">
                			<div class="noQuestion f6 w100 center font14">등록된 문의가 없습니다</div>
                		</c:if>
                		<c:if test="${list ne null}">
                			<c:forEach var="question" items="${list}">
	                			<div class="f6 p-lr15 m-tb20">
	                				<div class="info flex m-b10">
	                					<div class="title under m-r4">${question.qTitle}</div>
	                					<div class="date font12" style="line-height: 22px;">(${question.regdate})</div>
	                				</div>
	                				<div class="content font14 m-b10 p-lr15">${question.qContent}</div>
	                				<div class="modify font10">
	                					<span class="pointer" onClick="location.href='${pageContext.request.contextPath}/yf_user/yf_user_contact_modify?qid=${question.qid}'">수정</span>
	                					<span>/</span>
	                					<span class="pointer" onClick="deleteArticle(${question.qid});">지우기</span>
	                				</div>
	                			</div>
	                			<hr class="">
	                		</c:forEach>
                		</c:if>
                		<div class="m-t20" style="text-align: right;">
                			<a href="${pageContext.request.contextPath}/yf_user/yf_user_contact_write" class="btn-normal font12" style="background-color:rgb(249, 38, 127)">문의 작성</a>
                		</div>
                	</div>
                </div>
            </div>
        </div>
    </div>
    <span class="up">Top</span>
    <div class="footer center">
        <div class="copyright">&copy; copyright</div>
    </div>
</body>
<script>
    $(function(){
	    $(window).scroll(function(){
	        if($(this).scrollTop() > 400) {
	            $(".up").fadeIn("350");
	        } else {
	            $(".up").fadeOut("350");
	        }
	            
	    });
	});

	$(function(){
	    $(".up").click(function(){
	        /* html, body, document 화면 */
	        $("html, body").animate({
	            scrollTop: 0
	        }, 300);
	    });
	});

	function deleteArticle(qid) {
		if(confirm("선택하신 게시물을 삭제하시겠습니까?")) {
			$.ajax({
				url: '${pageContext.request.contextPath}/yf_user/yf_user_contact_delete',
				type: 'POST',
				data: {qid : qid},
				success: function(resData){
					if (resData = "success") {
						alert("게시물이 삭제되었습니다.");
						location.reload();
					}
				},
				error: function() {
					alert("시스템 오류");
				}
			});
		}
	}
</script>
<script src="${pageContext.request.contextPath}/js/logout.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/active.js"></script>
</html>