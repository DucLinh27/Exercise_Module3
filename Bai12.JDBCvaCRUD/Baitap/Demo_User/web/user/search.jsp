<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/22/2021
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
            crossorigin="anonymous"
    />
    <style>
        body {
            font-family: "Times New Roman", Times, serif;
        }

        center {
            margin-top: 20px;
        }

        .table {
            width: 700px;
        }

        table {
            margin-top: 30px;
        }

        a{
            text-decoration: none;
            color: white;
            font-weight: bold;
        }

    </style>
</head>
<body>
<center>
    <form method="post">
        <h1>SEARCH USER</h1>
        <input type="text" name="ct" style="height: 39px; font-size: 18px" />
        <button type="submit" class="btn btn-success">
            <a>SEARCH</a>
        </button>
        <button class="btn btn-dark">
            <a href="users" style="text-decoration: none">BACK</a>
        </button>

        <c:if test="${empty selectedUser}">
            <center>
                <h2>Country is null</h2>
            </center>
        </c:if>

        <c:if test="${not empty selectedUser}">
            <table class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Country</th>
                </tr>
                <c:forEach var="user" items="${selectedUser}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>${user.country}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </form>
</center>
</body>
</html>