<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="blk p15" style="border-bottom: 1px solid #eee; cursor: pointer;"><i class="far fa-user p-r5 noti"></i>내 프로필</div>
<c:if test="${sessionScope.mLevel >= 10}">
	<div class="blk p15" style="border-bottom: 1px solid #eee; cursor: pointer;">
		<a href="${pageContext.request.contextPath}/admin">
			<i class="fab fa-flipboard p-r5 noti"></i>
			<span class="blk">관리자홈</span>
		</a>
	</div>
</c:if>
<div id="logout" class="blk p15 pointer" onClick="logout();"><i class="fas fa-power-off p-r5 noti"></i>로그아웃</div>
<script>
function logout() {
	$.ajax({
		url	: "${pageContext.request.contextPath}/yf_user_logout",
    	type: "POST",
    	success : function(data) {
    		if( data == "success" ) {
    			window.location.href = '${pageContext.request.contextPath}';
    		}
    	},
    	error : function() {
    		alert("시스템 에러!!");
    	}
    });
}
</script>