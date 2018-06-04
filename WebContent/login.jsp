<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapse"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp"><b>JSP 게시판 웹 사이트</b></a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav nav-tabs nav-justified">
				<li><a href="main.jsp"><b>메인</b></a></li>
				<li><a href="bbs.jsp"><b>게시판</b></a></li>
				<li class="active"><a href="login.jsp"><b>로그인</b></a></li>
				<li><a href="join.jsp"><b>회원가입</b></a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginAction.jsp">
					<h2  style="text-align: center;"><strong>로그인화면</strong></h2>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPW" maxlength="20">
					</div>
					<!--<input type="submit" class="btn-btn-primary" value="로그인">-->
					<button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
				</form>
			</div>
		</div>
	</div>
	<script type="https://code.jquery.com/jquery"></script>
	<script type="text/javascript"></script>
</body>
</html>


