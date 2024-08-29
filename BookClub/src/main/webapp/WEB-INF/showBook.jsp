<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Book Details</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<div class="container mt-4">
		<!-- Book Title -->
		<h2 class="font-italic"><c:out value="${book.title}"/></h2>
		
		<!-- Back to Shelves Link -->
		<p class="mb-4">
		    <a href="/books" class="text-info">back to the shelves</a>
		</p>
		
		<!-- User Thoughts Section -->
		<p class="text-muted">
		    <c:out value="${book.user.userName}"/> read <span class="text-primary font-weight-bold"><c:out value="${book.title}"/></span> by <span class="text-success font-weight-bold"><c:out value="${book.author}"/></span>.
		</p>
		
		<h4>Here are <c:out value="${book.user.userName}"/>'s thoughts:</h4>
		<hr class="my-2"/>
		
		<!-- Thoughts Content -->
		<p class="px-3"><c:out value="${book.thoughts}"/></p>
		<hr class="my-4"/>
		
		<!-- Edit and Delete Buttons -->
		<div class="d-flex justify-content-center mb-4">
		    <a href="/edit/${book.id}">Edit</a>
        <a href="/books/delete/${book.id}" onclick="return confirm('Are you sure you want to delete this book?');">Delete</a>
		</div>
		
	</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
