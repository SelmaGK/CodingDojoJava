<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Debtors' Prison</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-danger">Debtors' Prison</h1>
    <p class="text-danger">You have fallen too far into debt. Game Over.</p>
    <form action="/reset" method="post">
        <button class="btn btn-danger">Reset Game</button>
    </form>
</div>
</body>
</html>