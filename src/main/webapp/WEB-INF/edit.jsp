<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Expense</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	<div class="container">
		<div class="header">
			<h1>Edit Expense</h1>
			<a href="/expenses">Go back</a>
		</div>
		<div class="form-container">
			<form:form action="/expenses/${expense.id }" method="post" modelAttribute="expense">
				<input type="hidden" name="_method" value="put">
				<p><form:errors path="name"/></p>
				<p><form:errors path="vendor"/></p>
				<p><form:errors path="amount"/></p>
				<p><form:errors path="description"/></p>
				<div class="form-group">
					<form:label path="name">Name</form:label>
					<form:input path="name" class="form-control" />
				</div>
				<div class="form-group">
					<form:label path="vendor">Vendor</form:label>
					<form:input path="vendor" class="form-control" />
				</div>
				<div class="form-group">
					<form:label path="amount">Amount</form:label>
					$<form:input path="amount" class="form-control" type="number" step="0.01"/>
				</div>
				<div class="form-group">
					<form:label path="description">Description</form:label>
					<form:textarea class="form-control" path="description" />
				</div>
				<button class="btn btn-primary">Submit</button>
			</form:form>
		</div>
	</div>
</body>
</html>