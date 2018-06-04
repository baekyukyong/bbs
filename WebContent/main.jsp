<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
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
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		
	%>
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
				<li class="active"><a href="main.jsp"><b>메인</b></a></li>
				<li><a href="bbs.jsp"><b>게시판</b></a></li>
				<%
					if(userID == null){
				%>
				<li><a href="login.jsp"><b>로그인</b></a></li>
				<li><a href="join.jsp"><b>회원가입</b></a></li>
				<%
					}else{
				%>
				<li><a href="logoutAction.jsp"><b>로그아웃</b></a></li>	
				<%
					}
				%>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>웹 사이트 소개</h1>
				<p>이 웹 사이트는 부트스트랩으로 만든 JSP 웹 사이트 입니다. 최소한의 간단한 로직으로 개발하였습니다. <br>디자인 템플렛으로는 부트스트랩을 이용하였습니다.</p>
				<img src="images/m_1.gif" class="img-circle"/>
				<p><a class="btn btn-primary btn-pull" href="#" role="button">자세히 알아보기</a></p>
			</div>
		</div>
	</div>
	<script type="https://code.jquery.com/jquery"></script>
	<script type="text/javascript"></script>
</body>
</html>


