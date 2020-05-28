<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<p>${model}</p>

	<a href="">Navigation</a>

	<table>
		<c:forEach var="party" items="${parties}">
			<tr>
				<td><c:out value="${party.name}" /></td>
				<td><c:out value="${party.date}" /></td>
				<td><a class="btn btn-dark" href="/vote?id=${party.id}">vote</a></td>
						<td><a class="btn btn-dark" href="/review?id=${party.id}">review</a></td>

			</tr>

		</c:forEach>
	</table>

	<a class="btn btn-dark" href="/parties/create">Add</a>





</body>
</html>