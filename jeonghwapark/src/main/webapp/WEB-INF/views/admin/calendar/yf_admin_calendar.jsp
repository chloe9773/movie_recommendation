<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_calendar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/calendar/core/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/calendar/core/daygrid/main.css">
<style>
    .ui-datepicker{ 
    	font-size: 12px; 
    	width: 180px; 
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
        <div class="main w85 bg-base font14">
            <div class="setScheduleTitle bg-white m10 p10 weight700">
                <span class="font16">Calendar</span>
            </div>
            <div class="setSchedule bg-white m10 p10">
                <div class="setScheduleBody p-t5">
                    <form method="post" id="frm" class="font12">
                    	<input type="hidden" name="mUserName" value="${sessionScope.mUserName}" />
                        <table class="insertTable w100">
                            <tr>
                                <td class="td-10 under bg-table center">시작일자</td> <!-- 아래, 위 공간?? -->
                                <td class="p-lr3 td-10">
                                    <input type="text" autocomplete="off" name="startDate" id="startDate" class="input-150" style="border:1px solid transparent;" />
                                </td>
                                <td class="td-10 under bg-table center">종료일자</td>
                                <td class="p-lr3 td-10">
                                    <input type="text" autocomplete="off" name="endDate" id="endDate" class="input-150" style="border:1px solid transparent;" />
                                </td>
                                <td class="td-10 under bg-table center">일정내용</td>
                                <td class="p-lr3">
                                    <input type="text" autocomplete="off" name="calContent" id="calContent" class="input-full" style="border:1px solid transparent;" />
                                </td>
                            </tr>
                        </table>
                        <div class="btn-grp center m-t10">
                            <button type="submit" id="addCalBtn" class="btn-on">일정등록</button>
                            <button type="reset" class="btn-off">등록취소</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="showSchedule bg-white m10 p10">
                <div class="calendar" id="calendar" style="height:250px;"></div>
            </div>
        </div>
    </div>
</body>
<script>
    $(function(){
        $("#startDate, #endDate").datepicker({
            dateFormat : 'yy-mm-dd'
        });

        getCalData();
    });
</script>
<script>
	function getCalData(){
		$.ajax({
			url: '${pageContext.request.contextPath}/calendar/yf_calendar_list',
			type: 'POST',
			success: function(resData){
				for(var i = 0; i < resData.length; i++) {
					resData[i].start = resData[i].startDate;
					resData[i].end = resData[i].endDate;
					resData[i].title = resData[i].calContent;
					resData[i].color = "#f00";
				}
				
				getCalendar(resData);
			},
			error: function(){
				alert("시스템 오류");
			},
			complete: function() {}
		});
	}
	
    function getCalendar(resData){
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
            plugins: ['interaction', 'dayGrid'],
            header: {
                left: 'prevYear,prev,next,nextYear today',
                center: 'title',
                right: 'dayGridMonth,dayGridWeek,dayGridDay'
            },
            navLinks: true,
            editable: true,
            eventLimit: true,
            locales: "ko",
            events: resData//ctr에서 넘겨주는 값을 표시
        });

        calendar.render();
    }
    
    function addCalendar() {
		var formData = $("#frm").serialize();

		$.ajax({
			url: '${pageContext.request.contextPath}/calendar/yf_calendar_add',
			type: 'POST',
			data: formData,
			success: function(resData){
				alert("일정이 추가되었습니다.");
				location.reload();
			},
			error: function(){
				alert("시스템 오류");
			},
			complete: function() {}
		});
	}

	$(function(){
		$("#addCalBtn").click(function(){
			addCalendar();
		});
	});
</script>
<!-- calendar js -->
<script src="${pageContext.request.contextPath}/calendar/core/main.js"></script>
<script src="${pageContext.request.contextPath}/calendar/core/locales/ko.js"></script>
<script src="${pageContext.request.contextPath}/calendar/interaction/main.js"></script>
<script src="${pageContext.request.contextPath}/calendar/daygrid/main.js"></script>
<script src="${pageContext.request.contextPath}/js/admin_common.js"></script>
</html>