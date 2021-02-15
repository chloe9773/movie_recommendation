<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:if test="${sessionScope.mid == null}">
<script>
	alert("등록된 사용자가 아닙니다.\n관리자에게 문의하세요.");
	window.location.replace("${pageContext.request.contextPath}");
	</script>
</c:if>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Young Flower</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user_movie_common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user_movie_home.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/owlcarousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/owlcarousel/assets/owl.theme.default.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/2810ea3616.js" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/owlcarousel/owl.carousel.js"></script>
    <meta content="BlendTrans(Duration=0.5)" http-equiv="Page-Enter">
    <meta content="BlendTrans(Duration=0.5)" http-equiv="Page-exit">
</head>