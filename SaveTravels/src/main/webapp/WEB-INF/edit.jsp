<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Expenses</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<h1 class="my-4 text-success">Edit Expense</h1><a href="/">Go back</a>
    <form:form action="/edit/${travel.id}" method="put" modelAttribute="travel" class="mb-4">
        <form:errors path="*" Class="alert alert-danger" element="div"/>
        <div class="mb-3">
            <form:label path="name" Class="form-label">Expense:</form:label>
            <form:input path="name" Class="form-control" />
            <form:errors path="name" Class="text-danger"/>
        </div>
        <div class="mb-3">
            <form:label path="vendor" Class="form-label">Vendor:</form:label>
            <form:input path="vendor" Class="form-control" />
            <form:errors path="vendor" Class="text-danger"/>
        </div>
        <div class="mb-3">
            <form:label path="amount" Class="form-label">Amount:</form:label>
            <form:input path="amount" Class="form-control" />
            <form:errors path="amount" Class="text-danger"/>
        </div>
        <div class="mb-3">
            <form:label path="description" Class="form-label">Description:</form:label>
            <form:textarea path="description" Class="form-control" rows="3" />
            <form:errors path="description" Class="text-danger"/>
        </div>
        <div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form:form>
</div>
</body>
</html>