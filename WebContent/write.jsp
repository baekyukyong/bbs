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
				<li><a href="main.jsp"><b>메인</b></a></li>
				<li class="active"><a href="bbs.jsp"><b>게시판</b></a></li>
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
		<div class="row">
			<form action="writeAction.jsp" method="post">
				<table class = "table table-striped" style="text-align:center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="backgroup-color: #eeeeee; text-align:center;">게시판 글쓰기 형식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea type="text" class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048"
							style="height: 350px;"></textarea></td>
						</tr>
						<tr>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">	
			</form>
		</div>
	</div>
	<script type="https://code.jquery.com/jquery"></script>
	<script type="text/javascript"></script>
</body>
</html>

