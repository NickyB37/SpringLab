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
	<h2>PIZZA OPTIONS</h2>
<table>
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Votes</th>
			<th></th>
		</tr>
	<c:forEach items="${pizzaOptions}" var="pizza">
     <tr>
			<td><c:out value="${pizza.name}" /></td>
				<td><c:out value="${pizza.description}" /></td>
				<td><c:out value="${pizza.votes}" /></td>
			
		</tr>
	
	</c:forEach>
</table>
</body>
</html>