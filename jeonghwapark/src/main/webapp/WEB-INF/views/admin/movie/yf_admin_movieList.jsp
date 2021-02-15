<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_HEADER.jsp"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin_userlist.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/table.css">
<script>
	$(function() {
		$(".modify").click(function() {
			$(".modal-wrapper").toggleClass("open");
		});
	});
</script>
<style>
	td {
		border: 1px solid #b3b3b3;
	}
	
	.modal {
		height: 400px;
		width: 800px;
	}
</style>
<body>
    <div class="modal-wrapper" style="z-index: 9999999999999999999999999;">
        <div class="modal">
            <form id="frm" name="" method="post" action="" enctype="multipart/form-data">
                <!-- <input type="hidden" name="empID" value="${empOne.empID}" /> -->
                <div class="modal-title">
                    <h2 class="noto font16 m-t5">영화 정보</h2>
                </div>
                <div class="modal-body flex">
                    <div class="body-left">
                        <div class="photo-area">
                            <img src="images/no.jpg" alt="">
                        </div>
                        <div class="photo-btn">
                            <input type="file" name="file" id="" />
                        </div>
                    </div>
                    <div class="body-right">
                        <table style="width: 600px; height: 250px;">
                            <tr>
                                <td class="td-15 center">제목</td>
                                <td colspan="3" class="p-l5">
                                    <input type="text" class="input-full" name="" id="" maxlength="" tabindex="1" /></td>
                            </tr>
                            <tr>
                                <td class="center">코드</td>
                                <td class="p-l5">
                                    <input type="text" class="input-150" name="" id="" maxlength="" tabindex="2" readonly/>
                                </td>
                                <td class="td-20 center" style="background-color: #e8eff8;">개봉년도</td>
                                <td class="p-l5">
                                    <select name="" id="" tabindex="4">
                                        <option value="1990">1990</option>
                                        <option value="1991">1991</option>
                                        <option value="1992">1992</option>
                                        <option value="1993">1993</option>
                                        <option value="1994">1994</option>
                                        <option value="1995">1995</option>
                                        <option value="1996">1996</option>
                                        <option value="1997">1997</option>
                                        <option value="1998">1998</option>
                                        <option value="1999">1999</option>
                                        <option value="2000">2000</option>
                                    </select>
                                    <select name="" id="" tabindex="5">
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                    <select name="" id="" tabindex="6">
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">감독</td>
                                <td class="p-l5">
                                    <input type="text" class="input-150" name="" id="" maxlength="" tabindex="1" />
                                </td>
                                <td class="center" style="background-color: #e8eff8;">국가</td>
                                <td class="p-l5">
                                    <input type="text" class="input-250" name="" id="" maxlength="" tabindex="1" />
                                </td>
                            </tr>
                            <tr>
                                <td class="center">출연</td>
                                <td colspan="3" class="p-l5">
                                    <input type="text" class="input-full" name="" id="" maxlength="" tabindex="1" /></td>
                            </tr>
                            <tr>
                                <td class="center">장르</td>
                                <td colspan="3" style="text-align: left; padding: 3px;">
                                    <div class="line flex" style="margin-bottom: 0;">
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>드라마</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>판타지</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>서부</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>공포</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>로맨스</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>블랙코미디</span>
                                        </div>
                                    </div>
                                    <div class="line flex">
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>느와르</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>컬트</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>전쟁</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>코미디</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>가족</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>애니메이션</span>
                                        </div>
                                    </div>
                                    <div class="line flex">
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>에로</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>범죄</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>뮤지컬</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>모험</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>액션</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>다큐멘터리</span>
                                        </div>
                                    </div>
                                    <div class="line flex">
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>SF</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>서사</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>스릴러</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>실험</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>영화카툰</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>영화음악</span>
                                        </div>
                                    </div>
                                    <div class="line flex">
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>서스펜스</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>무협</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>미스터리</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>영화패러디</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="modal-bottom center m-t10">
                    <button class="btn-on">수정</button>
                    <button class="btn-off modify btn-close">취소</button>
                </div>
            </form>
        </div>
    </div>
    <!-- //modal layer -->
    <div class="header flex f6">
        <!-- 로고 -->
    	<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_LOGO.jsp"%>
        <div class="top-head w85 bg-base">
            <%@include file="/WEB-INF/views/admin/admin_include/ADMIN_TOP.jsp"%>
        </div>
    </div>
    <div class="body flex">
        <%@include file="/WEB-INF/views/admin/admin_include/ADMIN_MENU.jsp"%>
        <div class="main w85 bg-base">
            <div class="main-head bg-white m10 p10">
                <span class="weight700 font16">영화 / 영화목록</span>
            </div>
            <div class="main-body bg-white m10 p10">
                <div class="search-wrap flex flex-justify m-b5">
                    <div class="">
                        <span class="btn-off">영화등록</span>
                    </div>
                    <div class="" style="z-index: 1;">
                        <form method="post" action="admin_userlist.html">
                            <select class="" name="searchOpt" style="border: 1px solid #000;">
                                <option value="useremail" id="useremail">영화제목</option>
                                <option value="username" id="username">영화코드</option>
                                <option value="username" id="username">제목+코드</option>
                            </select>
                            <input type="text" name="words" required style="margin-left: -2px; height: 30px;" />
                            <button type="submit" class="btn-on" style="margin-left: -2px;">영화검색</button>
                        </form>
                    </div>
                </div>
                <div class="user-table w100">
                    <table class="w100">
                        <tr class="center f6">
                            <td class="td-3">코드</td>
                            <td>영화제목</td>
                            <td class="td-5">개봉년도</td>
                            <td class="td-10">감독</td>
                            <td class="td-7">국가</td>
                            <td class="td-20">출연</td>
                            <td class="td-10">장르</td>
                            <td class="td-7">비고</td>
                        </tr>
                        <tr class="center">
                            <td>10</td>
                            <td>해리 포터와 죽음의 성물 - 2부</td>
                            <td>2011</td>
                            <td>데이빗 예이츠</td>
                            <td>영국, 미국</td>
                            <td>다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</td>
                            <td>모험, 판타지, 미스터리</td>
                            <td>
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td>9</td>
                            <td>해리 포터와 죽음의 성물 - 1부</td>
                            <td>2010</td>
                            <td>데이빗 예이츠</td>
                            <td>영국, 미국</td>
                            <td>다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</td>
                            <td>모험, 판타지, 미스터리</td>
                            <td>
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td>8</td>
                            <td>해리 포터와 마법사의 돌</td>
                            <td>2001</td>
                            <td>데이빗 예이츠</td>
                            <td>영국, 미국</td>
                            <td>다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</td>
                            <td>모험, 판타지, 미스터리</td>
                            <td>
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td>7</td>
                            <td>해리 포터와 죽음의 성물 - 2부</td>
                            <td>2011</td>
                            <td>데이빗 예이츠</td>
                            <td>영국, 미국</td>
                            <td>다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</td>
                            <td>모험, 판타지, 미스터리</td>
                            <td>
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td>6</td>
                            <td>해리 포터와 죽음의 성물 - 1부</td>
                            <td>2010</td>
                            <td>데이빗 예이츠</td>
                            <td>영국, 미국</td>
                            <td>다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</td>
                            <td>모험, 판타지, 미스터리</td>
                            <td>
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td>5</td>
                            <td>해리 포터와 마법사의 돌</td>
                            <td>2001</td>
                            <td>데이빗 예이츠</td>
                            <td>영국, 미국</td>
                            <td>다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</td>
                            <td>모험, 판타지, 미스터리</td>
                            <td>
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td>4</td>
                            <td>해리 포터와 죽음의 성물 - 2부</td>
                            <td>2011</td>
                            <td>데이빗 예이츠</td>
                            <td>영국, 미국</td>
                            <td>다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</td>
                            <td>모험, 판타지, 미스터리</td>
                            <td>
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td>3</td>
                            <td>해리 포터와 죽음의 성물 - 1부</td>
                            <td>2010</td>
                            <td>데이빗 예이츠</td>
                            <td>영국, 미국</td>
                            <td>다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</td>
                            <td>모험, 판타지, 미스터리</td>
                            <td>
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td>2</td>
                            <td>해리 포터와 마법사의 돌</td>
                            <td>2001</td>
                            <td>데이빗 예이츠</td>
                            <td>영국, 미국</td>
                            <td>다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</td>
                            <td>모험, 판타지, 미스터리</td>
                            <td>
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td>1</td>
                            <td>해리 포터와 죽음의 성물 - 2부</td>
                            <td>2011</td>
                            <td>데이빗 예이츠</td>
                            <td>영국, 미국</td>
                            <td>다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</td>
                            <td>모험, 판타지, 미스터리</td>
                            <td>
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                    </table>
                    <div class="page-grp center m-t10">
                        <span class="page">
                            <a href=""><i class="fas fa-angle-double-left"></i></a>
                        </span>
                        <span class="page">
                            <a href=""><i class="fas fa-angle-left"></i></a>
                        </span>
                        <span class="page page-active"><a href="" class="f6">1</a></span>
                        <span class="page"><a href="">2</a></span>
                        <span class="page"><a href="">3</a></span>
                        <span class="page"><a href="">4</a></span>
                        <span class="page"><a href="">5</a></span>
                        <span class="page"><a href="">
                                <i class="fas fa-angle-right"></i></a>
                        </span>
                        <span class="page">
                            <a href=""><i class="fas fa-angle-double-right"></i></a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    $(function() {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    });
</script>
<script>
	$(function(){
		$.ajax({
			type: 'GET',
			url: '/admin/movie/yf_movielist',
			dataType: 'json',
			contentType: 'application/json; charset=utf-8,
		}).done(function(res) {
			alert(JSON.stringify(res)); 
		}).fail(function (error) { 
			alert(JSON.stringify(error));
		});
		
	});
</script>
<script src="${pageContext.request.contextPath}/js/logout.js"></script>
<script src="${pageContext.request.contextPath}/js/admin_common.js"></script>
</html>