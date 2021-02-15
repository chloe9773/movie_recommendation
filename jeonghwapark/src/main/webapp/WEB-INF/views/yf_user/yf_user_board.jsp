<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_HEADER.jsp"%>
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
                    <span class="user-name" id="log">${sessionScope.mUserName}<i class="fas fa-caret-down m-l4"></i></span>
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
            <input type="hidden" id="curpage" value="${boardCode}" />
            <div class="board-btn-grp m-b50 m-l300 flex">
                <span class=""><a href="${pageContext.request.contextPath}/article" id="total" class="catBtn board-btn-active">전체</a></span>
                <div id="categoryBtn"></div>
            </div>
            <div class="board-head-extra flex flex-justify font14 m-b15 m-lr300">
                <div class="board-head-extra-left">
                    <span>총게시글 ${count}건 ${totalPage}페이지</span>
                </div>
                <div class="board-head-extra-right flex">
                    <div class="find">
                        <i class="fas fa-search"></i>
                    </div>
                    <div class="searchWrap none">
                        <div class="flex">
                            <div class="searchOpt">
                                <select name="" id="">
                                    <option value="content">제목+내용</option>
                                    <option value="writer">작성자</option>
                                    <option value="title">글제목</option>
                                </select>
                            </div>
                            <div class="search">
                                <input type="text"/>
                                <span>
                                    <i class="fas fa-search blk font16"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="toWrite m-l10">
                        <a href="${pageContext.request.contextPath}/article/yf_article_insert?boardCode=${boardCode}"><i class="fas fa-pencil-alt font16 f6"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="board-body f6 m-lr300">
            <table class="w100 center">
                <tr class="weight700">
                    <td class="td-7">번호</td>
                    <td class="td-5">구분</td>
                    <td class="">제목</td>
                    <td class="td-10">글쓴이</td>
                    <td class="td-5">조회</td>
                    <td class="td-5">추천</td>
                    <td class="td-5">비추천</td>
                    <td class="td-5">작성일</td>
                </tr>
                <c:forEach var="articleList" items="${list}" varStatus="status">
                	<c:if test = "${articleList.division eq 'noti'}">
		                <tr class="notification">
		                    <td class="noti weight700">공지</td>
		                    <td>
		                        <a href="${pageContext.request.contextPath}/article/yf_article_view?boardCode=${boardCode}" class="category-btn">공지</a>
		                    </td>
		                    <td>
		                        <a href="${pageContext.request.contextPath}/article/yf_article_view?aid=${articleList.aid}">${articleList.title}</a>
		                    </td>
		                    <td>${articleList.writer}</td>
		                    <td>${articleList.hit}</td>
		                    <td>${articleList.likeArticle}</td>
		                    <td>${articleList.hateArticle}</td>
		                    <td>${articleList.regdate}</td>
		                </tr>
		            </c:if>
		            <c:if test = "${articleList.division eq 'free'}">
		            	<tr>
		                    <td>${(count - status.index) - ((curPage - 1) * end)}</td>
		                    <td>
		                        <a href="${pageContext.request.contextPath}/article/yf_article_view?boardCode=${boardCode}" class="category-btn">자유</a>
		                    </td>
		                    <td>
		                        <a href="${pageContext.request.contextPath}/article/yf_article_view?aid=${articleList.aid}">${articleList.title}</a>
		                    </td>
		                    <td>${articleList.writer}</td>
		                    <td>${articleList.hit}</td>
		                    <td>${articleList.likeArticle}</td>
		                    <td>${articleList.hateArticle}</td>
		                    <td>${articleList.regdate}</td>
                		</tr>
		            </c:if>
		        </c:forEach>
            </table>
            <div class="page-btn-wrap flex m-t15">
                <div class="page-btn-off">
                    <span><i class="fas fa-angle-double-left"></i></span>
                </div>
                <div class="page-btn-off">
                    <span><i class="fas fa-angle-left"></i></span>
                </div>
                <div class="page-btn-on">
                    <span>1</span>
                </div>
                <div class="page-btn-off">
                    <span>2</span>
                </div>
                <div class="page-btn-off">
                    <span>3</span>
                </div>
                <div class="page-btn-off">
                    <span>4</span>
                </div>
                <div class="page-btn-off">
                    <span>5</span>
                </div>
                <div class="page-btn-off">
                    <span><i class="fas fa-angle-right"></i></span>
                </div>
                <div class="page-btn-off">
                    <span><i class="fas fa-angle-double-right"></i></span>
                </div>
            </div>
        </div>
    </div>
    <div class="footer center">
        <div class="copyright">&copy; copyright</div>
    </div>
</body>
<script>
    $(function(){
        $(".find").click(function(){
            $(".find").hide();
            $(".searchWrap").show();
        });
    });
</script>
<script>
	function active(boardTitle) {
		$(".catBtn").removeClass("board-btn-active");
		$("#" + boardTitle).addClass("board-btn-active");
	}
	
	function loadCategoryBtn() {
		$.ajax({
			url : '${pageContext.request.contextPath}/board/yf_get_category',
			type : 'POST',
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			dataType : 'json',
			success : function (resData) {
				$.each(resData, function(key, value) {
					$("#categoryBtn").append("<span class='m-l4'><a href='${pageContext.request.contextPath}/article?boardCode=" + value.boardCode + "' class='board-btn' id='" + value.boardTitle + "' onClick='active(\"" + value.boardTitle + "\");'>" + value.boardTitle + "</a></span>");
				});
			},
			error : function() {
				alert("시스템 에러");
			}
		});
	}
	
	$(function(){
		loadCategoryBtn();
	});
</script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/active.js"></script>
</html>