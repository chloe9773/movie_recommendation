<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_HEADER.jsp"%>
<style>
</style>
<body>
    <div class="main-head-wrap flex flex-justify">
        <div class="logo m-t10 m-l300">
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
                    <span>커뮤니티</span>
                </div>
            </div>
        </div>
        <input type="hidden" id="boardCode" value="${boardCode}" />
        <div class="board-body"> <!--  f6 m-lr300 -->
            <div class="article">
                <div class="head">
                    <div class="boardName font14 pointer" style="color:#db5284;">
                        <span>${boardTitle}</span>
                        <i class="fas fa-angle-right"></i></div>
                    <div class="artTitle m-t10">
                        <div class="font20 weight700 f6">
                        	<c:if test="${article.division eq 'noti'}">
                        		<span class="category-btn noti weight700" style="vertical-align:middle;">공지</span>
                        	</c:if>	
                        	<span>${article.title}</span>
                        </div>
                    </div>
                    <div class="articleInfo flex flex-justify m-t10">
                        <div class="info flex">
                            <div class="info-left m-r6 center" style="width:35px;height:35px;border-radius:50%;background-color: #cc2769;">
                                <i class="far fa-user f6 font18" style="line-height:35px;"></i>
                            </div>
                            <div class="info-right">
                                <div class="writer pointer font12 f6 weight700">${article.writer}</div>
                                <div class="dateAndHit font12 flex littlebright">
                                    <div class="date m-r6">${article.regdate}</div>
                                    <div class="hit">조회 ${article.hit}</div>
                                </div>
                            </div>
                        </div>
                        <div class="comment font14 f6 m-t10">
                            <i class="far fa-comment-dots"></i>
                            <span class="commt">댓글 <span class="commentCount"></span></span>
                        </div>
                    </div>
                </div>
                <hr class="m-t10" style="border-color:rgba(231,231,231,0.3);">
                <div class="article-body">
                    <div class="content f6 m-t20">${article.content}</div> <!-- 왜 <p>랑 같이 나오지? -->
                    <c:if test="${article.division ne 'noti'}">
	                    <div class="cont-info flex flex-justify m-t20">
	                    	<div class="flex">
		                        <div class="like font14">
		                            <i id="heart" class="far fa-heart pointer heart" onClick="getLike(${article.aid});"></i> <!-- <i class="fas fa-heart"></i> -->
		                            <span class="f6">좋아요 ${article.likeArticle}</span>
		                        </div>
		                        <div class="comment font14 f6 m-l10">
                            		<i class="far fa-comment-dots"></i>
                            		<span class="commt">댓글 <span class="commentCount"></span></span>
                        		</div>
		                    </div>
	                        <div id="hateArticle" class="hate pointer font14 f6">신고</div>
	                    </div>
	                </c:if>
                </div>
                <hr class="m-t10" style="border-color:rgba(231,231,231,0.3);">
                <c:if test="${article.reStep == 0}">
				<div id="InsertComment" class="">
					<div class="">
						<h4 class="f6 m-t20">댓글</h4>
					</div>
					<div class="">
						<div id="commentList"></div>
						<!-- ajax 저당된 댓글 목록을 표시 --> 
						<div class="m-t10 p10 bg-white" style="border:2px solid #e7e7e7;border-radius:3px;">
							<form id="frm">
								<!-- ajax로 자료 "전체" 전송하기(input -> name 사용) 위한 id-->
								<input type="hidden" name="aid" value="${article.aid}" /> 
								<input type="hidden" name="who" value="${sessionScope.mUserName}" />
								<div class="comment-wrap p-b10">
									<div class="user font12 weight700 p-l10">${sessionScope.mUserName}</div>
									<textarea name="comment" id="comment" class="p10 font12 m-r4 w100" placeholder="댓글 내용을 입력하세요." style="border: 1px solid transparent;height:30px;overflow:hidden;overflow-wrap: break-word;" maxlength="200"></textarea>
									<button type="submit" id="btn-cmt" class="littlebright font12 bg-white weight700" style="float:right;">등록</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</c:if>
            </div>
            <div class="btn-grp f6 flex flex-justify m-t10">
                <div class="left-btn flex">
                    <div class="write m-r4 btn-on">
                    	<i class="fas fa-pencil-alt"></i>
                    	<span>글쓰기</span>
                    </div>
                    <div class="reply btn-off">답글</div>
                </div>
                <div class="right-btn flex">
                    <div class="artList m-r4 btn-off">목록</div>
                    <div class="top btn-off">
                        <i class="fas fa-caret-up"></i>
                        <span class="">TOP</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer center">
        <div class="copyright">&copy; copyright</div>
    </div>
