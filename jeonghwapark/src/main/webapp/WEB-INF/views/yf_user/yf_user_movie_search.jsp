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
                    <span>영화</span>
                </div>
            </div>
            <div class="head-body-wrap">
                <div class="board-search m-b50">
                	<form id="searchMovie">
                    	<div class="search flex">
	                        <select name="searchOpt" id="">
	                            <option value="title">영화제목</option>
	                            <option value="director">감독명</option>
	                            <option value="genre">장르명</option>
	                            <!--  <option value="query">전체</option>-->
	                        </select>
	                        <input type="text" name="words" id="words" class="m-t2" autocomplete="off" />
	                        <button type="button" id="movieBtn" onClick="searchMovie();" class="pointer" style="line-height:25px;background-color:transparent;"><i class="fas fa-search blk"></i></button>
                    	</div>
                   	</form>
                </div>
                <div class="list-wrapflex-justify">
                    <div class="list-btn flex">
                        <div class="on"><a href="user_movie_list.html">제작국가<i class="fas fa-caret-down m-l4"></i></a></div>
                        <div><a href="user_movie_list_by_year.html">개봉년도<i class="fas fa-caret-down m-l4"></i></a></div>
                        <div><a href="user_movie_list_by_genre.html">장르<i class="fas fa-caret-down m-l4"></i></a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="board-body f6 m-lr300">
            <div id="searchView" class="contents-wrap font14 bg-white p30">
                <div class="content-wrap flex">
                    <div class="content-title blk m-lr20 weight700">ㄱ</div>
                    <div class="content m-b20">
                        <a href="user_movie_list_detail.html" class="country">가봉(1)</a>
                        <a href="#" class="country">그레나다(1)</a>
                        <a href="#" class="country">가나(22)</a>
                        <a href="#" class="country">그린랜드</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㄴ</div>
                    <div class="content">
                        <a href="#" class="country">네덜란드 앤틸리스(3)</a>
                        <a href="#" class="country">나미비아(3)</a>
                        <a href="#" class="country">니제르(2)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㄷ</div>
                    <div class="content">
                        <a href="#" class="country">독일(4863)</a>
                        <a href="#" class="country">덴마크(1073)</a>
                        <a href="#" class="country">도미니카(3)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㄹ</div>
                    <div class="content">
                        <a href="#" class="country">라오스 인민 민주주의 공화국(18)</a>
                        <a href="#" class="country">레바논(159)</a>
                        <a href="#" class="country">라이베리아(1)</a>
                        <a href="#" class="country">레소토(2)</a>
                        <a href="#" class="country">리투아니아(126)</a>
                        <a href="#" class="country">룩셈부르크(49)</a>
                        <a href="#" class="country">라트비아(144)</a>
                        <a href="#" class="country">리비아 아랍 자마힐리아(1)</a>
                        <a href="#" class="country">루마니아(336)</a>
                        <a href="#" class="country">러시아 연방(1148)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㅁ</div>
                    <div class="content">
                        <a href="#">라오스 인민 민주주의 공화국(18)</a>
                        <a href="#">레바논(159)</a>
                        <a href="#">라이베리아(1)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㅂ</div>
                    <div class="content">
                        <a href="#">라오스 인민 민주주의 공화국(18)</a>
                        <a href="#">레바논(159)</a>
                        <a href="#">라이베리아(1)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㅅ</div>
                    <div class="content">
                        <a href="#">라오스 인민 민주주의 공화국(18)</a>
                        <a href="#">레바논(159)</a>
                        <a href="#">라이베리아(1)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㅇ</div>
                    <div class="content">
                        <a href="#">라오스 인민 민주주의 공화국(18)</a>
                        <a href="#">레바논(159)</a>
                        <a href="#">라이베리아(1)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㅈ</div>
                    <div class="content">
                        <a href="#">라오스 인민 민주주의 공화국(18)</a>
                        <a href="#">레바논(159)</a>
                        <a href="#">라이베리아(1)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㅊ</div>
                    <div class="content">
                        <a href="#">라오스 인민 민주주의 공화국(18)</a>
                        <a href="#">레바논(159)</a>
                        <a href="#">라이베리아(1)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㅋ</div>
                    <div class="content">
                        <a href="#">라오스 인민 민주주의 공화국(18)</a>
                        <a href="#">레바논(159)</a>
                        <a href="#">라이베리아(1)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㅌ</div>
                    <div class="content">
                        <a href="#">라오스 인민 민주주의 공화국(18)</a>
                        <a href="#">레바논(159)</a>
                        <a href="#">라이베리아(1)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㅍ</div>
                    <div class="content">
                        <a href="#">라오스 인민 민주주의 공화국(18)</a>
                        <a href="#">레바논(159)</a>
                        <a href="#">라이베리아(1)</a>
                    </div>
                </div>
                <hr>
                <div class="content-wrap m-tb20 flex">
                    <div class="content-title blk m-lr20 weight700">ㅎ</div>
                    <div class="content">
                        <a href="#">홍콩(4162)</a>
                        <a href="#">헝가리(560)</a>
                        <a href="#">한국(31721)</a>
                    </div>
                </div>
                <hr>
            </div>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_FOOTER.jsp"%>
