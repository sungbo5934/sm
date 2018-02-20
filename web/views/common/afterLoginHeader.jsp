<%@page import="com.kh.tc.customer.model.vo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Customer loginUser = (Customer) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Kavivanar|Ubuntu" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css?family=Sedgwick+Ave+Display"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>오늘의 동료</title>
<style>

#char {
	 font-family: 'Ubuntu', sans-serif; 
	margin-top:60px;
	font-size:55px;
	margin-left: 180px;
}

#search {
	margin-top: 130px;
	margin-left: 130px;
	height: 40px;
	width: 220px;
}

#searchBtn {
	width: 50px;
	height: 50px;
}

.w3-button{
 font-family: 'Ubuntu', sans-serif; 
}
.wrap{
		background:white;
		border:1px solid darkgray;
		width:100%;
		height:50px;
	}
	.menu{
		color:black;
		text-align:center;
		vertical-align:middle;
		width:150px;
		height:50px;
		display:table-cell;
	}
	.nav{
		width:1200px;
		margin-left:330px;
	}
	.menu:hover{
		background:rgb(94, 94, 94);
		color:white;
		font-weight:bold;
		cursor:pointer;
	}
</style>
</head>
<body>
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
			<a href="../main/firstMain.jsp" class="w3-bar-item w3-button">Today's Colleague</a>
			<!-- Float links to the right. Hide them on small screens -->
			<div class="w3-right w3-hide-small">
				<a href="#" class="w3-bar-item w3-button" id="logout">Logout</a> 
				<a href="#" class="w3-bar-item w3-button">My Page</a>
			</div>
		</div>
	</div>
	<script>
		$(function(){
			$("#logout").click(function(){
				location.href="<%=request.getContextPath()%>/logout";
			});
		});
	</script>

	<div class="row">
		<!-- 아이콘 -->
		<div class="row1 col-lg-4 ">
			<div class="icon">
				<!-- <img src="/p/Pimages/icon.jpg" id="logo"> -->
				<p id='char'>
					<b>Today's Colleague</b>
				</p>
			</div>
		</div>

		<!-- 검색창 -->
		<div class="row1 col-lg-8">
			<input id="search" type="text" placeholder="검색어를 입력하세요 "> <img
				id="searchBtn" src="/p/Pimages/search.PNG" href="#">
		</div>
		<!-- <div class="row1 col-lg-3"></div> -->
	</div>
	<!-- 카테고리 -->
	<div class="wrap">
		<div class="nav">
			<div class="menu">시간</div>
			<div class="menu">재능</div>
			<div class="menu">물건</div>
			<div class="menu">공간</div>
			<div class="menu">차량</div>
			<div class="menu">공유요청</div>
			<div class="menu">커뮤니티</div>
		</div>
	</div>
</body>
</html>