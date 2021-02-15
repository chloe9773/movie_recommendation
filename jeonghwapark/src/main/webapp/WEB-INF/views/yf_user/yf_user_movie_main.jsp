<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_HEADER.jsp"%>
<style>
        .main-head-wrap {
            background-color: rgba(0, 0, 0, 0.1);
            height: 45px;
            position: fixed;
            z-index: 9999999999999;
            width: 100%;
        }
        
        .info-content-initial {
            width: 110px;
            border: 1px solid #eee;
            text-align: center;
            font-size: 12px;
            background-color: #ffffff;
            position: absolute;
            right: 65px;
            top: 40px;
            z-index: 999999;
        }
    </style>
<body>
    <div class="main-head-wrap flex flex-justify">
        <div class="logo m-t10" style="margin-left: 80px;">
            <%@ include file="/WEB-INF/views/yf_user/user_include/USER_LOGO.jsp"%>
        </div>
        <div class="head-menu flex">
            <div class="nav m-t15 m-r30">
                <%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_MENU.jsp"%>
            </div>
            <div class="user-info"> 
                <div class="user-wrap-main f6 m-t10 pointer" style="margin-right: 50px;">
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
        <div class="movie-rank">
            <div class="flex flex-justify owl-carousel owl-theme" style="margin-bottom: 1.5%;">
                <div class="1" style="display: flex;  padding: 0;">
                    <div style="font-size: 300px; font-weight: 700; z-index: 1; position: relative; text-shadow: 0 0 7px #eee;">1</div>
                    <div style="width: 100%; height: 100%;">
                        <img src="${pageContext.request.contextPath}/images/poster1.jpg" alt="" style="width: 100%; z-index: 2; position: relative; left: -45px; top: 50px;">
                    </div>
                </div>
                <div class="2" style="display: flex;  padding: 0;">
                    <div style="font-size: 300px; font-weight: 700; z-index: 1; position: relative; text-shadow: 0 0 7px #eee;">2</div>
                    <div style="width: 100%; height: 100%;">
                        <img src="${pageContext.request.contextPath}/images/poster2.jpg" alt="" style="width: 100%; z-index: 2; position: relative; left: -45px; top: 50px;">
                    </div>
                </div>
                <div class="3" style="display: flex;  padding: 0;">
                    <div style="font-size: 300px; font-weight: 700; z-index: 1; position: relative; text-shadow: 0 0 7px #eee;">3</div>
                    <div style="width: 100%; height: 100%;">
                        <img src="${pageContext.request.contextPath}/images/poster3.jpg" alt="" style="width: 100%; z-index: 2; position: relative; left: -45px; top: 50px;">
                    </div>
                </div>
                <div class="4" style="display: flex;  padding: 0;">
                    <div style="font-size: 300px; font-weight: 700; z-index: 1; position: relative; text-shadow: 0 0 7px #eee;">4</div>
                    <div style="width: 100%; height: 100%;">
                        <img src="${pageContext.request.contextPath}/images/poster4.jpg" alt="" style="width: 100%; z-index: 2; position: relative; left: -45px; top: 50px;">
                    </div>
                </div>
                <div class="5" style="display: flex;  padding: 0;">
                    <div style="font-size: 300px; font-weight: 700; z-index: 1; position: relative; text-shadow: 0 0 7px #eee;">5</div>
                    <div style="width: 100%; height: 100%;">
                        <img src="${pageContext.request.contextPath}/images/poster5.jpg" alt="" style="width: 100%; z-index: 2; position: relative; left: -45px; top: 50px;">
                    </div>
                </div>
            </div>
        </div>
        <div class="movie-lines f6">
            <h3 class="m-b5 ">${sessionScope.mName} 님을 위한 추천 콘텐츠</h3>
            <div class="movies flex flex-justify" style="margin-bottom: 1.5%;" >
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="인셉션"><img src="${pageContext.request.contextPath}/images/poster1.jpg" alt="인셉션" title="인셉션" /></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">인셉션</div>
                                <div class="movie-releaseDate">2010.07.21</div>
                                <div class="movie-genre">액션</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.60</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="라라랜드"><img src="${pageContext.request.contextPath}/images/poster2.jpg" alt="라라랜드" title="라라랜드"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">라라랜드</div>
                                <div class="movie-releaseDate">2016.12.07</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.91</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="미드나잇 인 파리"><img src="${pageContext.request.contextPath}/images/poster3.jpg" alt="미드나잇 인 파리" title="미드나잇 인 파리"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">미드나잇 인 파리</div>
                                <div class="movie-releaseDate">2012.07.05</div>
                                <div class="movie-genre">코미디</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.01</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="캐롤"><img src="${pageContext.request.contextPath}/images/poster4.jpg" alt="캐롤" title="캐롤"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">캐롤</div>
                                <div class="movie-releaseDate">2016.02.04</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.68</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="플립"><img src="${pageContext.request.contextPath}/images/poster5.jpg" alt="플립" title="플립"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">플립</div>
                                <div class="movie-releaseDate">2017.07.12</div>
                                <div class="movie-genre">멜로/로맨스</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.11</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="그녀"><img src="${pageContext.request.contextPath}/images/poster6.jpg" alt="그녀" title="그녀"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">그녀</div>
                                <div class="movie-releaseDate">2014.05.22</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.70</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="뷰티 인사이드"><img src="${pageContext.request.contextPath}/images/poster7.jpg" alt="뷰티 인사이드" title="뷰티 인사이드"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">뷰티 인사이드</div>
                                <div class="movie-releaseDate">2015.08.20</div>
                                <div class="movie-genre">멜로/로맨스</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.26</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="콜 미 바이 유어 네임"><img src="${pageContext.request.contextPath}/images/poster8.jpg" alt="콜 미 바이 유어 네임" title="콜 미 바이 유어 네임"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">콜 미 바이 유어 네임</div>
                                <div class="movie-releaseDate">2018.03.22</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.13</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h3 class="m-b5">로맨스 영화</h3>
            <div class="movies flex flex-justify" style="margin-bottom: 1.5%;">
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="인셉션"><img src="${pageContext.request.contextPath}/images/poster1.jpg" alt="인셉션" title="인셉션"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">인셉션</div>
                                <div class="movie-releaseDate">2010.07.21</div>
                                <div class="movie-genre">액션</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.60</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="라라랜드"><img src="${pageContext.request.contextPath}/images/poster2.jpg" alt="라라랜드" title="라라랜드"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">라라랜드</div>
                                <div class="movie-releaseDate">2016.12.07</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.91</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="미드나잇 인 파리"><img src="${pageContext.request.contextPath}/images/poster3.jpg" alt="미드나잇 인 파리" title="미드나잇 인 파리"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">미드나잇 인 파리</div>
                                <div class="movie-releaseDate">2012.07.05</div>
                                <div class="movie-genre">코미디</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.01</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="캐롤"><img src="${pageContext.request.contextPath}/images/poster4.jpg" alt="캐롤" title="캐롤"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">캐롤</div>
                                <div class="movie-releaseDate">2016.02.04</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.68</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="플립"><img src="${pageContext.request.contextPath}/images/poster5.jpg" alt="플립" title="플립"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">플립</div>
                                <div class="movie-releaseDate">2017.07.12</div>
                                <div class="movie-genre">멜로/로맨스</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.11</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="그녀"><img src="${pageContext.request.contextPath}/images/poster6.jpg" alt="그녀" title="그녀"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">그녀</div>
                                <div class="movie-releaseDate">2014.05.22</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.70</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="뷰티 인사이드"><img src="${pageContext.request.contextPath}/images/poster7.jpg" alt="뷰티 인사이드" title="뷰티 인사이드"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">뷰티 인사이드</div>
                                <div class="movie-releaseDate">2015.08.20</div>
                                <div class="movie-genre">멜로/로맨스</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.26</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="콜 미 바이 유어 네임"><img src="${pageContext.request.contextPath}/images/poster8.jpg" alt="콜 미 바이 유어 네임" title="콜 미 바이 유어 네임"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">콜 미 바이 유어 네임</div>
                                <div class="movie-releaseDate">2018.03.22</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.13</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h3 class="m-b5">코미디 영화</h3>
            <div class="movies flex flex-justify" style="margin-bottom: 1.5%;">
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="인셉션"><img src="${pageContext.request.contextPath}/images/poster1.jpg" alt="인셉션" title="인셉션"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">인셉션</div>
                                <div class="movie-releaseDate">2010.07.21</div>
                                <div class="movie-genre">액션</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.60</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="라라랜드"><img src="${pageContext.request.contextPath}/images/poster2.jpg" alt="라라랜드" title="라라랜드"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">라라랜드</div>
                                <div class="movie-releaseDate">2016.12.07</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.91</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="미드나잇 인 파리"><img src="${pageContext.request.contextPath}/images/poster3.jpg" alt="미드나잇 인 파리" title="미드나잇 인 파리"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">미드나잇 인 파리</div>
                                <div class="movie-releaseDate">2012.07.05</div>
                                <div class="movie-genre">코미디</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.01</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="캐롤"><img src="${pageContext.request.contextPath}/images/poster4.jpg" alt="캐롤" title="캐롤"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">캐롤</div>
                                <div class="movie-releaseDate">2016.02.04</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.68</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="플립"><img src="${pageContext.request.contextPath}/images/poster5.jpg" alt="플립" title="플립"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">플립</div>
                                <div class="movie-releaseDate">2017.07.12</div>
                                <div class="movie-genre">멜로/로맨스</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.11</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="그녀"><img src="${pageContext.request.contextPath}/images/poster6.jpg" alt="그녀" title="그녀"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">그녀</div>
                                <div class="movie-releaseDate">2014.05.22</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.70</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="뷰티 인사이드"><img src="${pageContext.request.contextPath}/images/poster7.jpg" alt="뷰티 인사이드" title="뷰티 인사이드"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">뷰티 인사이드</div>
                                <div class="movie-releaseDate">2015.08.20</div>
                                <div class="movie-genre">멜로/로맨스</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.26</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="콜 미 바이 유어 네임"><img src="${pageContext.request.contextPath}/images/poster8.jpg" alt="콜 미 바이 유어 네임" title="콜 미 바이 유어 네임"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">콜 미 바이 유어 네임</div>
                                <div class="movie-releaseDate">2018.03.22</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.13</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h3 class="m-b5">드라마 영화</h3>
            <div class="movies flex flex-justify" style="margin-bottom: 1.5%;">
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="인셉션"><img src="${pageContext.request.contextPath}/images/poster1.jpg" alt="인셉션" title="인셉션"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">인셉션</div>
                                <div class="movie-releaseDate">2010.07.21</div>
                                <div class="movie-genre">액션</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.60</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="라라랜드"><img src="${pageContext.request.contextPath}/images/poster2.jpg" alt="라라랜드" title="라라랜드"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">라라랜드</div>
                                <div class="movie-releaseDate">2016.12.07</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.91</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="미드나잇 인 파리"><img src="${pageContext.request.contextPath}/images/poster3.jpg" alt="미드나잇 인 파리" title="미드나잇 인 파리"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">미드나잇 인 파리</div>
                                <div class="movie-releaseDate">2012.07.05</div>
                                <div class="movie-genre">코미디</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.01</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="캐롤"><img src="${pageContext.request.contextPath}/images/poster4.jpg" alt="캐롤" title="캐롤"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">캐롤</div>
                                <div class="movie-releaseDate">2016.02.04</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.68</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="플립"><img src="${pageContext.request.contextPath}/images/poster5.jpg" alt="플립" title="플립"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">플립</div>
                                <div class="movie-releaseDate">2017.07.12</div>
                                <div class="movie-genre">멜로/로맨스</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.11</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="그녀"><img src="${pageContext.request.contextPath}/images/poster6.jpg" alt="그녀" title="그녀"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">그녀</div>
                                <div class="movie-releaseDate">2014.05.22</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.70</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="뷰티 인사이드"><img src="${pageContext.request.contextPath}/images/poster7.jpg" alt="뷰티 인사이드" title="뷰티 인사이드"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">뷰티 인사이드</div>
                                <div class="movie-releaseDate">2015.08.20</div>
                                <div class="movie-genre">멜로/로맨스</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>8.26</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie">
                    <div class="movie-wrap">
                        <div class="movie-poster">
                            <span title="콜 미 바이 유어 네임"><img src="${pageContext.request.contextPath}/images/poster8.jpg" alt="콜 미 바이 유어 네임" title="콜 미 바이 유어 네임"></span>
                        </div>
                        <div class="movie-info-wrap flex flex-justify font12">
                            <div class="movie-info">
                                <div class="movie-title font14 weight700">콜 미 바이 유어 네임</div>
                                <div class="movie-releaseDate">2018.03.22</div>
                                <div class="movie-genre">드라마</div>
                            </div>
                            <div class="movie-rate-wrap">
                                <div class="rate-icon font16">
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="movie-rate">
                                    <span>9.13</span>
                                </div>
                            </div>
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
    $(function () {
        var owl = $(".owl-carousel");
        owl.owlCarousel({
            items: 5,
            loop: true,
            dots: false,
            nav: true,
            autoplaySpeed: 300,
            autoplayHoverPause: true,
            autoplay: true,
            navText: [
        '<i class="fa fa-angle-left"></i>',
        '<i class="fa fa-angle-right"></i>'
    ]
        }); 
    });
    
    $(window).scroll(function(){
        var height = $(document).scrollTop();
        if (height > 200) {
            $(".main-head-wrap").css("background","#000");
        } else {
            $(".main-head-wrap").css("background","rgba(0,0,0,0.1)");
        }
    });

    $(function(){
    $(window).scroll(function(){
        if($(this).scrollTop() > 700) {
            $(".up").fadeIn("500");
        } else {
            $(".up").fadeOut("500");
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
<script src="${pageContext.request.contextPath}/js/logout.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/active.js"></script>
</html>