<%--
  Created by IntelliJ IDEA.
  User: ducli
  Date: 13/08/2021
  Time: 8:35 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

    <style>
        table{
            width: 450px;
            margin: 0 auto;
        }


    </style>
</head>
<body>
<h1 style="text-align: center">Delete Product</h1>
<p style="text-align: center">
    <button type="button" class="btn btn-secondary">
        <a href="/products" style="text-decoration: slategray ; color: greenyellow ; font-weight: bold">Back to product list</a>
    </button>
</p>

<form method="post">
    <h2 style="text-align: center">Information Product</h2>
    <table>
        <tr>
            <td>Id</td>
            <td>${requestScope["product"].getId()}</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
            <td>Price</td>
            <td>${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
            <td>Date</td>
            <td>${requestScope["product"].getDate()}</td>
        </tr>
        <tr>
            <td>Img</td>
            <td>${requestScope["product"].getImg()}</td>
        </tr>
        <tr>
            <td>Origin</td>
            <td>${requestScope["product"].getOrigin()}</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-info">Delete Product</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>

