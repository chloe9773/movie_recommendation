<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_HEADER.jsp"%>
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin_userlist.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/table.css">
<style>
	body {
		overflow: visible;
	}
	tr:first-child {
		background-color: transparent;
	}
	
	tr {
		border: 1px solid #d4d4d4;
	}
	
	td:first-child {
		background-color: #e8eff8;
		text-align: center;
		font-weight: 700;
	}
	
	#btn-cmt {
		display: inline-block;
		height: 80px;
		padding: 5px 10px; /* 가변 타입*/
		background-color: #3f51b5;
		border-radius: 2px;
		color: #fff;
		border: 1px solid transparent;
		cursor: pointer;
		font-size: 12px;
	}
	
	textarea:focus {
    	outline: none;
	}
</style>
<body>
	<div class="page-wrap bg-base p10">
		<div class="container p10 bg-white font20" style="width: 65%; margin: 0 auto;">
			<div class="title">
				<h3 class="tomato font18 noto m-t10 m-b20">
					<i class="fas fa-question-circle" style="color: #03DAC5;"></i> 1:1
					문의게시판
				</h3>
			</div>
			<form id="">
				<div class="board-wrap bg-white">
					<div class="article">
						<table>
							<tr>
								<td class="td-10">제목</td>
								<td class="p-l8 font15" id="title" colspan="3">${question.qTitle}</td>
							</tr>
							<tr>
								<td>작성자</td>
								<td class="p-l8 font15">${question.qWriter}</td>
								<td class="bg-graph center weight700 td-10" id="dateTitle">작성일</td>
								<td class="p-l8 font15" id="date">${question.regdate}</td>
							</tr>
							<tr id="content" style="height: 250px;">
								<td>내용</td>
								<td class="p-l8 font15" colspan="3">${question.qContent}</td>
							</tr>
							<tr>
								<td><i class="fas fa-folder-open font16"></i></td>
								<td colspan="3"><input type="file" class="w100 font12"
									style="border: 1px solid transparent" /></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="flex flex-justify">
					<button type="button" class="btn-normal m-t5" onclick="location.href='${pageContext.request.contextPath}/qna'">목록으로</button>
					<c:if test="${question.reStep == 0}">
						<button type="button" class="btn-normal m-t5" onclick="location.href='${pageContext.request.contextPath}/qna/yf_question_reply?qid=${question.qid}'">답변하기</button>
					</c:if>
					<c:if test="${question.reStep != 0 and sessionScope.mUserName == question.qWriter}">
						<button type="button" class="btn-normal m-t5" onclick="modifyQuestion(${question.qid}, '${sessionScope.mUserName}');">수정하기</button>
					</c:if>
				</div>
			</form>
			<c:if test="${question.reStep != 0}">
				<div id="InsertComment" class="">
					<hr style="margin: 30px 0; border: 1px solid #eee;" />
					<div class="p-lr20">
						<div id="commentList"></div>
						<!-- ajax 저당된 댓글 목록을 표시 -->
						<!-- <hr style="margin: 30px 0; border: 1px solid #f7f7f7;" /> -->
						<div style="margin-top: 20px;">
							<form id="frm">
								<!-- ajax로 자료 "전체" 전송하기(input -> name 사용) 위한 id-->
								<input type="hidden" name="aid" value="${question.qid}" /> 
								<input type="hidden" name="who" id="commentWriter" value="${sessionScope.mUserName}" />
								<div class="flex flex-justify">
									<textarea name="comment" id="comment" class="p10 font12 m-r4" placeholder="댓글 내용을 입력하세요." style="border: 1px solid #e7e7e7; width: 95%; height: 80px;" maxlength="200"></textarea>
									<div class="right">
										<button type="submit" id="btn-cmt" class="font15 border3 f6" style="">등록</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</c:if>
		</div>
	</div>
