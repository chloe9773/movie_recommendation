<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="top-head-wrap p-tb5 m-lr10 flex flex-justify bg-white p-lr10">
	<div class="sidebar-btn primary"
		style="font-size: 20px; padding-top: 5px; cursor: pointer;">
		<i class="fas fa-bars btn"></i>
	</div>
	<div class="alarm-warp flex flex-end" style="line-height: 30px;">
		<div class="search-wrap">
			<form>
				<span class="search-icon"> <i class="fas fa-search blk"></i>
				</span> <input type="text" class="search p-l10" />
			</form>
		</div>
		<div class="bell-wrap">
			<div class="bell">
				<i class="fas fa-bell blk pointer"></i>
				<span id="msg" class="msg"></span>
			</div>
			<div class="info-content-bell none" id="alarm" style="width: 200px; border: 1px solid #eee;"></div>		
		</div>
		<div class="profile">
			<div class="user-initial center pointer bg-point">
				<span>SJ</span>
			</div>
			<div class="info-content-initial bell-wrap none"
				style="width: 135px; border: 1px solid #eee;">
				<div class="blk p15 pointer" style="border-bottom: 1px solid #eee;">
					<i class="far fa-user p-r5"></i>My Profile
				</div>
				<div class="toUser blk pointer p15" style="border-bottom: 1px solid #eee;">
					<a href="${pageContext.request.contextPath}/yf_user" class="blk"><i class="fas fa-home p-r5"></i>User Main</a>
				</div>
				<div class="logout blk pointer p15" onClick="logout();">
					<i class="fas fa-power-off p-r5"></i>Logout
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function(){
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/top',
			type: 'POST',
			data: {},
			success: function(resData){
				if (resData.length > 0){
					$.each(resData, function(key, value) {
						$("#alarm").append('<div class="blk p15 pointer" id="alarm" style="border-bottom: 1px solid #eee;" onClick="location sdfsdf">' + '<span style="display:inline-block; vertical-align:middle; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; width:30px;">' + '<span class="under blur">' + value.qTitle + '</span>' + '</span>' + ' 글이 등록되었습니다.</div>');
					});
				} else {
					$("#alarm").append('<div class="blk p15 pointer" id="alarm" style="border-bottom: 1px solid #eee; overflow: hidden; text-overflow: ellipsis;">등록된 문의가 없습니다.</div>');
				}
			},
			error: function() {
				alert("시스템 에러");
			}
		});
	});

	$(function(){
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/top',
			type: 'GET',
			data: {},
			success: function(resData){
				if(resData > 0) {
					$("#msg").html(resData);
				} else {
					$("#msg").attr("class", "none");
				}
			},
			error: function() {
				alert("시스템 에러");
			}
		});
	});

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