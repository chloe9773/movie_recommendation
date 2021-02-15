<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/table.css">
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
                <div class="board-article-wrap">
                    <div class="board-article-title flex flex-justify">
                        <div class="m-b10 f6">작성한 게시글 조회</div>
                        <div class="f6 font14"><a href="${pageContext.request.contextPath}/mypage/yf_user_myarticle" class="f6"><i class="fas fa-plus-square m-r4"></i>더보기</a></div>
                    </div>
                    <hr>
                    <div class="board-article-body">
                        <table class="center">
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
	                                <td>${article.title}</td>
	                                <td>${article.hit}</td>
	                                <td>${article.likeArticle}</td>
	                                <td>${article.regdate}</td>
	                            </tr>
	                        </c:forEach>
                        </table>
                    </div>
                </div>
                <div class="board-mylist-wrap m-t30">
                    <div class="board-mylist-head flex flex-justify">
                        <div class="m-b10 f6">마이리스트</div>
                        <div class="f6 font14"><a href="${pageContext.request.contextPath}/#" class="f6"><i class="fas fa-plus-square m-r4"></i>더보기</a></div>
                    </div>
                    <hr>
                    <div class="board-mylist-body">
                        <table>
                            <tr class="bg-white">
                                <td class="td-15 center p-tb10">
                                    <img src="${pageContext.request.contextPath}/images/poster1.jpg" alt="인셉션" title="인셉션" style="width: 100px; height: 130px;"/>
                                </td>
                                <td>
                                    <div class="movie-title font14 weight700">인셉션</div>
                                    <div class="movie-director-wrap">
                                        <span class="weight700">감독</span>
                                        <span>크리스토퍼 놀란</span>
                                    </div>
                                    <div class="cast-wrap m-b55">
                                        <span class="weight700">출연</span>
                                        <span>레오나르도 디카프리오, 와타나베 켄, 조셉 고든 레빗</span>
                                        <a href="${pageContext.request.contextPath}/user_movie_detail.html" class="blk under">더보기<i class="fas fa-caret-right"></i></a>
                                    </div>
                                    <div class="movie-releasedate-wrap">
                                        <span class="weight700">개봉</span>
                                        <span>2010.10.17</span>
                                    </div>
                                </td>
                                <td class="td-5 center">
                                    <i class="fas fa-trash-alt blk pointer font16"></i>
                                </td>
                            </tr>
                            <tr class="bg-white">
                                <td class="td-15 center p-tb10">
                                    <img src="${pageContext.request.contextPath}/images/poster2.jpg" alt="라라랜드" title="라라랜드" style="width: 100px; height: 130px;"/>
                                </td>
                                <td>
                                    <div class="movie-title font14 weight700">라라랜드</div>
                                    <div class="movie-director-wrap">
                                        <span class="weight700">감독</span>
                                        <span>데이미언 셔젤</span>
                                    </div>
                                    <div class="cast-wrap m-b55">
                                        <span class="weight700">출연</span>
                                        <span>라이언 고슬링, 엠마 스톤</span>
                                        <a href="${pageContext.request.contextPath}/user_movie_detail.html" class="blk under">더보기<i class="fas fa-caret-right"></i></a>
                                    </div>
                                    <div class="movie-releasedate-wrap">
                                        <span class="weight700">개봉</span>
                                        <span>2016.12.07</span>
                                    </div>
                                </td>
                                <td class="td-5 center">
                                    <i class="fas fa-trash-alt blk pointer font16"></i>
                                </td>
                            </tr>
                            <tr class="bg-white">
                                <td class="td-15 center p-tb10">
                                    <img src="${pageContext.request.contextPath}/images/poster3.jpg" alt="미드나잇 인 파리" title="미드나잇 인 파리" style="width: 100px; height: 130px;"/>
                                </td>
                                <td>
                                    <div class="movie-title font14 weight700">미드나잇 인 파리</div>
                                    <div class="movie-director-wrap">
                                        <span class="weight700">감독</span>
                                        <span>우디 앨런</span>
                                    </div>
                                    <div class="cast-wrap m-b55">
                                        <span class="weight700">출연</span>
                                        <span>오웬 윌슨, 마리옹 꼬띠아르, 레이첼 맥아담스</span>
                                        <a href="${pageContext.request.contextPath}/user_movie_detail.html" class="blk under">더보기<i class="fas fa-caret-right"></i></a>
                                    </div>
                                    <div class="movie-releasedate-wrap">
                                        <span class="weight700">개봉</span>
                                        <span>2012.07.05</span>
                                    </div>
                                </td>
                                <td class="td-5 center">
                                    <i class="fas fa-trash-alt blk pointer font16"></i>
                                </td>
                            </tr>
                            <tr class="bg-white">
                                <td class="td-15 center p-tb10">
                                    <img src="${pageContext.request.contextPath}/images/poster4.jpg" alt="캐롤" title="캐롤" style="width: 100px; height: 130px;"/>
                                </td>
                                <td>
                                    <div class="movie-title font14 weight700">캐롤</div>
                                    <div class="movie-director-wrap">
                                        <span class="weight700">감독</span>
                                        <span>토드 헤인즈</span>
                                    </div>
                                    <div class="cast-wrap m-b55">
                                        <span class="weight700">출연</span>
                                        <span>케이트 블란쳇, 루니 마라, 카일 챈들러</span>
                                        <a href="${pageContext.request.contextPath}/user_movie_detail.html" class="blk under">더보기<i class="fas fa-caret-right"></i></a>
                                    </div>
                                    <div class="movie-releasedate-wrap">
                                        <span class="weight700">개봉</span>
                                        <span>2016.02.04</span>
                                    </div>
                                </td>
                                <td class="td-5 center">
                                    <i class="fas fa-trash-alt blk pointer font16"></i>
                                </td>
                            </tr>
                            <tr class="bg-white">
                                <td class="td-15 center p-tb10">
                                    <img src="${pageContext.request.contextPath}/images/poster5.jpg" alt="플립" title="플립" style="width: 100px; height: 130px;"/>
                                </td>
                                <td>
                                    <div class="movie-title font14 weight700">플립</div>
                                    <div class="movie-director-wrap">
                                        <span class="weight700">감독</span>
                                        <span>로브 라이너</span>
                                    </div>
                                    <div class="cast-wrap m-b55">
                                        <span class="weight700">출연</span>
                                        <span>매들린 캐롤, 캘런 맥오리피</span>
                                        <a href="${pageContext.request.contextPath}/user_movie_detail.html" class="blk under">더보기<i class="fas fa-caret-right"></i></a>
                                    </div>
                                    <div class="movie-releasedate-wrap">
                                        <span class="weight700">개봉</span>
                                        <span>2017.07.12</span>
                                    </div>
                                </td>
                                <td class="td-5 center">
                                    <i class="fas fa-trash-alt blk pointer font16"></i>
                                </td>
                            </tr>
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