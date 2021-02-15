<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_userlist.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/table.css">
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<style>
	body {
		height: 700px;
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
		<div class="container p10 bg-white font20"
			style="width: 60%; margin: 0 auto;">
			<div class="title">
				<h3 class="tomato font18 noto m-t10 m-b20">
					<i class="fas fa-question-circle" style="color: #03DAC5;"></i> 1:1
					문의게시판
				</h3>
			</div>
			<div class="board-wrap bg-white">
				<div class="article">
					<form method="post" id="frm" action="${pageContext.request.contextPath}/qna/yf_question_reply" enctype="multipart/form-data">
						<input type="hidden" name="qid" value="${question.qid}" />
						<table>
							<tr>
								<td class="td-10">제목</td>
								<td class="p-l8 font15" colspan="3">
									<input type="text" name="qTitle" id="qTitle" class="input-full" value="${question.qTitle} 답변" maxlength="50" style="border:1px solid transparent;" required/>
								</td>
							</tr>
							<tr>
								<td>작성자</td>
								<td class="p-l8 font15" colspan="3">
									<input type="text" name="qWriter" id="qWriter" class="" value="${sessionScope.mUserName}" readonly style="border:1px solid transparent;"/>
								</td>
							</tr>
							<tr style="height: 250px;">
								<td class="font15" colspan="4" style="background-color:#fff; padding-left: 0; padding-right: 0;">
									<textarea id="editor" name="qContent" class="w100" style="border:1px solid  transparent;"></textarea>
				                        <script>
				                            CKEDITOR.replace('editor', {
				                                uiColor: '#CCCCCC'
				                            });
				                            CKEDITOR.config.height = 300;
				                        </script>
								</td>
							</tr>
							<tr>
								<td><i class="fas fa-folder-open font16"></i></td>
								<td colspan="3">
									<input type="file" name="files" class="w100 font12" style="border: 1px solid transparent" />
								</td>
							</tr>
						</table>
						<div class="flex flex-justify">
							<div>
								<button type="button" class="btn-normal m-t5" onclick = "location.href = '${pageContext.request.contextPath}/qna'">목록으로</button>
							</div>
							<div class="">
								<button type="submit" class="btn-normal m-t5">등록하기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/js/admin_common.js"></script>
</html>