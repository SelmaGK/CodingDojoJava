<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Club - Login & Registration</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">Welcome to the Book Club!</h1>
    <div class="row">
        <!-- Registration Form -->
        <div class="col-md-6">
            <h2>Register</h2>
            <form:form action="/register" modelAttribute="newUser" method="post" class="form">
                <div class="form-group">
                    <form:label path="userName">User Name</form:label>
                    <form:input path="userName" cssClass="form-control"/>
                    <form:errors path="userName" cssClass="text-danger"/>
                </div>
                <div class="form-group">
                    <form:label path="email">Email</form:label>
                    <form:input path="email" cssClass="form-control"/>
                    <form:errors path="email" cssClass="text-danger"/>
                </div>
                <div class="form-group">
                    <form:label path="password">Password</form:label>
                    <form:password path="password" cssClass="form-control"/>
                    <form:errors path="password" cssClass="text-danger"/>
                </div>
                <div class="form-group">
                    <form:label path="confirm">Confirm Password</form:label>
                    <form:password path="confirm" cssClass="form-control"/>
                    <form:errors path="confirm" cssClass="text-danger"/>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form:form>
        </div>

        <!-- Login Form -->
        <div class="col-md-6">
            <h2>Log In</h2>
            <form:form action="/login" modelAttribute="newLogin" method="post" class="form">
                <div class="form-group">
                    <form:label path="email">Email</form:label>
                    <form:input path="email" cssClass="form-control"/>
                    <form:errors path="email" cssClass="text-danger"/>
                </div>
                <div class="form-group">
                    <form:label path="password">Password</form:label>
                    <form:password path="password" cssClass="form-control"/>
                    <form:errors path="password" cssClass="text-danger"/>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form:form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
