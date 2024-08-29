<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Club</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .table th, .table td {
            vertical-align: middle;
        }
        .logout-link {
            float: right;
            margin-top: -30px;
        }
        .add-link {
            float: right;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <h1>Welcome, <c:out value="${user.userName}"/></h1>
            <a href="/logout" class="logout-link">logout</a>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <h3>Books from everyone's shelves:</h3>
            <a href="/newBook" class="add-link">+ Add a book to my shelf</a>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <table class="table table-striped table-bordered mt-3">
                <thead class="thead-light">
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Author Name</th>
                        <th>Posted By</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="book" items="${books}">
                        <tr>
                            <td><c:out value="${book.id}"/></td>
                            <td><a href="/books/${book.id}"><c:out value="${book.title}"/></a></td>
                            <td><c:out value="${book.author}"/></td>
                            <td><c:out value="${book.user.userName}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
