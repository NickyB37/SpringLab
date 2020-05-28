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
	<table class="table">
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Votes</th>
			<th></th>
		</tr>

		<c:forEach var="pizza" items="${pizzaOptions}">
			<tr>
				<td><c:out value="${pizza.name}" /></td>
				<td><c:out value="${pizza.description}" /></td>
				<td><c:out value="${pizza.votes}" /></td>



			</tr>
		</c:forEach>
	  </table>
      
<form action="/vote-add" method="post">
<label>Name</label>
<input type="text" name="name">


<label>Description</label>
<input type="text" name="description">
<input type="hidden" name="party" value="${partyId}"/>
<button class="btn btn-dark">Add</button>
 <a href="/add-vote" button class="btn btn-dark">Vote</button>





</form>
</body>
</html>