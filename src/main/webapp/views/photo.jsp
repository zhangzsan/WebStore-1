<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<%@ page import="java.util.List"%>
<%@ page import="ua.lviv.melesh.domain.Photos"%>
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
<title>photo</title>
</head>
<body>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div>
				<h3>Photo album</h3>
			</div>
			<div>
				<form action="addPhoto?id=${product.id}">
										<button type="submit" class="btn btn-warning" name="id"
											value="">Add photo</button>
									</form>
			</div>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>photo</th>
						<th>Name</th>
						<th>E-mail</th>
						
					</tr>
				</thead>
				<tbody>
					<jstl:forEach items="${photos}" var="photo">
						<tr>
							<td>${photo.id}</td>
							<td>${photo.url}</td>
							
						</tr>
					</jstl:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-md-1"></div>
	</div>

</body>
</html>