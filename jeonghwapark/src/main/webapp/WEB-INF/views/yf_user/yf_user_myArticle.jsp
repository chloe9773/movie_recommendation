<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
        ul li {
        	list-style-type: none;
        	diplay: inline-block;
        	margin-right: 10px;
        	padding-bottom: 5px;
        }
        
        ul li:hover {
        	color: #F9267F;
        }
        
        .clicked {
        	border-bottom:1px solid #F9267F;
        }
</style>
<body>
	<input type="hidden" id="userName" name="userName" value="${sessionScope.mUserName}"/>
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
            <%@ include file="/WEB-INF/views/yf_user/user_include/USER_MYPAGE.jsp"%>
            <div class="board-right">
            	<div class="f6 font14">
            		<span class="">총 방문 <span class="noti">50</span>회</span>
            		<span class="m-lr4">·</span>
            		<span class="">총 게시글 <span class="noti">${aCount}</span>개</span>
            		<span class="m-lr4">·</span>
            		<span class="">총 댓글 <span class="noti">${cCount}</span>개</span>
            	</div>
            	<hr class="m-tb10" style="border:1px solid #fff">
                <div class="board-article-wrap">
                    <div class="board-article">
                        <ul class="f6 pointer font14 flex">
                        	<li class="menus clicked" id="articles" onClick="active('articles');">작성글</li>
                        	<li class="menus" id="comments" onClick="active('comments');">작성댓글</li>
                        </ul>
                    </div>
                    <div class="board-article-body">
                        <table class="center" id="tbl">
                            <tr class="f6 weight700">
                                <td class="td-10">작성게시판</td>
                                <td>제목</td>
                                <td class="td-7">조회수</td>
                                <td class="td-7">추천수</td>
                                <td class="td-15">작성일</td>
                            </tr>
                            <c:if test="${articles.size() == 0}">
								<tr class="bg-white">
									<td colspan="5" class="font14">작성하신 게시글이 없습니다.</td>
								</tr>
							</c:if>
							<c:forEach var="article" items="${articles}">
	                            <tr class="bg-white"> 
	                                <td>${article.boardCode}</td>
	                                <td>${article.title} (댓글수)</td>
	                                <td>${article.hit}</td>
	                                <td>${article.likeArticle}</td>
	                                <td>${article.regdate}</td>
	                            </tr>
	                        </c:forEach>
                        </table>
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
	function active(boardName) {
		$(".menus").removeClass("clicked");

		$("#"+boardName).addClass("clicked");

		if (boardName == 'comments') {
			var a = "";

			$.ajax({
				url : '${pageContext.request.contextPath}/mypage/mycomments',
				type : 'POST',
				success : function(resData) {
					a += '<tr class="f6 weight700">';
					a += '<td class="td-5"></td>'
                    a += '<td class="">댓글</td>'
                    a += '<td class="td-15"></td>';
                    a += '<td class="td-15">작성일</td>';'
                    a += '</tr>';
				},
				error : function() {
					alert("시스템 오류");
				}
			});

			$("#tbl").html(a);
		}
	}

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
</script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/active.js"></script>
</html>