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
            <div class="head-wrap weight700 font18 m-b20 w100">
                <div class="bg">
                    <img src="${pageContext.request.contextPath}/images/login-bg.jpg" alt="" class="w100">
                </div>
                <div class="boardTitle">
                    <span>평점·리뷰</span>
                </div>
            </div>
            <div class="head-body-wrap">
                <div class="board-search m-b50">
                    <div class="search">
                        <select name="" id="">
                            <option value="">전체</option>
                            <option value="">영화명</option>
                            <option value="">추천수</option>
                            <option value="">조회수</option>
                        </select>
                        <input type="text" name="" id="" maxlength="" />
                        <span><i class="fas fa-search blk"></i></span>
                    </div>
                </div>
                <div class="board-head-extra font14 m-b15">
                    <div class="board-head-extra-left">
                        <span>Total 53건의 리뷰가 있습니다</span>
                    </div>
                </div>
                <div class="list-wrap flex flex-justify">
                    <div class="list-btn flex m-b5">
                        <div class="on"><a href="user_board_review.html">전체리뷰<i class="fas fa-caret-down m-l4"></i></a></div>
                        <div><a href="user_board_review_monthly.html">월간베스트<i class="fas fa-caret-down m-l4"></i></a></div>
                        <div><a href="user_board_review_weekly.html">주간베스트<i class="fas fa-caret-down m-l4"></i></a></div>
                    </div>
                    <div class="board-head-extra-right flex">
                        <div class="toWrite m-l10">
                            <a href="user_board_review_write.html"><i class="fas fa-pencil-alt font16 f6"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="board-body f6">
            <table class="w100 center">
                <tr class="weight700">
                    <td class="td-7">영화</td>
                    <td class="">제목</td>
                    <td class="td-10">글쓴이</td>
                    <td class="td-7">평점</td>
                    <td class="td-5">조회</td>
                    <td class="td-5">추천</td>
                    <td class="td-5">비추천</td>
                    <td class="td-10">작성일</td>
                </tr>
                <tr>
                    <td><a href="user_board_review_movie_list.html" class="noti">부니베어: 원시시대 대모험</a></td>
                    <td><a href="user_board_review_detail.html" class="f6">초등학생 동생이 굉장히 좋아하는 영화예요.</a></td>
                    <td>bbh0506</td>
                    <td>8.7</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                    <td>2020-10-23</td>
                </tr>
                <tr>
                    <td><a href="user_board_review_movie_list.html" class="noti">부니베어: 원시시대 대모험</a></td>
                    <td><a href="user_board_review_detail.html" class="f6">초등학생 동생이 굉장히 좋아하는 영화예요.</a></td>
                    <td>bbh0506</td>
                    <td>8.7</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                    <td>2020-10-23</td>
                </tr>
                <tr>
                    <td><a href="user_board_review_movie_list.html" class="noti">부니베어: 원시시대 대모험</a></td>
                    <td><a href="user_board_review_detail.html" class="f6">초등학생 동생이 굉장히 좋아하는 영화예요.</a></td>
                    <td>bbh0506</td>
                    <td>8.7</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                    <td>2020-10-23</td>
                </tr>
                <tr>
                    <td><a href="user_board_review_movie_list.html" class="noti">부니베어: 원시시대 대모험</a></td>
                    <td><a href="user_board_review_detail.html" class="f6">초등학생 동생이 굉장히 좋아하는 영화예요.</a></td>
                    <td>bbh0506</td>
                    <td>8.7</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                    <td>2020-10-23</td>
                </tr>
                <tr>
                    <td><a href="user_board_review_movie_list.html" class="noti">부니베어: 원시시대 대모험</a></td>
                    <td><a href="user_board_review_detail.html" class="f6">초등학생 동생이 굉장히 좋아하는 영화예요.</a></td>
                    <td>bbh0506</td>
                    <td>8.7</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                    <td>2020-10-23</td>
                </tr><tr>
                    <td><a href="user_board_review_movie_list.html" class="noti">부니베어: 원시시대 대모험</a></td>
                    <td><a href="user_board_review_detail.html" class="f6">초등학생 동생이 굉장히 좋아하는 영화예요.</a></td>
                    <td>bbh0506</td>
                    <td>8.7</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                    <td>2020-10-23</td>
                </tr>
                <tr>
                    <td><a href="user_board_review_movie_list.html" class="noti">부니베어: 원시시대 대모험</a></td>
                    <td><a href="user_board_review_detail.html" class="f6">초등학생 동생이 굉장히 좋아하는 영화예요.</a></td>
                    <td>bbh0506</td>
                    <td>8.7</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                    <td>2020-10-23</td>
                </tr>
                <tr>
                    <td><a href="user_board_review_movie_list.html" class="noti">부니베어: 원시시대 대모험</a></td>
                    <td><a href="user_board_review_detail.html" class="f6">초등학생 동생이 굉장히 좋아하는 영화예요.</a></td>
                    <td>bbh0506</td>
                    <td>8.7</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                    <td>2020-10-23</td>
                </tr>
                <tr>
                    <td><a href="user_board_review_movie_list.html" class="noti">부니베어: 원시시대 대모험</a></td>
                    <td><a href="user_board_review_detail.html" class="f6">초등학생 동생이 굉장히 좋아하는 영화예요.</a></td>
                    <td>bbh0506</td>
                    <td>8.7</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                    <td>2020-10-23</td>
                </tr>
                <tr>
                    <td><a href="user_board_review_movie_list.html" class="noti">부니베어: 원시시대 대모험</a></td>
                    <td><a href="user_board_review_detail.html" class="f6">초등학생 동생이 굉장히 좋아하는 영화예요.</a></td>
                    <td>bbh0506</td>
                    <td>8.7</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                    <td>2020-10-23</td>
                </tr>
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
	function loadCategoryBtn() {
		$.ajax({
			url : '${pageContext.request.contextPath}/board/yf_get_category',
			type : 'POST',
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			dataType : 'json',
			success : function (resData) {
				$.each(resData, function(key, value) {
					$("#categoryBtn").append("<span class='m-l4 catBtn'><a href='${pageContext.request.contextPath}/article?boardCode=" + value.boardCode + "' class='board-btn'>" + value.boardTitle + "</a></span>");
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