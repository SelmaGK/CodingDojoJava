<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <title>Login and Registration</title>
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="text-center mb-4">
        <h1>Welcome!</h1>
        <p>Join our growing community</p>
    </div>
    
    <!-- Register Form -->
    <div class="card mb-4 bg-primary text-white">
        <div class="card-header text-center">Register</div>
        <div class="card-body">
            <form:form action="/register" method="post" modelAttribute="newUser">
                <div class="form-group">
                    <form:label path="username" class="float-left">Username:</form:label>
                    <form:input path="username" class="form-control"/>
                    <form:errors path="username" class="text-danger"/>
                </div>
                <div class="form-group">
                    <form:label path="email" class="float-left">Email:</form:label>
                    <form:input path="email" class="form-control"/>
                    <form:errors path="email" class="text-danger"/>
                </div>
                <div class="form-group">
                    <form:label path="password" class="float-left">Password:</form:label>
                    <form:password path="password" class="form-control"/>
                    <form:errors path="password" class="text-danger"/>
                </div>
                <div class="form-group">
                    <form:label path="confirm" class="float-left">Confirm PW:</form:label>
                    <form:password path="confirm" class="form-control"/>
                    <form:errors path="confirm" class="text-danger"/>
                </div>
                <button type="submit" class="btn btn-secondary btn-block">Submit</button>
            </form:form>
        </div>
    </div>

    <!-- Login Form -->
    <div class="card mb-4 bg-primary text-white">
        <div class="card-header text-center">Log In</div>
        <div class="card-body">
            <form:form action="/login" method="post" modelAttribute="newLogin">
                <div class="form-group">
                    <form:label path="email" class="float-left">Email:</form:label>
                    <form:input path="email" class="form-control"/>
                    <form:errors path="email" class="text-danger"/>
                </div>
                <div class="form-group">
                    <form:label path="password" class="float-left">Password:</form:label>
                    <form:password path="password" class="form-control"/>
                    <form:errors path="password" class="text-danger"/>
                </div>
                <button type="submit" class="btn btn-secondary btn-block">Submit</button>
            </form:form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>