<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ninja Gold Game</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
        .activity-green {
            color: green;
        }
        .activity-red {
            color: red;
        }
    </style>
</head>
<body>
<div class="mt-4">
<div class="container">
    <h1>Ninja Gold Game</h1>
    <div class="mb-3">
        <h3>Your Gold: ${gold}</h3>
                <div class="mt-4">
            <form action="/reset" method="post">
                <button class="btn btn-secondary btn-block">Reset</button>
            </form>
        </div>
    </div>
    <div class="row mt-4">
    <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title">Farm</h5>
                    <p>(earns 10-20 gold)</p>
                    <form action="/process" method="post">
                        <input type="hidden" name="location" value="farm">
                        <button type="submit" class="btn btn-success btn-block">Find Gold!</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- Cave -->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title">Cave</h5>
                    <p>(earns 5-10 gold)</p>
                    <form action="/process" method="post">
                        <input type="hidden" name="location" value="cave">
                        <button type="submit" class="btn btn-success btn-block">Find Gold!</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- House -->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title">House</h5>
                    <p>(earns 2-5 gold)</p>
                    <form action="/process" method="post">
                        <input type="hidden" name="location" value="house">
                        <button type="submit" class="btn btn-success btn-block">Find Gold!</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- Quest -->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title">Quest</h5>
                    <p>(earns/takes 0-50 gold)</p>
                    <form action="/process" method="post">
                        <input type="hidden" name="location" value="quest">
                        <button type="submit" class="btn btn-warning btn-block">Find Gold!</button>
                    </form>
                </div>
            </div>
        </div>
        </div>
<div class="row justify-content-center mt-4">
    <!-- Spa -->
    <div class="col-md-3">
        <div class="card">
            <div class="card-body text-center">
                <h5 class="card-title">Spa</h5>
                <p>(loses 5-20 gold)</p>
                <form action="/process" method="post">
                    <input type="hidden" name="location" value="spa">
                    <button type="submit" class="btn btn-danger btn-block">Relax and Lose Gold!</button>
                </form>
            </div>
        </div>
    </div>
</div>

    <div class="mt-4">
        <h4>Activities:</h4>
        <div class="card">
            <div class="card-body">
                <ul>
                    <c:forEach var="activity" items="${activities}">
                        <li>${activity}</li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>