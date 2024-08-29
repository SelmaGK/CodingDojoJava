<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Omikuji Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container my-5">
        <h1 class="text-center mb-4">Here's Your Omikuji!</h1>
        <div class="bg-white p-4 rounded shadow-sm">
            <p class="fs-5">In 10 years, you will live in <span class="fw-bold">${city}</span> with <span class="fw-bold">${realPerson}</span> as your roommate, selling <span class="fw-bold">${hobby}</span> for a living.</p>
            <p class="fs-5">The next time you see a <span class="fw-bold">${livingThing}</span>, you will have good luck.</p>
            <p class="fs-5">Also, <span class="fw-bold">${niceMessage}</span></p>
            <div class="text-center mt-4">
                <a href="/omikuji" class="btn btn-secondary">Go Back</a>
            </div>
        </div>
    </div>
</body>
</html>