</body>
<script>
	function getEditor() {
		CKEDITOR.replace('editor', {
            uiColor: '#CCCCCC'
        });
        CKEDITOR.config.height = 300;
	}

	function modifyCmt(cid){
		var comment = $('[name = comment_' + cid + ']').val();

		var formData = {
				cid : cid,
				comment : comment
			}

		$.ajax({
			url : "${pageContext.request.contextPath}/comment/yf_comment_modify",
			tyep : "POST",
			data : formData,
			success : function(resData) {
				alert("댓글이 수정되었습니다.");
				listCmt();
			},
			erorr : function() {
				alert("관리자에게 문의하세요.");
			},
			complete : function() {
			}
		});
	}

	function changeCmt(cid, comment) {
		var a = '<div class="noto font14 viewCmt_' + cid + '" style="margin-top:5px; color:#666;">';
			a += '<textarea name="comment_' + cid + '" class="noto p10 font14" style="border:1px solid #e7e7e7; width:100%; height:100px;">' + comment + '</textarea>';
			a += '</div>';
			
		var btn = '<button class="s-btn-on m-l4" onClick="modifyCmt(' + cid + ');" >수정</button>';
		
		$(".viewCmt_" + cid).html(a);
		$(".cmtBtngrp_" + cid).html(btn);
	}

	function deleteCmt(cid) {
		var msg = "선택하신 댓글을 삭제하시겠습니까?";

		if (confirm(msg)) {
			$.ajax({
				url : "${pageContext.request.contextPath}/comment/yf_comment_delete",
				tyep : "POST",
				data : {cid : cid},
				success : function(resData) {
					alert("댓글이 삭제 되었습니다.");
					listCmt();
				},
				erorr : function() {
					alert("관리자에게 문의하세요.");
				},
				complete : function() {
				}
			});
		}	
	}
	
	function modifyQuestion(qid, currUser) {

		$.ajax({
			url: '${pageContext.request.contextPath}/qna/yf_question_modify_checkAuth',
			type: 'POST',
			data: {
				qid : qid,
				currUser : currUser
			},
			success: function(resData){
				if (resData == "success"){
					var title = '<input type="text" id="qTitle" name="qTitle" class="input-full" style="border:1px solid transparent" tabindex="1" autofocus />';
					var content = '<td colspan="4" style="padding:0;"><textarea id="editor" name="qContent" class="w100" style="border:1px solid transparent;" tabindex="2"></textarea></td>';
					var dateTitle = "수정일";
					var date = getTimeStamp();
						
					$("#title").html(title);
					$("#content").html(content);
					$("#dateTitle").html(dateTitle);
					$("#date").html(date);

					getEditor();
					
				} else {
					alert("수정권한이 없어 수정할 수 없습니다.");
				}
			},
			error: function() {
				alert("시스템 에러");
			}
		});
	}

	function checkCmt() { //value : javascript , val : jquery
		if ($("#comment").val() == '') {
			alert("댓글 내용을 입력하세요.");
			$("#comment").focus();
			return false; // 프로그램이 제대로 완성이 안됐다는 의미
		}
		
		var formData = $("#frm").serialize(); //form 안의 name 값의 데이터를 전부 가져오기
		$.ajax({
			url : "${pageContext.request.contextPath}/comment/yf_comment_register", 
			tyep : "POST",
			data : formData,
			success : function(resData) {
				alert("댓글이 등록 되었습니다.");
				listCmt();
				$("#comment").val(''); //댓글창 초기화
			},
			erorr : function() {
				alert("관리자에게 문의하세요.");
			},
			complete : function() {
			}
		});		
	}

	function listCmt() {
		var formData = $("#frm").serialize();
		var curUser = $("#commentWriter").val();

		$.ajax({
			url : "${pageContext.request.contextPath}/comment/yf_comment_list",
			tyep : "POST",
			data : formData, //내 게시판 코드, 게시물 번호가 필요해서 사용
			success : function(resData) {
				//resData.list -> who(key), 관리자(value)
				var a = '';
				$.each(
						resData.list,
						function(key, value) {//내용을 key, value 출력하는 jquery
							if (curUser == value.who){
								a += '<div class="comment_' + value.cid +'"><div class="flex" style="margin:10px 0;"><div style="width:6%;">';
								a += '<span class="bg-primary center" style="width:45px; hegith:10px; border-radius:50%; display:inline-block; line-height:45px;">';
								a += '<i class="far fa-user f6 font16"></i></span></div><div class="m-l4" style="width:94%;">';
								a += '<div class="noto font14 weight700" style="color:#555;">';
								a += '<span>' + value.who + '</span>';
								a += '<span style="margin-left: 20px">';
								a += '<i class="far fa-calendar-alt m-r4"></i>' + value.regdate + '</span></div>';
								a += '<div class="noto font14 viewCmt_' + value.cid + '" style="margin-top:5px; color:#666;">';
								a += '<span>' + value.comment + '</span>';
								a += '</div></div></div>';
								a += '<div class="cmtBtngrp_' + value.cid + '" style="text-align:right;">';
								a += '<button class="s-btn-on" onClick="changeCmt(' + value.cid + ', \'' + value.comment + '\')" style="background-color:#3f51b5;">수정</button>'; //comment 앞에 특수문자 처리하기
								a += '<button class="s-btn-off m-l4" onClick="deleteCmt(' + value.cid + ');" >삭제</button>';
								a += '</div>';
								a += '<hr style="margin: 20px 0; border: 1px solid #f7f7f7;" />';
								a += '</div>';
							} else {
								a += '<div class="comment_' + value.cid +'"><div class="flex" style="margin:10px 0; padding-bottom:10px;"><div style="width:6%;">';
								a += '<span class="bg-primary center" style="width:45px; hegith:10px; border-radius:50%; display:inline-block; line-height:45px;">';
								a += '<i class="far fa-user f6 font16"></i></span></div><div class="m-l4" style="width:94%;">';
								a += '<div class="noto font14 weight700" style="color:#555;">';
								a += '<span>' + value.who + '</span>';
								a += '<span style="margin-left: 20px">';
								a += '<i class="far fa-calendar-alt m-r4"></i>' + value.regdate + '</span></div>';
								a += '<div class="noto font14 viewCmt_' + value.cid + '" style="margin-top:5px; color:#666;">';
								a += '<span>' + value.comment + '</span>';
								a += '</div></div></div>';
								a += '<div class="cmtBtngrp_' + value.cid + '" style="text-align:right;">';
								a += '</div>';
								a += '<hr style="margin: 20px 0;border: 1px solid #f7f7f7;" />';
								a += '</div>';
							}
							
						});
								
				var b = '';
				b += '<h2 class="font12">댓글 : ' + resData.cCount + '</h2>';
				
				$("#commentList").html(b + a); //위에서 작업한 변수 a 내용을 id = commentList에 표시
				},
				erorr : function() {
					alert("관리자에게 문의하세요.");
				},
				complete : function() {}
			});
	}
	
	$("#btn-cmt").click(function() {
		checkCmt();
	});

	$(function(){
		listCmt();
	});
</script>
<script src="${pageContext.request.contextPath}/js/admin_common.js"></script>
</html>