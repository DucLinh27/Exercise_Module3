<%--
  Created by IntelliJ IDEA.
  User: ducli
  Date: 13/08/2021
  Time: 8:34 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <style>
        table {
            border: 1px solid black;
            width: 1000px;
            margin: 0 auto;
        }

        tr, td {
            border: 1px solid black;
            text-align: center;
            height: 60px;
            color: black;
        }

        h1 {
            text-align: center;
        }

        a {
            text-decoration: none;
        }

        .xx {
            font-size: 15px;
            font-weight: bold;
        }

    </style>
</head>
<body>
<h1>Products List</h1>
<p>
    <button type="button" class="btn btn-success">
        <a href="/products?action=create" style="width: 250px ; color: black ; font-weight: bold">Create new product</a>
    </button>
</p>
<table class="table table-striped">
    <tr class="xx">
        <td>ID</td>
        <td>Name</td>
        <td>Price</td>
        <td>Date</td>
        <td>Img</td>
        <td>Origin</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td>${product.getId()}</td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getDate()}</td>
            <td>
                <img src="/img/${product.getImg()}" width="50" height="50"/>
            </td>
            <td>${product.getOrigin()}</td>
            <td>
                <button type="button" class="btn btn-info">
                    <a href="/products?action=edit&id=${product.getId()}"
                       style="color: black ; font-weight: bold">Edit</a>
                </button>
            </td>
            <td>
                <button type=" button" class="btn btn-danger">
                    <a href="/products?action=delete&id=${product.getId()}" style="color: black ; font-weight: bold">Delete</a>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