</body>
<script>
    $(function(){
        $(".find").click(function(){
            $(".find").hide();
            $(".searchWrap").show();
        });
    });

    function searchMovie() {
       var data = $("#searchMovie").serialize();

       $("#list-btn").html();

       $.ajax({
			url: '${pageContext.request.contextPath}/movie/search_movie',
			type: 'POST',
			data: data,
			success: function(resData){
				var a = "";
				
				$.each(resData, function(key, value) {
					a += "<div class='flex flex-justify m-b30'>";
					a += "<div class='poster' style='width:10%;'>";

					if (value.posterUrl == "") {
						a += "<img src='${pageContext.request.contextPath}/images/no-poster.png' alt='' class='w100' style='height:100%;border:1px solid #ececec;'>";
					} else {
						a += "<img src='" + value.posterUrl + "' alt='' class='w100' style='height:100%;border:1px solid #ececec;'>";
					}
					
					a += "</div>";
					a += "<div class='movie_info blk' style='width:87%;'>";
					a += "<div class='movie_title'>";
					a += "<span class='weight700 font16'>" + value.title + "</span>";
					a += "</div>";
					a += "<div class='movie_director'>";
					
					if (value.directors != "") {
						a += "<span class='m-r5 weight700'>감독 :</span>"
							
						var directors = value.directors.split(";");
						for (var i = 0; i < directors.length; i++) {
							a += "<span>" + directors[i] + "</span>";

							if (i < directors.length - 2) {
								a += "<span>, </span>"
							}
						}
					}

					a += "</div>";
					a += "<div class='movie_actor'>";

					if (value.actors != "") {
						a += "<span class='m-r5 weight700'>출연 :</span>"
							
						var actors = value.actors.split(";");
						if (actors.length > 7) {
							for (var i = 0; i < 8; i++) {
								a += "<span>" + actors[i] + "</span>";
	
								if (i < 7) {
									a += "<span>, </span>"
								}
							}
						} else {
							for (var i = 0; i < actors.length; i++) {
								a += "<span>" + actors[i] + "</span>";
	
								if (i < actors.length - 2) {
									a += "<span>, </span>"
								}
							}
						}
					}
					
					a += "</div>";
					a += "<div class='movie_extra' style=''>";

					if (value.genre != "") {
						a += "<span>" + value.genre + "</span>";
						a += "<span class='m-lr5'>|</span>"
					}

					if (value.nation != "") {
						a += "<span>" + value.nation + "</span>";
						a += "<span class='m-lr5'>|</span>"
					}
					
					if (value.releaseYear != null) {
						a += "<span>" + value.releaseYear + "</span>";
						a += "<span class='m-lr5'>|</span>"
					}
					
					a += "</div>";
					a += "</div>";
					a += "</div>";
				});
				$("#searchView").addClass("p50");
				$("#searchView").html(a);
			},
			error: function() {
				alert("시스템 오류");
			},
			complete: function(){}
       });
    }
</script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/active.js"></script>
</html>