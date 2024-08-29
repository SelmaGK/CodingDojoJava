<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add a New Book</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .content {
            max-width: 600px;
            margin: 40px auto;
        }
        .form-group.required .control-label::after {
            content: "*";
            color: red;
            margin-left: 5px;
        }
        .btn-space {
            margin-top: 10px;
        }
        .back-link {
            margin-top: 20px;
        }
        .text-danger {
            margin-top: 5px;
        }
    </style>
</head>
<body>

<div class="container content">
    <h1>Add a Book to Your Shelf</h1>

    <!-- Display validation errors, if any -->
    <c:if test="${not empty errors}">
        <div class="alert alert-danger" role="alert">
            <ul>
                <c:forEach var="error" items="${errors.allErrors}">
                    <li>${error.defaultMessage}</li>
                </c:forEach>
            </ul>
        </div>
    </c:if>

    <!-- Form to add a new book -->
    <form:form action="/books" modelAttribute="book" method="post">
        <div class="form-group required">
            <form:label path="title" cssClass="control-label">Title</form:label>
            <form:input path="title" cssClass="form-control" />
            <form:errors path="title" cssClass="text-danger" />
        </div>

        <div class="form-group required">
            <form:label path="author" cssClass="control-label">Author</form:label>
            <form:input path="author" cssClass="form-control" />
            <form:errors path="author" cssClass="text-danger" />
        </div>

        <div class="form-group">
            <form:label path="thoughts">My thoughts</form:label>
            <form:textarea path="thoughts" cssClass="form-control" rows="4" />
            <form:errors path="thoughts" cssClass="text-danger" />
        </div>

        <button type="submit" class="btn btn-primary btn-space">Submit</button>
    </form:form>

    <div class="back-link">
        <a href="/books" class="btn btn-secondary">Back to the shelves</a>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>