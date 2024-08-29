<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Counter</title>
</head>
<body>
    <h1>Counter</h1>
    <p>You have visited this site <strong>${count}</strong> times.</p>
    <a href="/">Go to Home Page</a><br>
    <a href="/incrementBy2">Visit and Increment by 2</a><br>
    <form action="/reset" method="get">
        <button type="submit">Reset Counter</button>
    </form>
</body>
</html>