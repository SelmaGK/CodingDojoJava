<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Burger</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<h2 class="my-4">Edit Burger:</h2>
    <form:form action="/edit/${burger.id}" method="put" modelAttribute="burger" class="mb-4">
        <form:errors path="*" Class="alert alert-danger" element="div"/>
        <div class="mb-3">
            <form:label path="name" Class="form-label">Burger Name:</form:label>
            <form:input path="name" Class="form-control" />
            <form:errors path="name" Class="text-danger"/>
        </div>
        <div class="mb-3">
            <form:label path="restaurant" Class="form-label">Restaurant:</form:label>
            <form:input path="restaurant" Class="form-control" />
            <form:errors path="restaurant" Class="text-danger"/>
        </div>
        <div class="mb-3">
            <form:label path="rating" Class="form-label">Rating:</form:label>
            <form:input path="rating" Class="form-control" />
            <form:errors path="rating" Class="text-danger"/>
        </div>
        <div class="mb-3">
            <form:label path="notes" Class="form-label">Notes:</form:label>
            <form:textarea path="notes" Class="form-control" rows="3" />
            <form:errors path="notes" Class="text-danger"/>
        </div>
        <div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form:form>
</div>
</body>
</html>