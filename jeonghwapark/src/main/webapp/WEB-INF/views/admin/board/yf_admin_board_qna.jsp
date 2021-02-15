<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_HEADER.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin_userlist.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/table.css">
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
	<div class="page-wrap bg-base p10">
		<div class="container p10 bg-white" style="width:65%;margin: 0 auto;">
			<div class="qTitle">
				<h3 class="tomato font18 noto m-t10 m-b20">
					<i class="fas fa-question-circle" style="color:#03DAC5;"></i> 1:1 문의게시판
				</h3>
			</div>
			<div class="btn-grp flex flex-justify m-b2">
				<div class="search-wrap m-b5 bg-white right">
					<span class="btn-normal bg-noti" style="background-color:#985EFF;cursor:default;">전체게시물 ${count}개</span>
				</div>
				<div>
					<form method="post" action="${pageContext.request.contextPath}/qna">
						<select class="pointer" name="searchOpt" style="border: 1px solid #d4d4d4;">
							<option value="all">전체검색</option>
							<option name="qTitle" id="qTitle" value="qTitle">게시물제목</option>
							<option name="qWriter" id="qWriter"  value="qWriter">작성자</option>
						</select> 
						<input type="text" name="words" required style="margin-left: -2px; height:30px; border: 1px solid #d4d4d4;" autocomplete="off" />
						<button type="submit" class="btn-normal" style="margin-left: -2px;background-color:#e0e0e0;color:#333;height:30px;">게시글검색</button>
						<button class="btn-off" id="questionDeleteAll" style="color:#333;">선택삭제</button>
					</form>
				</div> 
			</div>
			<div class="board-wrap bg-white">
				<table style="table-layout: fixed;">
					<tr class="weight700 center tr-color font14 f6">
                        <td class="td-3">
                            <input type="checkbox" class="pointer" onClick="chkAll();" id="chkAll" />
                        </td>
                        <td class="td-5">번호</td>
                        <td>게시물제목</td>
                        <td class="td-5">작성자</td>
                        <td class="td-8">날짜</td>
                        <td class="td-7">관리</td>
                    </tr>
                    <c:forEach var="questionList" items="${list}" varStatus="status">
                    	<tr class="font14">
	                        <td class="center">
	                            <input type="checkbox" name="chk" class="chk pointer" data-uid="${questionList.qid}" />
	                        </td>
	                        <td class="center">${(count - status.index) - ((curPage - 1) * end)}</td>
	                        <td class="left p-lr10">
	                        <c:forEach begin="1" end="${questionList.reLevel}">
	                        	&nbsp;<img src="${pageContext.request.contextPath}/images/icon_reply.gif" />
	                        </c:forEach>
	                            <a href="${pageContext.request.contextPath}/qna/yf_qna_view?qid=${questionList.qid}" class="under weight700 blk">${questionList.qTitle}</a>
	                        </td>
	                        <td class="center">${questionList.qWriter}</td>
	                        <td class="center">${questionList.regdate}</td>
	                        <td class="center">
	                        	<c:if test="${questionList.reStep == 0}">
	                            	<button type="button" class="s-btn-on" onClick="location.href='${pageContext.request.contextPath}/qna/yf_question_reply?qid=${questionList.qid}'" style="background-color:#985EFF;">답변</button>
	                            </c:if>
	                            <c:if test="${question.reStep != 0 and sessionScope.mUserName == questionList.qWriter}">
	                            	<button type="button" class="s-btn-off" onClick="articleDelete(${questionList.qid});">삭제</button>
	                            </c:if>
	                        </td>
                    	</tr>
                    </c:forEach>
				</table>
			</div>
			<c:if test="${count > 0}">
				<div class="page-grp center m-t10">
					<c:choose>
						<c:when test="${curPage > 1}">
							<span class="page"> <a
								href="${pageContext.request.contextPath}/qna?curPage=1&searchOpt=${searchOpt}&words=${words}"><i
									class="fas fa-angle-double-left"></i></a>
							</span>
						</c:when>
						<c:otherwise>
							<span class="page"> <i class="fas fa-angle-double-left"></i>
							</span>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${curPage > 1}">
							<span class="page"> <a
								href="${pageContext.request.contextPath}/qna?curPage=${curPage-1}&searchOpt=${searchOpt}&words=${words}"><i
									class="fas fa-angle-left"></i></a>
							</span>
						</c:when>
						<c:otherwise>
							<span class="page"> <i class="fas fa-angle-left"></i>
							</span>
						</c:otherwise>
					</c:choose>
					<c:forEach begin="${blockBegin}" end="${blockEnd}" var="num">
						<c:if test="${selected != num}">
							<a
								href="${pageContext.request.contextPath}/qna?curPage=${num}&searchOpt=${searchOpt}&words=${words}">
								<span class="page"> ${num} </span>
							</a>
						</c:if>

						<c:if test="${selected == num}">
							<span class="page page-active"> <a href="" class="f6">${num}</a>
							</span>
						</c:if>
					</c:forEach>
					<c:choose>
						<c:when test="${curPage != totalPage }">
							<a
								href="${pageContext.request.contextPath}/qna?boardCode=${boardCode}&curPage=${curPage+1}&searchOpt=${searchOpt}&words=${words}">
								<span class="page"> <i class="fas fa-angle-right"></i>
							</span>
							</a>
						</c:when>
						<c:otherwise>
							<span class="page"> <i class="fas fa-angle-right"></i>
							</span>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${curPage != totalPage }">
							<span class="page"> <a
								href="${pageContext.request.contextPath}/qna?curPage=${totalPage}&searchOpt=${searchOpt}&words=${words}"><i
									class="fas fa-angle-double-right"></i></a>
							</span>
						</c:when>
						<c:otherwise>
							<span class="page"> <i class="fas fa-angle-double-right"></i>
							</span>
						</c:otherwise>
					</c:choose>
				</div>
			</c:if>
		</div>
	</div>
</body>
<script>
    $(function () {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    })
</script>
<script>
	$("#articleDeleteAll").click(function() {
	    var str = confirm("선택하신 게시물을 삭제하시겠습니까?\n연결된 댓글 및 모든 데이터가 삭제 됩니다.");
	    var boardCode = $(".chk").attr("data-code");
	    if( str ) {
	        var chkArr = new Array();
	        var boardArr = new Array();
	        $(".chk:checked").each(function () {
	        	chkArr.push($(this).attr("data-uid"));
	        });
	        
	        
	        $.ajax({
	        	type : "POST",
	        	url : "${pageContext.request.contextPath}/article/yf_article_delete_all",
	        	data : { 
	        		chkArr : chkArr,
	        		boardCode : boardCode
	        	},
	        	success: function (data) {
	        		if( data == "success" ) {
	        			alert('선택하신 게시물이 삭제 되었습니다.');
	                    window.location.reload();
	                    
	        		}else{
	        			alert('게시물 삭제에 실패했습니다.');
	                    window.location.reload();
	        		}
	            },
	            error : function() {
	            	alert("선택하신 게시물 정보가 없습니다.");
	            }
	        });
	    }
	});
	
	function articleDelete(qid) {
		$.ajax({
        	type : "POST",
        	url : "${pageContext.request.contextPath}/qna/yf_question_delete",
        	data : { 
        		qid : qid
        	},
        	success: function (data) {
        		if( data == "success" ) {
        			alert('선택하신 게시물이 삭제 되었습니다.');
                    window.location.reload();
                    
        		} else{
        			alert('게시물 삭제에 실패했습니다.');
                    window.location.reload();
        		}
            },
            error : function() {
            	alert("선택하신 게시물 정보가 없습니다.");
            }
        });
	}
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