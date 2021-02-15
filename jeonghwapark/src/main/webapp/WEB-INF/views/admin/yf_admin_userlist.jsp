<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_userlist.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/table.css">
<script>
        $(function() {
            $(".modify").click(function() {
                $(".modal-wrapper").toggleClass("open");
            });
            $(".view").click(function() {
                $(".view-wrapper").toggleClass("open");
            });
        });
    </script>
    <style>
        td {
            border: 1px solid #b3b3b3;
        }
    </style>
<body>
    <!-- modal layer -->
    <div class="view-wrapper" style="z-index: 99999999999999999;">
        <!-- 바깥은 화면 전체 크기 -->
        <div class="modal">
            <!-- 실제 모달 크기 -->
            <form id="frm" name="" method="post" action="" enctype="multipart/form-data">
                <!-- <input type="hidden" name="empID" value="${empOne.empID}" /> -->
                <div class="modal-title">
                    <h2 class="noto font16 m-t5">회원 정보</h2>
                </div>
                <div class="modal-body flex">
                    <div class="body-left">
                        <div class="photo-area">
                            <img src="images/photo.jpg" alt="">
                        </div>
                    </div>
                    <div class="body-right">
                        <table style="width: 550px;">
                            <tr>
                                <td class="td-15 center">이메일</td>
                                <td colspan="3">
                                    <div class="p-l5">abc123@example.com</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">이름</td>
                                <td>
                                    <div class="p-l5">변백현</div>
                                </td>
                                <td class="td-15 center" style="background-color: #e8eff8;">성별</td>
                                <td>
                                    <div class="p-l5">남</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">생년월일</td>
                                <td colspan="3" class="p-l5">
                                    <span>1992</span>
                                    <span>-</span>
                                    <span>05</span>
                                    <span>-</span>
                                    <span>06</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">연락처</td>
                                <td colspan="3" class="p-l5">
                                    <span>010</span>
                                    <span>-</span>
                                    <span>1992</span>
                                    <span>-</span>
                                    <span>0506</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">우편번호</td>
                                <td colspan="3" class="p-l5">
                                    <span>04733</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">주소</td>
                                <td colspan="3" class="p-l5">
                                    <span>서울 성동구 왕십리로 16</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">상세주소</td>
                                <td colspan="3" class="p-l5">
                                    <span>트리마제</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">선호장르</td>
                                <td colspan="3" style="text-align: left; padding: 5px;">
                                    <div class="line flex" style="margin-bottom: 0;">
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>드라마</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" checked />
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
                                            <input type="checkbox" checked />
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
                                            <input type="checkbox" checked />
                                            <span>코미디</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" checked />
                                            <span>가족</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>애니메션</span>
                                        </div>
                                    </div>
                                    <div class="line flex">
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>에로</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" checked />
                                            <span>범죄</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" checked />
                                            <span>뮤지컬</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" checked />
                                            <span>모험</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" checked />
                                            <span>액션</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>다큐멘터리</span>
                                        </div>
                                    </div>
                                    <div class="line flex">
                                        <div class="element">
                                            <input type="checkbox" checked />
                                            <span>SF</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>서사</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox" checked />
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
                                            <input type="checkbox" checked />
                                            <span>영화음악</span>
                                        </div>
                                    </div>
                                    <div class="line flex">
                                        <div class="element">
                                            <input type="checkbox" />
                                            <span>서스펜스</span>
                                        </div>
                                        <div class="element">
                                            <input type="checkbox"/>
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
                    <button class="btn-on modify">수정</button>
                    <button class="btn-off view btn-close">취소</button>
                </div>
            </form>
        </div>
    </div>
    
    <!-- modal layer -->
    <div class="modal-wrapper" style="z-index: 9999999999999999999999999;">
        <!-- 바깥은 화면 전체 크기 -->
        <div class="modal">
            <!-- 실제 모달 크기 -->
            <form id="frm" name="" method="post" action="" enctype="multipart/form-data">
                <!-- <input type="hidden" name="empID" value="${empOne.empID}" /> -->
                <div class="modal-title">
                    <h2 class="noto font16 m-t5">회원 정보</h2>
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
                        <table style="width: 550px;">
                            <tr>
                                <td class="td-15 center">이메일</td>
                                <td colspan="3" class="p-l5">
                                    <input type="text" class="input-250" name="" id="" maxlength="" tabindex="1" />
                                    <span class="emailValidate p-r5" style="line-height: 35px;"><i class="far fa-check-circle correct p-r5 font14"></i>사용할 수 있는 이메일입니다.</span>
                                    <span class="emailWrong p-r5 none" style="line-height: 35px;"><i class="far fa-times-circle p-r5 font14 warning"></i>사용할 수 없는 이메일입니다.</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">이름</td>
                                <td class="p-l5">
                                    <input type="text" class="input-150" name="" id="" maxlength="" tabindex="2" />
                                </td>
                                <td class="td-15 center" style="background-color: #e8eff8;">성별</td>
                                <td class="p-l5">
                                    <select name="" id="" tabindex="3">
                                        <option value="">여</option>
                                        <option value="">남</option>
                                        <option value="">선택안함</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">생년월일</td>
                                <td colspan="3" class="p-l5">
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
                                <td class="center">연락처</td>
                                <td colspan="3" class="p-l5">
                                    <select name="" id="" tabindex="7">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="019">019</option>
                                    </select>
                                    <span>-</span>
                                    <input type="text" class="input-150" name="" id="" maxlength="4" tabindex="8" />
                                    <span>-</span>
                                    <input type="text" class="input-150" name="" id="" maxlength="4" tabindex="9" />
                                </td>
                            </tr>
                            <tr>
                                <td class="center">우편번호</td>
                                <td colspan="3" class="p-l5">
                                    <input type="text" class="input-100" tabindex="10">
                                    <button type="button" class="btn-off" tabindex="11">우편번호</button>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">주소</td>
                                <td colspan="3" class="p-l5">
                                    <input type="text" name="" id="" class="input-full" maxlength="100"  tabindex="12"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">상세주소</td>
                                <td colspan="3" class="p-l5">
                                    <input type="text" name="" id="" class="input-full" maxlength="100"  tabindex="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">선호장르</td>
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
    	<div class="logo open w15 p-t17 p-l15 bg-primary">
        	<a href="${pageContext.request.contextPath}/admin/admin_main"><span>YoungFlower</span></a>
        </div>
        <div class="logo collapsed none p-t17 p-lr15 center bg-primary">
            <!-- 메뉴 줄였을 때 뜰 로고 -->
            <a href="${pageContext.request.contextPath}/admin/admin_main"><span>YF</span></a>
        </div>
        <div class="top-head w85 bg-base">
            <%@include file="/WEB-INF/views/admin/admin_include/ADMIN_TOP.jsp"%>
        </div>
    </div>
    <div class="body flex">
    	<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_MENU.jsp"%>
        <div class="main w85 bg-base">
            <div class="main-head bg-white m10 p10">
                <span class="weight700 font16">회원 / 회원목록</span>
            </div>
            <div class="main-body bg-white m10 p10">
                <div class="search-wrap flex flex-justify m-b5">
                    <div class="">
                        <span class="btn-off">회원등록</span>
                    </div>
                    <div class="" style="z-index: 1;">
                        <form method="post" action="admin_userlist.html">
                            <select class="" name="searchOpt" style="border: 1px solid #000;">
                                <option value="useremail" id="useremail">회원이메일</option>
                                <option value="username" id="username">회원이름</option>
                                <option value="username" id="username">이메일+이름</option>
                            </select>
                            <input type="text" name="words" required style="margin-left: -2px; height: 30px;" />
                            <button type="submit" class="btn-on" style="margin-left: -2px;">회원검색</button>
                        </form>
                    </div>
                </div>
                <div class="user-table w100">
                    <table class="w100">
                        <tr class="center bg-base font14 under f6">
                            <td class="td-5">회원번호</td>
                            <td class="">회원이메일</td>
                            <td class="td-5">회원이름</td>
                            <td class="td-5">생년월일</td> <!-- 하루 전으로 입력됨 수정필요-->
                            <td class="td-3">성별</td>
                            <td class="td-5">우편번호</td>
                            <td class="td-15">주소</td>
                            <td class="td-10">상세주소</td>
                            <td class="td-3">통신사</td>
                            <td class="td-5">휴대폰번호</td>
                            <td class="td-5">가입일</td>
                            <td class="td-3">등급</td>
                            <td class="td-5">비고</td>
                        </tr>
                        <tr class="center">
                            <td class="td-5 under">10</td>
                            <td class="under view">
                                <span class="pointer">abc123@example.com</span>
                            </td>
                            <td class="td-5">변백현</td>
                            <td class="td-8">1992-05-06</td>
                            <td class="td-3">1</td>
                            <td class="td-5">04733</td>
                            <td class="td-15">서울 성동구 왕십리로 16</td>
                            <td class="td-10">트리마제</td>
                            <td class="td-5">skt</td>
                            <td class="td-7">01019920506</td>
                            <td class="td-8">2020-10-06</td>
                            <td class="td-3">1</td>
                            <td class="td-7">
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td class="td-5 under">9</td>
                            <td class="under view">
                                <span class="pointer">abc123@example.com</span>
                            </td>
                            <td class="td-5">변백현</td>
                            <td class="td-8">1992-05-06</td>
                            <td class="td-3">1</td>
                            <td class="td-5">04733</td>
                            <td class="td-15">서울 성동구 왕십리로 16</td>
                            <td class="td-10">트리마제</td>
                            <td class="td-5">skt</td>
                            <td class="td-7">01019920506</td>
                            <td class="td-8">2020-10-06</td>
                            <td class="td-3">1</td>
                            <td class="td-7">
                                <button class="s-btn-on modify">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td class="td-5 under">8</td>
                            <td class="under view">
                                <span class="pointer">abc123@example.com</span>
                            </td>
                            <td class="td-5">변백현</td>
                            <td class="td-8">1992-05-06</td>
                            <td class="td-3">1</td>
                            <td class="td-5">04733</td>
                            <td class="td-15">서울 성동구 왕십리로 16</td>
                            <td class="td-10">트리마제</td>
                            <td class="td-5">skt</td>
                            <td class="td-7">01019920506</td>
                            <td class="td-8">2020-10-06</td>
                            <td class="td-3">1</td>
                            <td class="td-7">
                                <button class="s-btn-on">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td class="td-5 under">7</td>
                            <td class="under view">
                                <span class="pointer">abc123@example.com</span>
                            </td>
                            <td class="td-5">변백현</td>
                            <td class="td-8">1992-05-06</td>
                            <td class="td-3">1</td>
                            <td class="td-5">04733</td>
                            <td class="td-15">서울 성동구 왕십리로 16</td>
                            <td class="td-10">트리마제</td>
                            <td class="td-5">skt</td>
                            <td class="td-7">01019920506</td>
                            <td class="td-8">2020-10-06</td>
                            <td class="td-3">1</td>
                            <td class="td-7">
                                <button class="s-btn-on">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td class="td-5 under">6</td>
                            <td class="under view">
                                <span class="pointer">abc123@example.com</span>
                            </td>
                            <td class="td-5">변백현</td>
                            <td class="td-8">1992-05-06</td>
                            <td class="td-3">1</td>
                            <td class="td-5">04733</td>
                            <td class="td-15">서울 성동구 왕십리로 16</td>
                            <td class="td-10">트리마제</td>
                            <td class="td-5">skt</td>
                            <td class="td-7">01019920506</td>
                            <td class="td-8">2020-10-06</td>
                            <td class="td-3">1</td>
                            <td class="td-7">
                                <button class="s-btn-on">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td class="td-5 under">5</td>
                            <td class="under view">
                                <span class="pointer">abc123@example.com</span>
                            </td>
                            <td class="td-5">변백현</td>
                            <td class="td-8">1992-05-06</td>
                            <td class="td-3">1</td>
                            <td class="td-5">04733</td>
                            <td class="td-15">서울 성동구 왕십리로 16</td>
                            <td class="td-10">트리마제</td>
                            <td class="td-5">skt</td>
                            <td class="td-7">01019920506</td>
                            <td class="td-8">2020-10-06</td>
                            <td class="td-3">1</td>
                            <td class="td-7">
                                <button class="s-btn-on">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td class="td-5 under">4</td>
                            <td class="under view">
                                <span class="pointer">abc123@example.com</span>
                            </td>
                            <td class="td-5">변백현</td>
                            <td class="td-8">1992-05-06</td>
                            <td class="td-3">1</td>
                            <td class="td-5">04733</td>
                            <td class="td-15">서울 성동구 왕십리로 16</td>
                            <td class="td-10">트리마제</td>
                            <td class="td-5">skt</td>
                            <td class="td-7">01019920506</td>
                            <td class="td-8">2020-10-06</td>
                            <td class="td-3">1</td>
                            <td class="td-7">
                                <button class="s-btn-on">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td class="td-5 under">3</td>
                            <td class="under view">
                                <span class="pointer">abc123@example.com</span>
                            </td>
                            <td class="td-5">변백현</td>
                            <td class="td-8">1992-05-06</td>
                            <td class="td-3">1</td>
                            <td class="td-5">04733</td>
                            <td class="td-15">서울 성동구 왕십리로 16</td>
                            <td class="td-10">트리마제</td>
                            <td class="td-5">skt</td>
                            <td class="td-7">01019920506</td>
                            <td class="td-8">2020-10-06</td>
                            <td class="td-3">1</td>
                            <td class="td-7">
                                <button class="s-btn-on">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td class="td-5 under">2</td>
                            <td class="under view">
                                <span class="pointer">abc123@example.com</span>
                            </td>
                            <td class="td-5">변백현</td>
                            <td class="td-8">1992-05-06</td>
                            <td class="td-3">1</td>
                            <td class="td-5">04733</td>
                            <td class="td-15">서울 성동구 왕십리로 16</td>
                            <td class="td-10">트리마제</td>
                            <td class="td-5">skt</td>
                            <td class="td-7">01019920506</td>
                            <td class="td-8">2020-10-06</td>
                            <td class="td-3">1</td>
                            <td class="td-7">
                                <button class="s-btn-on">수정</button>
                                <button class="s-btn-off">삭제</button>
                            </td>
                        </tr>
                        <tr class="center">
                            <td class="td-5 under">1</td>
                            <td class="under view">
                                <span class="pointer">abc123@example.com</span>
                            </td>
                            <td class="td-5">변백현</td>
                            <td class="td-8">1992-05-06</td>
                            <td class="td-3">1</td>
                            <td class="td-5">04733</td>
                            <td class="td-15">서울 성동구 왕십리로 16</td>
                            <td class="td-10">트리마제</td>
                            <td class="td-5">skt</td>
                            <td class="td-7">01019920506</td>
                            <td class="td-8">2020-10-06</td>
                            <td class="td-3">1</td>
                            <td class="td-7">
                                <button class="s-btn-on">수정</button>
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
<script src="${pageContext.request.contextPath}/js/logout.js"></script>
<script src="${pageContext.request.contextPath}/js/admin_common.js"></script>
</html>