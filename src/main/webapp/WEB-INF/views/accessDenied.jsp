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



<title>Unauthorized page</title>
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

	<div class="container" style="font-size: 20px;">
		<div class="header">
			<h3>Student Registration System</h3>
		</div>
		<hr>
		<h3 style="color: Red; text-align: center;">You are not
			authorized to perform Update/Delete Operations</h3>

		Please click on the following link to login again <a
			href="/StudentRegitsrationApplication/listStudents">Go Back to
			the Student's list</a>
	</div>
</body>
</html>
