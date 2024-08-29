<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Travels</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="my-4 text-primary">Save Travels</h1>
    <table class="table table-hover">
        <thead class="thead-light">
            <tr>
                <th>Expense</th>
                <th>Vendor</th>
                <th>Amount</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="travel" items="${travels}">
                <tr>
                    <td><a href="/travels/<c:out value="${travel.id}"></c:out>"><c:out value="${travel.name}"></c:out></a></td>
                    <td>${travel.vendor}</td>
                    <td>$ ${travel.amount}</td>
                    <td><a href="/edit/${travel.id}">edit</a> <a href="/travels/delete/${travel.id}">delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <h2 class="my-4 text-primary">Add an Expense:</h2>
    <form:form action="/travels" method="post" modelAttribute="travel" class="mb-4">
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