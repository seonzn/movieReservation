<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/csstext.css" rel="stylesheet" type="text/css" />
<title>로그인 화면</title>
<style>


div {padding: 20px 0}
form {
  position: relative;
  width: 150px;
  margin: 0 auto;
}

.d4 {background: #F15B42;}
.d4 form {
  background: #F9F0DA;
  border-bottom: 4px solid #be290e;
}
.d4 input, .d4 button {
  border: none;
  outline: none;
  background: transparent;
}
.d4 input {

  height: 20px;
  padding-left: 15px;
}

.d4 button:before {
  content: "\f178";
  font-family: FontAwesome;
  font-size: 20px;
  color: #be290e;
}

</style>
</head>
<body>
<fieldset>
<div class="d4">
	<div class ="col-lg-4">
	<div class="col-lg-4">
		<form method="post" action="joinAction.jsp">
			<div class="form-group">
				<input type="text" class = "form-control" placeholder="아이디 " name = "userID">
			</div>
			<div class="form-group">
				<input type="password" class = "form-control" placeholder="비밀번호" name = "userPassword">
			</div>
			<div class="form-group">
				<input type="text" class = "form-control" placeholder="이름" name = "userName">
			</div>
			<div class="form-group">
				<div class="btn-group" data-toggle= "buttons">
					<label class="btn btn-primary active">
						<input type="radio" value="남자" name="userGender" autocomplete = "남자" checked>남자    
					</label>
					<label class="btn btn-primary">
						<input type="radio" value="여자" name="userGender" autocomplete = "여자" checked>여자    
					</label>
				</div>
			</div>
			<div class="form-group">
				<input type="email" class = "form-control" placeholder="이메일" name = "userEmail">
			</div>
			<h2><input type ="submit" class="btn btn-primary form-control" value ="가입하기"></h2>
		</form>
	</div>
	</div>
</div>
</fieldset>
</body>
</html>