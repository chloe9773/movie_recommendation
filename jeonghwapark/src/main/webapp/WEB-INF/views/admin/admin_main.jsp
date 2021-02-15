<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_main.css">
<style>
    a {
        color: #fff;
    }
	#logot:hover {
        background-color: #000;
    }
</style>
<body>
    <div class="header flex f6">
     	<!-- 로고 -->
    	<%@include file="/WEB-INF/views/admin/admin_include/ADMIN_LOGO.jsp"%>
        <!-- 로고 -->
        <div class="top-head w85 bg-base">
            <%@include file="/WEB-INF/views/admin/admin_include/ADMIN_TOP.jsp"%>
        </div>
    </div>
    <div class="body flex">
        <%@include file="/WEB-INF/views/admin/admin_include/ADMIN_MENU.jsp"%>
        <div class="main w85 bg-base">
            <div class="main-head bg-white m10 p10">
                <span class="weight700 font16">대시보드</span>
            </div>
            <div class="main-body">
                <div class= "numofuser bg-white m10" id="numofuser" style="height: 220px;">
                    <div class="numofuser-title p10 flex flex-justify" style="position: relative;">
                        <div class="font14 weight500 notokr point">주간 방문자수</div>
                        <div class=""><i class="fas fa-ellipsis-v drawer pointer"></i></div>
                    </div>
                    <canvas id="userNumChart" class="p10" width="90vw" height= "10vh"></canvas>
                </div>
                <div class="graphs-line-one flex">
                    <div class="gender bg-white m10" id="gender" style="height: 290px; width: 35%;">
                        <div class="gender-title p10 flex flex-justify" style="position: relative;">
                            <div class="font14 weight500 notokr point">성별 선호 장르</div>
                            <div class=""><i class="fas fa-ellipsis-v drawer pointer"></i></div>
                        </div>
                        <canvas id="genderGenreChart" class="" width="30vw" height="13vh"></canvas>
                    </div>
                    <div class="movie-rank bg-white m10" style="height: 290px; width: 62%;">
                        <div class="rank-title p10 flex flex-justify" style="position: relative;">
                            <div class="font14 weight500 notokr point">영화 인기 순위</div>
                            <div class=""><i class="fas fa-ellipsis-v drawer pointer"></i></div>
                        </div>
                        <canvas id="movieRankChart" class="" width="50vw" height="12vh"></canvas>
                    </div>
                </div>
                <div class="line-two bg-white m10" style="height: 220px; width: 98%;">
                    <div class="alarm-title p10 flex flex-justify" style="position: relative;">
                        <div class="font14 weight500 notokr point">문의함</div>
                        <div class=""><i class="fas fa-ellipsis-v drawer pointer"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    var userNumChart = document.getElementById('userNumChart').getContext('2d');
    var chart = new Chart(userNumChart, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
        labels: ['월', '화', '수', '목', '금', '토', '일'],
        datasets: [{
            label: 'My First dataset',
            borderColor: ' #3700b3',
            backgroundColor: 'rgba(238, 238, 238, .5)',
            data: [10, 5, 9, 2, 20, 30, 45]
        }]
    },

    // Configuration options go here
    options: {
        legend: {
        display: false,
        responsive: false
    },
    tooltips: {
        callbacks: {
           label: function(tooltipItem) {
                  return tooltipItem.yLabel;
           }
        }
    }
    }
});

    $(function(){
        var chkVal = 0;

        $("#sidebarBtn").click(function(){
            if (chkVal == 0) {
                $("#userNumChart").css("width", "92vw");
                $("#genderGenreChart").css("width", "34vw");
                $("#movieRankChart").css("width", "58vw");
                chkVal = 1;
            } else {
                $("#userNumChart").css("width", "82vw");
                $("#genderGenreChart").css("width", "30vw");
                $("#movieRankChart").css("width", "50vw");
                chkVal = 0;
            }
        });
    });

    var genderGenreChart = document.getElementById('genderGenreChart').getContext('2d');
    var myDoughnutChart = new Chart(genderGenreChart, {
        type: 'doughnut',
        data: {
            labels: ['로맨스', '판타지', '스릴러', '액션', '다큐멘터리'],
            datasets: [{
                label: '',
                borderColor: ' #fff',
                backgroundColor: ['rgba(255, 87, 34, .8)', 'rgba(1, 87, 155, .8)', 'rgba(0, 150, 136, .8)', 'rgba(204, 255, 144, .8)', 'rgba(255, 255, 141, .8)'],
                hoverBorderColor: '#D1D3E2',
                hoverBackgroundColor: ['#FF5722', '#01579B', '#009688', '#CCFF90', '#FFFF8D'],
                data:[50, 45, 20, 14, 6]
            },
            {
                label: '',
                borderColor: ' #fff',
                backgroundColor: ['rgba(255, 87, 34, .8)', 'rgba(1, 87, 155, .8)', 'rgba(0, 150, 136, .8)', 'rgba(204, 255, 144, .8)', 'rgba(255, 255, 141, .8)'],
                hoverBorderColor: '#D1D3E2',
                hoverBackgroundColor: ['#FF5722', '#01579B', '#009688', '#CCFF90', '#FFFF8D'],
                data:[10, 30, 8, 41, 2]
            }]
        },
        options: {
            legend: {
                display: true
            }
        }
    });

    var movieRankChart = document.getElementById('movieRankChart').getContext('2d');
    var myBarChart = new Chart(movieRankChart, {
        type: 'bar',
        data: {
            labels: ['인터스텔라', '마션', '미드 나잇 인 파리', '테넷', '그녀'],
            datasets: [{
                label: '여',
                borderColor: ' #fff',
                backgroundColor: 'rgba(229, 24, 67, .8)',
                hoverBorderColor: '#D1D3E2',
                hoverBackgroundColor: '#E51843',
                data:[29, 20, 30, 8, 12]
            },
            {
                label: '남',
                borderColor: ' #fff',
                backgroundColor: 'rgba(31, 78, 121, .8)',
                hoverBorderColor: '#D1D3E2',
                hoverBackgroundColor: ['#1F4E79'],
                data:[21, 23, 3, 18, 6]
            },
            {
                label: '합계',
                borderColor: ' #fff',
                backgroundColor: 'rgba(115, 173, 33, .8)',
                hoverBorderColor: '#D1D3E2',
                hoverBackgroundColor: '#73AD21',
                data:[50, 43, 33, 26, 18]
            }]
        },
        options: {
            legend: {
                display: true
            }
        }
    });
</script>
<script src="${pageContext.request.contextPath}/js/logout.js"></script>
<script src="${pageContext.request.contextPath}/js/admin_common.js"></script>
</html>