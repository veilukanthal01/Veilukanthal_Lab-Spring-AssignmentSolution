<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>


<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Register Student</title>
<style type="text/css">
.header {
	padding: 30px;
	text-align: center;
	background: #000080;
	color: white;
	font-size: 30px;
}

body {
	margin: 0;
	padding: 0;
	font-family: 'Arial';
}

.login {
	width: 382px;
	overflow: hidden;
	margin: auto;
	margin: 20 0 0 450px;
	padding: 40px;
	background: #6495ed;
	border-radius: 15px;
}

h2 {
	text-align: center;
	color: #277582;
	padding: 20px;
}

label {
	color: #2f4f4f;
	font-size: 17px;
}

#Uname {
	width: 300px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#Pass {
	width: 300px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#log {
	width: 300px;
	height: 30px;
	border: none;
	border-radius: 17px;
	padding-left: 7px;
	color: blue;
}
</style>
</head>

<body onload='document.loginForm.username.focus();'>
	<div class="container">
		<div class="header">
			<h3>Student Registration System</h3>
		</div>
		<h2>Login Page</h2>
		<br>
		<div class="login">
			<hr>


			<c:if test="${not empty error}">
				<div>${error}</div>
			</c:if>
			<c:if test="${not empty message}">
				<div>${message}</div>
			</c:if>

			<form name='login' action="<c:url value='/loginPage' />"
				method='POST'>
				<!--  <table>
			<tr>
				<td>UserName:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
				
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit" value="submit" /></td>
			</tr>
		</table>  -->

				<label><b>User Name </b> </label> <input type="text" name="username"
					id="Uname" placeholder="Username"> <br>
				<br> <label><b>Password </b> </label> <input type="Password"
					name="password" id="Pass" placeholder="Password"> <br>
				<br> <input name="log" type="submit" value="submit" id="log" />
				<br>
				<br> <input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
</body>
</html>