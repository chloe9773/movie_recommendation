<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_userlist.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/table.css">
<style>
    a {
        color: #fff;
    }

    tr:first-child {
        background-color: #5600e8;
    }
    .tr-even {
        background-color: #e8eff8;
    }

    td {
        border: 1px solid #d4d4d4;
    }

    .main-head, .main-wrap, .board-list {
        box-shadow: 3px 3px 3px 3px rgba(0,0,0, .5); 
        box-shadow: -3px 3px 3px -3px rgba(0,0,0, .5);
    }

    table a {
        color: #000;
    }
</style>
<body>
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
                <span class="weight700 font16">Board / 게시판 생성</span>
            </div>
            <div class="main-wrap bg-white m10 p10">
                <div class="board-maker">
                    <form id="frm" method="post">
                        <table class="w100">
                            <tr class="center">
                                <td class="weight700 td-10 bg-graph font14">게시판 관리자</td>
                                <td class="td-15 p-lr3 bg-white">
                                    <select id="boardAdmin" name="boardAdmin" class="sel-100"></select>
                                </td>
                                <td class="weight700 td-10 bg-graph font14">게시판 분류</td>
                                <td class="td-15 p-lr3 bg-white">
                                    <select id="boardDivision" name="boardDivision" class="sel-100">
                                        <option value="free">자유게시판</option>
                                        <option value="noti">공지게시판</option>
                                    </select>
                                    <span class="color"></span>
                                </td>
                                <td class="weight700 td-10 bg-graph font14">게시판 코드</td>
                                <td class="td-15 p-lr3 bg-white">
                                    <input id="boardCode" name="boardCode" type="text" class="input-full" maxlength="10" />
                                </td>
                                <td class="weight700 td-10 bg-graph font14">게시판 생성자</td>
                                <td class="td-15 p-lr3 bg-white">
                                    <input type="text" class="input-full" placeholder="${sessionScope.mName}" value="${sessionScope.Name}" readonly/>
                                    <input id="boardMaker" name="boardMaker" type="hidden" class="input-full" value="${sessionScope.mUserName}" readonly/>
                                </td>
                            </tr>
                            <tr class="center">
                                <td class="weight700 td-10 bg-graph font14">게시판 제목</td>
                                <td colspan="7" class="td-15 p-lr3 bg-white">
                                	<input id="boardTitle" name="boardTitle" type="text" class="input-full" maxlength="20" />
                                </td>
                            </tr>
                            <tr class="center">
                                <td class="weight700 td-10 bg-graph font14">읽기 권한</td>
                                <td class="td-15 p-lr3 bg-white">
                                    <select id="boardRead" name="boardRead" class="boardAuth sel-100"></select>
                                </td>
                                <td class="weight700 td-10 bg-graph font14">쓰기 권한</td>
                                <td class="td-15 p-lr3 bg-white">
                                    <select id="boardWrtie" name="boardWrite" class="boardAuth sel-100"></select>
                                </td>
                                <td class="weight700 td-10 bg-graph font14">댓글 권한</td>
                                <td class="td-15 p-lr3 bg-white">
                                    <select id="boardReply" name="boardReply" class="boardAuth sel-100"></select>
                                </td>
                                <td class="weight700 td-10 bg-graph font14">다운 권한</td>
                                <td class="td-15 p-lr3 bg-white">
                                    <select id="boardDownload" name="boardDownload" class="boardAuth sel-100"></select>
                                </td>
                            </tr>
                        </table>
                        <div class="btn-grp center m-t10">
                            <button type="button" class="btn-on" onClick="createBoard();">생성하기</button>
                            <button type="reset" class="btn-off" type="reset">취소하기</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="main-head bg-white m10 p10 m-t20">
                <span class="weight700 font16">Board / 게시판 목록</span>
            </div>
            <div class="board-list bg-white m10 p10">
          		<div class="flex flex-justify">
	            	<div class="">
	                    <span class="btn-normal m-b5" style="height: 30px; background-color: #3700b3;">생성된 게시판 수 ${count}개</span>
	                </div>
	                <div class="btn-grp flex flex-justify m-b5">
						<div>
							<form method="post" action="${pageContext.request.contextPath}/admin/">
								<select class="" name="searchOpt" style="height: 30px; border: 1px solid #d4d4d4;">
							    	<option value="boardCode">게시판코드</option>
							        <option value="boardTitle">게시판제목</option>
							        <option value="boardAdmin">관리자</option>
							    </select>
							    <input type="text" name="words" required style="margin-left:-2px; height: 30px; border: 1px solid #d4d4d4;" />
							    <button type="submit" class="btn-on">검색</button>
							</form>
						</div>
						<div>
	                		<button class="btn-off m-l2" id="boardDeleteAll">선택삭제</button>
						</div>
					</div>
				</div>
                <table class="w100">
                    <tr class="center under tr-color f6 weight700 font14">
                        <td class="td-5">
                            <input type="checkbox" onClick="chkAll();" id="chkAll" />
                        </td>
                        <td class="td-10">게시판분류</td>
                        <td class="td-10">게시판코드</td>
                        <td>게시판 제목</td>
                        <td class="td-10">관리자</td>
                        <td class="td-5">읽기권한</td>
                        <td class="td-5">쓰기권한</td>
                        <td class="td-5">댓글권한</td>
                        <td class="td-5">다운권한</td>
                        <td class="td-7">게시판관리</td>
                    </tr>
                    <c:forEach var="board" items="${list}">
	                    <tr class="center font14">
	                        <td class="td-5">
	                            <input type="checkbox" name="chk" class="chk" data-uid="${board.boardCode}" />
	                        </td>
	                        <c:if test="${board.boardDivision == 'noti'}">
	                        	<td>공지게시판</td>
	                        </c:if>
	                        <c:if test="${board.boardDivision ne 'noti'}">
	                        	<td>자유게시판</td>
	                        </c:if>
	                        <td>${board.boardCode}</td>
	                        <td>
	                        	<a href="${pageContext.request.contextPath}/yf_user/yf_user_board?boardCode=${boardCode}">${board.boardTitle}</a>
	                        </td>
	                        <td>${board.boardAdmin}</td>
	                        <td>${board.boardRead}</td>
	                        <td>${board.boardWrite}</td>
	                        <td>${board.boardReply}</td>
	                        <td>${board.boardDownload}</td>
	                        <td>
	                            <span class="s-btn-on">수정</span>
	                            <span class="s-btn-off" onClick="boardDelete('${board.boardCode}');">삭제</span>
	                        </td>
	                    </tr>
	                </c:forEach>
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
</body>
<script>
    $(function() {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    });
