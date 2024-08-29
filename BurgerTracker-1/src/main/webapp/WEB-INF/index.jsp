<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Burger Tracker</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="my-4">Burger Tracker</h1>
    <table class="table table-striped">
        <thead class="thead-dark">
            <tr>
                <th>Burger Name</th>
                <th>Restaurant</th>
                <th>Rating (out of 5)</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="burger" items="${burgers}">
                <tr>
                    <td>${burger.name}</td>
                    <td>${burger.restaurant}</td>
                    <td>${burger.rating}</td>
                    <td><a href="/edit/${burger.id}">edit</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <h2 class="my-4">Add a Burger:</h2>
    <form:form action="/burgers" method="post" modelAttribute="burger" class="mb-4">
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