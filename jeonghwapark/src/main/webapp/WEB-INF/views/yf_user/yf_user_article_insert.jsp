<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_HEADER.jsp"%>
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
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
        <div class="board-head f6">
            <div class="head-wrap weight700 font18 m-b50 w100">
                <div class="bg">
                    <img src="${pageContext.request.contextPath}/images/login-bg.jpg" alt="" class="w100">
                </div>
                <div class="boardTitle">
                    <span>커뮤니티</span>
                </div>
            </div>
        </div>
        <input type="hidden" id="boardCode" value="${boardCode}" />
        <div class="board-body f6 m-lr300">
            <div class="article">
                <form id="frm" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/article/yf_article_insert">
                    <div class="article-title flex flex-justify">
                    	<input type="hidden" name="writer" value="${sessionScope.mUserName}" />
                        <div class="title" style="width: 80%;">
                            <input type="text" class="m-b10 font12" name="title" id="title" placeholder="제목" maxlength="40" tabindex="1" required style="border:1px solid transparent;" />
                        </div>
                        <div class="cat" style="background-color: #fff; width: 19%; height: 35px;">
                            <span class="m-l10 m-r30 font12" style="color: #999;">게시판</span>
                            <select name="boardCode" id="articleCategory" class="font12" style="margin-top: 10px; width: 100px;">
                            	<option value="">게시판 선택</option>
                            </select>
                        </div>
                    </div>
                    <div class="article-body">
                        <textarea id="editor" name="content" style="border:1px solid  transparent;" required></textarea>
                        <script>
                            CKEDITOR.replace('editor', {
                                uiColor: '#CCCCCC'
                            });
                            CKEDITOR.config.height = 300;
                        </script>
                    </div>
                    <div class="attachment flex">
                        <div style="width: 5%;"><i class="fas fa-folder-open font16" style="color: #b2b2b2; padding: 10px;"></i></div>
                        <div style="width: 95%;">
                        	<input type="file" name="files" class="w100 blk" style="border: 1px solid transparent"/>
                        </div>
                    </div>
                    <div class="btn-grp m-t30 center">
                        <button type="submit" class="btn-on" onClick="chkInsert();">작성완료</button>
                        <button type="reset" class="btn-off">취소</button>
                    </div>
                </form>
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
	function loadCategory(code) {
		$.ajax({
			url : '${pageContext.request.contextPath}/board/yf_get_category',
			type : 'POST',
			success : function (resData) {
				$.each(resData, function(key, value) {
					$("#articleCategory").append("<option value="+value.boardCode+">"+ value.boardTitle +"</option>");
				});
				$("#articleCategory").val(code).prop("selected", true);
			},
			error : function() {
				alert("시스템 에러");
			}
		});
	}

	function chkInsert() {
		if($.trim($("#title").val()) == '') {
			alert("게시글의 제목을 입력하세요.");
			$("#title").focus();
		} else if($.trim($("#articleCategory").val()) == '' ) {
			alert("게시글을 작성할 게시판을 선택하세요.");
		} 
		//else if($.trim($("#editor").val()) == '' ) { 확인안됨?
			//alert("게시글을 입력하세요.");
			//$("#editor").focus();
		//}
	}
	
	$(function(){
		var code = $("#boardCode").val();

		loadCategory(code);
	});
</script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/active.js"></script>
</html>