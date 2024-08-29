<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Omikuji Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container my-5">
        <h1 class="text-center mb-4">Send an Omikuji!</h1>
        <form action="/processOmikuji" method="POST" class="bg-white p-4 rounded shadow-sm">
            <div class="mb-3">
                <label for="number" class="form-label">Pick any number from 5 to 25:</label>
                <input type="number" class="form-control" name="number" id="number" min="5" max="25" required>
            </div>
            <div class="mb-3">
                <label for="city" class="form-label">Enter the name of any city:</label>
                <input type="text" class="form-control" name="city" id="city" required>
            </div>
            <div class="mb-3">
                <label for="realPerson" class="form-label">Enter the name of any real person:</label>
                <input type="text" class="form-control" name="realPerson" id="realPerson" required>
            </div>
            <div class="mb-3">
                <label for="hobby" class="form-label">Enter professional endeavor or hobby:</label>
                <input type="text" class="form-control" name="hobby" id="hobby" required>
            </div>
            <div class="mb-3">
                <label for="livingThing" class="form-label">Enter any type of living thing:</label>
                <input type="text" class="form-control" name="livingThing" id="livingThing" required>
            </div>
            <div class="mb-3">
                <label for="niceMessage" class="form-label">Say something nice to someone:</label>
                <textarea class="form-control" name="niceMessage" id="niceMessage" required></textarea>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Send</button>
            </div>
        </form>
    </div>
</body>
</html>