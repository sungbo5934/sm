<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
.step{
	border: 1px solid #b4b4b4;
	width: 250px;
	height: 40px;
	text-align: center;
}
.joinform{
		
		list-style:none;
		margin-left:580px;
		width:1000px;
		
	}
#step2 {
	background: lightgray;
}
#join_title,#input_title {
	padding-left: 300px;
}

#name,#id,#password,#passwordcheck,#email{
		height:30px;
		width:300px;
	}
	#username{
		margin-left:90px;
	}
	#userId{
		margin-left:70px;
	}
	#userpwd{
		margin-left:50px;
	}
	#userEmail{
		margin-left:70px;
	}
	
	#certification{
		width:500px;
		height:100px;
		
	}
	#certiBtn{
		margin-left:30px;
	}
	#certiPhone{
	text-align:center;
	font-size:20px;
	background:lightgray;
	}
	#signin,#cancel{
		width:100px;
		height:40px;
		background:rgb(94, 94, 94);
		color:white;
	}
	
	.buttons{
		
		margin-left:150px;
	}
	
</style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<h2 id="join_title"><b>회원가입</b></h2>
	<hr>

	<div align="center">
		<table>
			<tr>
				<th class="step" id="step1"><h4>STEP1</h4></th>
				<th class="step" id="step2"><h4><strong>STEP2</strong></h4></th>
			</tr>
		</table>
	</div>
	<br><br>
	<h3 id="input_title">회원정보입력</h3>
	<br><br>
	<div class='joinform'>
	<form action="<%= request.getContextPath() %>/join" method="post">
		<div class='uname'>
			<label id='username' style="font-size:20px">이름 &nbsp;
			<input type='text' name="userName" id='name' maxlength='30' autofocus placeholder="이름을 입력하세요">
			</label>
			
		</div>
		<br>
		<div class='uid'>
			<label style="font-size:20px" id="userId">아이디&nbsp;&nbsp;
			<input type='text' name="userid" id='id' maxlength='30' placeholder="아이디를 입력하세요">
			</label>
		</div>
		<br>
		<div class='upassword'>
			<label style="font-size:20px" id="userpwd">비밀번호 &nbsp;
			<input type='text' id='password' name="userPwd" maxlength='30' placeholder="비밀번호를 입력하세요">
			</label>
		</div>
		<br>
		<div class='upwcheck'>
			<label style="font-size:20px" id="userpwdCheck">비밀번호 확인 &nbsp;
			
			<input type='text' id='passwordcheck' maxlength='30' placeholder="비밀번호를 입력하세요">
			</label>
		</div>
		<br>
		<div class='uemail'>
			<label style="font-size:20px" id="userEmail">이메일 &nbsp;
			<input type='text' id='email' name="Email" maxlength='50' placeholder="이메일을 입력하세요">
			</label>
		</div>
		<br><br><br>
		<table border="1" id="certification">
			<tr>
				<th id="certiPhone"><label>휴대폰 인증</label></th>
			</tr>
			<tr>
				<td><label>본인 명의의 휴대폰으로만 인증이 가능합니다.</label>
				<button id="certiBtn">인증하기</button>
				</td>			
			</tr>
		</table>
		<br><br>
		<div class="buttons">
		<input type="submit" id='signin' value="가입하기">
		<input id="cancel" type="reset" value="취소">
		</div>
		</form>
		</div>
		<br><br><br><br><br><br>
		<br><br><br><br><br><br>
		<%@ include file="../common/footer.jsp" %>		
</body>
</html>