</script>
<script>
	function boardDeleteAll() {
		var str = confirm("삭제 후 복구는 불가능합니다.\n선택하신 정보를 삭제하시겠습니까?");
	    
	    if( str ) {
	        var chkArr = new Array();
	        $(".chk:checked").each(function () {
	        	chkArr.push($(this).attr("data-uid"));
	        });
	        
	        //alert(chkArr);
	                
	        $.ajax({
	        	url 	: "${pageContext.request.contextPath}/board/yf_admin_board_delete_all",
	        	type 	: "POST", 	
	        	data 	: { chkArr : chkArr },
	        	success	: function (resData) {
	        		alert("삭제되었습니다.");
		    		window.location.reload();
	            },
	            error 	: function() {
	            	alert("선택하신 정보가 없습니다.");
	            }
	        });
	    }
	}
	
	function boardDelete(boardCode) {
		var str = confirm("삭제 후 복구는 불가능합니다.\n선택하신 정보를 삭제하시겠습니까?");
	    
	    if( str ) {	                
	        $.ajax({
	        	url 	: "${pageContext.request.contextPath}/board/yf_admin_board_delete",
	        	type 	: "POST", 	
	        	data 	: { boardCode : boardCode },
	        	success	: function (resData) {
	        		alert("삭제되었습니다.");
		    		window.location.reload();
	            },
	            error 	: function() {
	            	alert("선택하신 정보가 없습니다.");
	            }
	        });
	    }
	}

$(function() {
	$("#boardDeleteAll").click(function() {
		boardDeleteAll();
	});
});

</script>
<script>
	function createBoard() {

		//alert("dsfsd");	
		if( $.trim($("#boardTitle").val()) == '' ) {
			alert("게시판 제목을 입력하세요.");
			$("#boardTitle").focus();
			return false;
		}

		if( $.trim($("#boardCode").val()) == '' ) {
			alert("게시판 제목을 입력하세요.");
			$("#boardCode").focus();
			return false;
		}

		$.ajax({
			url		: "${pageContext.request.contextPath}/board/yf_admin_board_create",
			type	: "POST",
			data	: $("#frm").serialize(),
			success	: function(resData) {
				alert( $("#boardTitle").val() + "게시판이 생성되었습니다."); // 실행 안됨?
				window.location.href = "${pageContext.request.contextPath}/board";			
			},
			error :function() {
				window.location.href = "${pageContext.request.contextPath}/board";			
			}
		});
	}

	function loadAdmin() {
		$.ajax({
			url : '${pageContext.request.contextPath}/board/yf_get_manager',
			type : 'POST',
			success : function (resData) {
				$.each(resData, function(key, value) {
					$("#boardAdmin").append("<option value="+value.mUserName+">"+value.mName+"</option>");
				});
			},
			error : function() {
				alert("시스템 에러");
			}
		});
	}

	function loadAuth() {
		$.ajax({
			url : '${pageContext.request.contextPath}/board/yf_get_auth',
			type : 'POST',
			success : function (resData) {
				$.each(resData, function(key, value) {
					$(".boardAuth").append("<option value="+value.authLevel+">"+value.auth+"</option>");
				});
			},
			error : function() {
				alert("시스템 에러");
			}
		});
	}
	
	$(function(){
		loadAdmin();
		loadAuth();
	});
</script>
<script>
	var flag = false; 
	function chkAll() {
	
		var chk = document.getElementsByName("chk");
		if( flag == false) { //선택 x
			flag = true;
	
			for(var i = 0; i < chk.length; i++) {
				chk[i].checked = true;
			}
			
		}else{
			flag = false;
			for(var i = 0; i < chk.length; i++) {
				chk[i].checked = false;
			}
		}
		
	}
</script>
<script src="${pageContext.request.contextPath}/js/logout.js"></script>
<script src="${pageContext.request.contextPath}/js/admin_common.js"></script>
</html>