</body>
<script>
	function checkCmt() { //value : javascript , val : jquery
		if ($("#comment").val() == '') {
			alert("댓글 내용을 입력하세요.");
			$("#comment").focus();
			return false; // 프로그램이 제대로 완성이 안됐다는 의미
		}
		var formData = $("#frm").serialize(); //form 안의 name 값의 데이터를 전부 가져오기
	
		$.ajax({
			url : "${pageContext.request.contextPath}/comment/yf_comments_register", //${pageContext.request.contextPath} -> 프로젝트명까지
			tyep : "POST",
			data : formData,
			success : function(resData) {
				alert("댓글이 등록 되었습니다.");
				listCmt();
				$("#comment").val(''); //댓글창 초기화
			},
			erorr : function() {
				alert("관리자에게 문의하세요.");
			},
			complete : function() {
			}
		});
				
	}

	function commentModify(cid) {
		$.ajax({
			url : "${pageContext.request.contextPath}/comment/yf_comments_modify", //${pageContext.request.contextPath} -> 프로젝트명까지
			tyep : "POST",
			data : formData,
			success : function(resData) {
				alert(resData);
			},
			erorr : function() {
				alert("관리자에게 문의하세요.");
			},
			complete : function() {
			}
		});
	}

	function commentDelete() {
		alert("삭제");
	}

	function listCmt() {
		var formData = $("#frm").serialize();
	
		$.ajax({
			url : "${pageContext.request.contextPath}/comment/yf_comments_list",
			tyep : "POST",
			data : formData, //내 게시판 코드, 게시물 번호가 필요해서 사용
			success : function(resData) {
				//resData.list -> who(key), 관리자(value)
				var a = '';
				$.each(
						resData.list,
						function(key, value) {//내용을 key, value 출력하는 jquery
							a += '<div class="m-t10 flex">';
							a += '<div class="flex" style="width:99%;position:relative;">';
							a += '<div>';
							a += '<span class="center" style="width:35px;hegith:35px; border-radius:50%; display:inline-block; line-height:35px;background-color:#cc2769;">';
							a += '<i class="far fa-user f6 font16"></i></span></div><div class="m-l10">';
							a += '<div class="noto font12 weight700 f6">';
							a += '<span>' + value.who + '</span>';
							a += '</div>';
							a += '<div class="noto font14 viewCmt f6' + value.cid + '" style="margin-top:5px;">';
							a += '<span class="f6">' + value.comment + '</span>';
							a += '</div>';
							a += '<span class="littlebright font12">' + value.regdate + '</span>';
							a += '<span class="littlebright font12 m-l10" onClick="">답글쓰기</span>';
							a += '</div>';
							a += '</div>';
							a += '<div style="width:1%;">';
							a += '<i class="fas fa-ellipsis-v f6 pointer" id="commentMod"></i>';
							a += '</div>';
							a += '<div class="p10 font12" style="width:100px;height:60px;background-color:#fff;z-index:99999999;position:absolute;right:360px;top:580px;">';
							a += '<div class="p-b10 pointer" onClick="commentModify(' + value.cid + ');">수정</div>';
							a += '<div class="pointer" onClick="commentDelete(' + value.cid + ');">삭제</div>';
							a += '</div>';
							a += '</div>';
							a += '<hr style="margin: 20px 0; border: 1px solid #f7f7f7;" />';
						});
								
				var b = resData.cCount;
				$(".commentCount").append(b);
				$("#commentList").html(a); //위에서 작업한 변수 a 내용을 id = commentList에 표시
				},
				erorr : function() {
					alert("관리자에게 문의하세요.");
				},
				complete : function() {}
			});
	}
	
	function takeHeart() {
		alert("sdfsdf");
	}
	function getLike(aid) {
		$.ajax({
			url: "${pageContext.request.contextPath}/article/yf_article_like",
			type: "POST",
			data: {aid : aid},
			succecc: function(resData){
				$("#heart").attr("class", "fas fa-heart pointer heart");
				$("#heart").attr("onClick", "takeHeart();");
				alert("성공");
			},
			error: function() {
				alert("시스템 에러");
			}
		});
	}

	$(function(){
	    $(".top").click(function(){
	        /* html, body, document 화면 */
	        alert("sdfdf");
	    });

	    listCmt();
	});

	$("#btn-cmt").click(function() {
		checkCmt();
	});
</script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/active.js"></script>
</html>