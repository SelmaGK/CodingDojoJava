<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Show Expense</title>
</head>
<body style="margin: 10vw;">

<h1 class="my-4 text-primary">Expense Details</h1>
<p><a href="/">Go back</a>
<table>
    <tbody>
		<tr>
			<td>Name:</td>
			<td style="padding-left: 24px;"><c:out value="${travel.name}"></c:out></td>
		</tr>
		<tr>
			<td>Description:</td>
			<td style="padding-left: 24px;"><c:out value="${travel.description}"></c:out></td>
		</tr>
		<tr>
			<td>Vendor:</td>
			<td style="padding-left: 24px;"><c:out value="${travel.vendor}"></c:out></td>
		</tr>
		<tr>
			<td>Amount Spent:</td>
			<td style="padding-left: 24px;">$<c:out value="${travel.amount}"/></td>
		</tr>	
    </tbody>
</table>
	

</body>
</html>