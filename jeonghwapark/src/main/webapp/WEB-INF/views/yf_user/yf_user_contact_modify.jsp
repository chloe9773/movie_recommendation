<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/yf_user/user_include/USER_MOVIE_HEADER.jsp"%>
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<style>
        .board-left {
            width: 15%;
            height: 600px;
            background-color:#fff;
            box-shadow: 3px 3px 3px 3px rgba(0,0,0, .5); 
            box-shadow: -3px 3px 3px -3px rgba(0,0,0, .5);
        }

        .board-right {
            width: 80%;
        }

        .left-head {
            border-bottom: 1px solid #eee ;
        }

        .my-info {
            border-bottom: 1px solid #eee;
        }

        .info-head {
            color: #8C9EC2;
            font-weight: 700;
            padding-bottom: 5px;
        }

        .profile {
            width: 50px;
            height: 50px;
            border-radius: 50%;
        }

        hr.dashed-hr {
            border: 1px dashed #eee;
            margin: 10px 0;
        }

        .board-article-body tr:not(:first-child)>td {
            border: 1px solid #eee;
        }

        tr:not(:first-child):hover{
            border-left: 1px solid transparent;
            background-color: #fff;
        }
        
        .articleCnt {
        	display: inline-block;
    		width: 18px;
    		height: 18px;
    		border-radius: 50%;
    		background-color: rgb(249, 38, 127);
    		text-align: center;
    		line-height: 18px;
        }
</style>
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
        <div class="board-body">
            <div class="article">
                <form id="frm" action="${pageContext.request.contextPath}/yf_user/yf_user_contact_modify" enctype="multipart/form-data" method="post">
                	<input type="hidden" id="qWriter" name="qWriter" value="${sessionScope.mUserName}" />
                	<input type="hidden" id="qid" name="qid" value="${modifyArticle.qid}" />
                    <div class="article-title">
                        <input type="text" class="m-b10" name="qTitle" id="qTitle" placeholder="제목" maxlength="40" tabindex="1" required style="border:1px solid transparent" value="${modifyArticle.qTitle}"/>
                    </div>
                    <div class="article-body">
                        <textarea id="editor" name="qContent" style="border:1px solid  transparent">${modifyArticle.qContent}</textarea>
                        <script>
                            CKEDITOR.replace('editor', {
                                uiColor: '#CCCCCC'
                            });
                            CKEDITOR.config.height = 300;
                        </script>
                    </div>
                    <div class="attachment flex">
                        <div style="width: 5%;"><i class="fas fa-folder-open font16" style="color: #b2b2b2; padding: 10px;"></i></div>
                        <div style="width: 95%;line-height:35px;">
                        	<c:if test="${modifyArticle.fileOriName != null}"> 
                        		<span class="notokr font12">기존 파일 :<a href="${pageContext.request.contextPath}/qna/yf_question_download?qid=${modifyArticle.qid}" class="blk m-l4">${modifyArticle.fileOriName}</a></span> <!-- 보안상의 문제로 기본파일 지정 불가 -->
                        	</c:if>
                       	</div>
                    </div>
                    <div class="btn-grp m-t30 center">
                        <button type="submit" class="btn-on">수정</button>
                        <a href="${pageContext.request.contextPath}/yf_user/yf_user_contact" class="btn-off pointer">목록으로</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="footer center">
        <div class="copyright">&copy; copyright</div>
    </div>
</body>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/active.js"></script>
</html>