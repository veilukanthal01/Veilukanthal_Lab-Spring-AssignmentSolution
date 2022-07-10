<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false"%>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Students Directory</title>
</head>

<body>

	<div class="container">

		<h3>Students List</h3>
		<hr>

		<!-- Add a search form -->

		<form action="/StudentRegitsrationApplication/logout" method="post"
			class="form-inline">

			<!-- Add a button -->
			<a href="/StudentRegitsrationApplication/student/showFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Register Student </a> 
				
				
		    <input type="search" name="name" placeholder="Name"
				class="form-control-sm ml-5 mr-2 mb-3" /> 
				
		     <input type="search"
				name="department" placeholder="Department"
				class="form-control-sm mr-2 mb-3" /> <a
				href="/StudentRegitsrationApplication/student/search"
				class="btn btn-primary btn-sm mb-3" style="margin:5px;"> Search </a>

			<sec:authorize access="isAuthenticated()">
				<button type="submit" class="btn btn-success btn-sm mb-3" style="margin:5px;">Logout</button>
			</sec:authorize>

		</form>

		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Name</th>
					<th>Department</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Students}" var="student">
					<tr>
						<td>${student.name}</td>
						<td>${student.department}</td>
						<td>${student.country}</td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/StudentRegitsrationApplication/student/showFormForUpdate?studentId=${student.studentId}"
							class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a
							href="/StudentRegitsrationApplication/student/delete?studentId=${student.studentId}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">
								Delete </a>

						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>



