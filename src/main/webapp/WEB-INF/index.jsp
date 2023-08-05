<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Travels</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	<div class="container">
		<h1 class="text-primary">Save Travels</h1>
		<table class="table table-striped table-bordered">
			<thead class="thead-light">
				<tr>
					<th scope="col" >Expense</th>
					<th scope="col">Vendor</th>
					<th scope="col">Amount</th>
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="expense" items="${expenses }">
					<tr>
						<td><a href="/expenses/${expense.id}"><c:out value="${expense.name }" /></a></td>
						<td><c:out value="${expense.vendor }" /></td>
						<td>$<c:out value="${expense.amount }" /></td>
						<td class="actions"><a href="/expenses/${expense.id}/edit">edit</a>
							<form action="/expenses/${expense.id}" method="post">
			    				<input type="hidden" name="_method" value="delete">
			    				<button class="btn btn-danger">Delete</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h2 class="text-primary">Add an expense:</h2>
		<div class="form-container">
			<form:form action="/expenses" method="post" modelAttribute="expense">
				<p class="error-message"><form:errors path="name"/></p>
				<p class="error-message"><form:errors path="vendor"/></p>
				<p class="error-message"><form:errors path="amount"/></p>
				<p class="error-message"><form:errors path="description"/></p>
				<div class="form-group">
					<form:label path="name">Name:</form:label>
					<form:input path="name" class="form-control" />
				</div>
				<div class="form-group">
					<form:label path="vendor">Vendor:</form:label>
					<form:input path="vendor" class="form-control" />
				</div>
				<div class="form-group">
					<form:label path="amount">Amount:</form:label>
					<form:input path="amount" type="number" step="0.01" class="form-control" />
				</div>
				<div class="form-group">
					<form:label path="description">Description:</form:label>
					<form:textarea path="description" class="form-control" />
				</div>
				<button class="btn btn-primary">Submit</button>
			</form:form>
		</div>

	</div>
</body>
</html>