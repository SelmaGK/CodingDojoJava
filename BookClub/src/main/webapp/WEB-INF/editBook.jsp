<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Book</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Book Share</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/books">Back to the shelf</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-4">
        <h3>Edit Book</h3>
       <form:form action="/edit/${book.id}" method="post" modelAttribute="book" class="mb-4">
        <form:errors path="*" Class="alert alert-danger" element="div"/>
            
            <div class="form-group">
                <form:label path="title">Title</form:label>
                <form:input path="title" cssClass="form-control" />
                <form:errors path="title" cssClass="text-danger" />
            </div>
            
            <div class="form-group">
                <form:label path="author">Author</form:label>
                <form:input path="author" cssClass="form-control" />
                <form:errors path="author" cssClass="text-danger" />
            </div>
            
            <div class="form-group">
                <form:label path="thoughts">My thoughts</form:label>
                <form:textarea path="thoughts" cssClass="form-control" rows="5"></form:textarea>
                <form:errors path="thoughts" cssClass="text-danger" />
            </div>
            
            <button type="submit" class="btn btn-primary">Submit</button>
        </form:form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
