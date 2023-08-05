<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Expense</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	<div class="container">
		<div class="heading">
			<h1 class="text-primary">Expense Details</h1>
			<a href="/expenses" class="text-primary">Go back</a>
		</div>
		<div class="detail">
			<span>Expense Name: </span><span><c:out value="${expense.name }" /></span>
		</div>
		<div class="detail">
			<span>Expense Description: </span><span><c:out value="${expense.description }" /></span>
		</div>
		<div class="detail">
			<span>Vendor: </span><span><c:out value="${expense.vendor }" /></span>
		</div>
		<div class="detail">
			<span>Amount Spent: </span><span>$<c:out value="${expense.amount }" /></span>
		</div>
	</div>

</body>
</html>