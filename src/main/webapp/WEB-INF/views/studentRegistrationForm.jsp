<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
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
<style>
.header {
	padding: 30px;
	text-align: center;
	background: #000080;
	color: white;
	font-size: 30px;
}
</style>
</head>

<body>

	<div class="container">
		<div class="header">
			<h3>Student Registration System</h3>
		</div>
		<hr>

		<p class="h4 mb-4">Register Student</p>


		<form:form action="save" method="post" modelAttribute="Student">

			<!-- need to associate this data with customer id -->
			<form:hidden path="studentId" />

			<div class="form-group row">
				<label for="name" class="col-sm-2 col-form-label">Student
					Name</label>
				<div class="col-sm-7">
					<form:input id="name" path="name" class="form-control mb-4 col-4" />

				</div>

			</div>

			<div class="form-group row">
				<label for="department" class="col-sm-2 col-form-label">Student
					Department</label>
				<div class="col-sm-7">

					<form:input id="department" path="department"
						class="form-control mb-4 col-4" />

				</div>

			</div>

			<div class="form-group row">
				<label for="country" class="col-sm-2 col-form-label">Student
					Country</label>
				<div class="col-sm-7">

					<form:input id="country" path="country"
						class="form-control mb-4 col-4" />

				</div>

			</div>

			<div class="form-group row">
				<!-- Button -->
				<div class="col-md-offset-3 col-md-9">
					<form:button class="btn btn-info col-2">Save</form:button>
				</div>
			</div>

		</form:form>

		<hr>
		<a href="/StudentRegitsrationApplication/student/list">Back to
			Students List</a>

	</div>
</body>

</html>










