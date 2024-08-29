<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fruit Loops</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
        .text-pink {
            color: pink;
            }
        .bg-pink {
            background-color: pink;
        }
                .table-pink-bordered {
            border: 2px solid pink;
        }
        .table-pink-bordered th,
        .table-pink-bordered td {
            border: 2px solid pink; 
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-pink">Fruit Store</h1>
    <div class="container mt-5 bg-pink p-3">
        <table class="table table-pink-bordered table-hover mt-3 bg-pink">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${fruits}">
                    <tr>
                        <td class="${item.name.startsWith('G') ? 'text-warning' : ''}">${item.name}</td>
                        <td>${item.price}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    </div>
</body>
</html>