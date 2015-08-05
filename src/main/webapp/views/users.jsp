<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<%@ page import="java.util.List"%>
<%@ page import="ua.lviv.melesh.domain.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="<jstl:url value="/resources/bootstrap-3.3.5-dist/css/bootstrap.min.css" />"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src='<jstl:url value="/resources/bootstrap-3.3.5-dist/js/bootstrap.min.js" />'></script>
<title>List of users</title>
</head>
<body>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div>
				<h3>User`s list</h3>
			</div>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>E-mail</th>
						<th>Password</th>
						<th>#</th>
						<th>#</th>
					</tr>
				</thead>
				<tbody>
					<jstl:forEach items="${users}" var="user">
						<tr>
							<td>${user.id}</td>
							<td><a href="profile?userId=${user.id}">${user.name}</a></td>
							<td>${user.email}</td>
							<td>${user.password}</td>
							<td><form action="editPage?id=${user.id}">
							<button type="submit" class="btn btn-warning" name="id"
									value="${user.id}">edit</button>
						</form></td>
							<td><form action="removeUser">
							<button type="submit" class="btn btn-danger" name="id"
									value="${user.id}">remove</button>
						</form></td>
						</tr>
					</jstl:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-md-1"></div>
	</div>
</body>
</html>