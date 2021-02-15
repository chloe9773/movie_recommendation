<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_HEADER.jsp"%>
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<body>
    <div class="main-head-wrap flex flex-justify">
        <div class="logo m-t10">
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
                    <span>1:1 문의</span>
                </div>
            </div>
        </div>
        <div class="board-body center">
            <div class="f6">문의 작성하신 내용이 정상적으로 <sapn class="noti weight700">접수 완료</sapn>되었습니다.</div>
            <div class="f6">이용해 주셔서 감사합니다.</div>
            <button class="m-t15 btn-off"><a href="${pageContext.request.contextPath}/yf_user/yf_user_contact" class="f6">확인</a></button>
        </div>
    </div>
    <div class="footer center">
        <div class="copyright">&copy; copyright</div>
    </div>
</body>
<script>
	function finWrite() {
		$(function(){
			$("#finWrite").click(function(){
				alert("clicked");
			});
		});
	}
</script>
<script>
$(function() {
	$("#logout").click(function() {
		$.ajax({
			url		: "${pageContext.request.contextPath}/yf_user_logout",
			type	: "POST",
			data	: "",
			success : function(data) {
				if( data == "success" ) {
					window.location.href = '${pageContext.request.contextPath}';
				}
			},
			error	: function() {
				alert("시스템 에러!!");
			}
		});
	});
});
</script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/active.js"></script>
</html>