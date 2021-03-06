
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ログイン画面</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/original.css" rel="stylesheet">


</head>
<body>

	<header>
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href=>ユーザ管理システム</a>
				</div>
			</div>
		</nav>
	</header>


	<div class="container">
		<div class="row" style="margin-top: 20px">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form class="form-signin" action="/UserManagement/loginServlet"
					method="post">
					<fieldset>
						<h2>Sign In</h2>
						<hr class="colorgraph">
						<div class="form-group">
							<input type="text" id="loginId" name="id"
								class="form-control input-lg" placeholder="ログインID" required
								autofocus>
						</div>
						<div class="form-group">
							<input type="password" name="pass" id="pass"
								class="form-control input-lg" placeholder="Password">
						</div>

						<hr class="colorgraph">
						<div class="row">
							<div class="col-sm-offset-2 col-sm-8">
								<input type="submit" class="btn btn-lg btn-success btn-block"
									value="Sign In">
							</div>

						</div>
					</fieldset>
				</form>
				<%
					String error = (String) request.getAttribute("error");
					if (error != null) {
				%>
				<div class="alert alert-danger" role="alert"><%=error%></div>
				<%
					}
				%>
			</div>
		</div>

	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>