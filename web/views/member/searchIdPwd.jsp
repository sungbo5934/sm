<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 비밀번호 찾기</title>
<style>
#searchTitle {
	margin-left:200px;
}

#hr {
	border: 1px solid lightgray;
}
.fildId{
	margin-left:400px;
}
.fildId, .findPwd {
	display: inline-block;
	width: 450px;
	height: 400px;
	border: 1px solid gray;
}

#findIdTitle, #findPwdTitle, .text {
	padding-top: 20px;
	padding-left: 40px;
}

#inputName1, #inputPhone1, #inputName2, #inputPhone2, #inputId, #submit1,
	#submit2 {
	height: 40px;
	width: 330px;
	margin-left: 40px;
}

#inputName1 {
	margin-top: 60px;
}

#submit1, #submit2 {
	background: rgb(94, 94, 94);
	color: white;
}
#backLogin{
	background: rgb(94, 94, 94);
	width:200px;
	height:40px;
	margin-left:700px;
}
#goLogin{
	color:white;
	text-decoration:none;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<br>
	<h3 id="searchTitle">아이디 비밀번호 찾기</h3>
	<hr style="border: 1px solid lightgray;">
	<br>
	<br>
		<div class="fildId">
			<h4 id="findIdTitle">
				<b>아이디 찾기</b>
			</h4>
			<label class="text">아래 회원가입 시 입력하신 개인정보를 입력하세요</label> <br> <br>
			<input type="text" placeholder="이름 입력" id="inputName1"> <br>
			<br> <input type="text" placeholder="휴대전화번호 입력" id="inputPhone1">
			<br> <br> <input type="submit" value="확인" id="submit1">
		</div>

		<div class="findPwd">
			<h4 id="findPwdTitle">
				<b>비밀번호 찾기</b>
			</h4>
			<label class="text">아래 회원가입 시 입력하신 개인정보를 입력하세요</label> <br> <br>
			<input type="text" placeholder="이름 입력" id="inputName2"> <br>
			<br> <input type="text" placeholder="ID 입력" id="inputId">
			<br> <br> <input type="text" placeholder="휴대전화번호 입력"
				id="inputPhone2"> <br> <br> <input type="submit"
				value="확인" id="submit2">
		</div>

		<br><br><br><br>
		<button id="backLogin" >
			<a href="login.jsp" id="goLogin">로그인 하러가기</a>
		</button>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>