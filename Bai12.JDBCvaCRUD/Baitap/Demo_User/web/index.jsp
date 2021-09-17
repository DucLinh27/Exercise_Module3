<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/20/2021
  Time: 6:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Menu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <style>
        body {
            background-color: rgb(226, 226, 226);
        }

        div {
            margin-top: 300px;
        }

        button {
            width: 300px;
            size: 100px;
            height: 70px;
            padding: 20px;

        }

        a {
            text-decoration: none;
            font-size: 20px;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div>
    <center>
        <button type="submit" class="btn btn-dark">
            <a href="/users?action=create">CREATE NEW USER</a>
        </button>
        <button type="submit" class="btn btn-dark">
            <a href="/users?action=users">USER LIST</a>
        </button>
        <button type="submit" class="btn btn-dark">
            <a href="/users?action=search">SEARCH USER</a>
        </button>
    </center>
</div>
</body>
</html>
