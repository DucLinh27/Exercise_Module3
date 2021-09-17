<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/22/2021
  Time: 10:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit user</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
            crossorigin="anonymous"
    />
    <style>
        body {
            font-family: "Times New Roman", Times, serif;
            background-color: rgb(226, 226, 226);
        }

        table {
            margin: 150px auto;
            width: 500px;
            height: 300px;
            border-collapse: separate;
            border: solid black 2px;
            border-radius: 10px;
            -moz-border-radius: 10px;
            background-color: antiquewhite;
        }

        input {
            border-radius: 10px;
            width: 350px;
            float: right;
            margin-right: 20px;
        }

        .L {
            text-align: right;
        }

        button{
            width: 90px;
        }

        .btn1{
            margin: auto 100px;
        }

        a{
            text-decoration: none;
            color: white;
        }

        a:hover{
            color: black;
        }
    </style>
</head>
<body>
<form method="POST">
    <table>
        <th colspan="2">
            <h2 style="text-align: center">EDIT USER</h2>
        </th>
        <tr>
            <td class="L">User Name</td>
            <td>
                <input
                        type="text"
                        name="name"
                        id="name" value="${user.name}"
                        placeholder="Enter your user"
                />
            </td>
        </tr>
        <tr>
            <td class="L">Email</td>
            <td>
                <input
                        type="text"
                        name="email"
                        id="email" value="${user.email}"
                        placeholder="Enter your email"
                />
            </td>
        </tr>
        <tr>
            <td class="L">Country</td>
            <td>
                <input
                        type="text"
                        name="country"
                        id="country" value="${user.country}"
                        placeholder="Enter your country"
                />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 50px;">
                <div class="btn1">
                    <button type="submit" class="btn btn-success">
                        <a>UPDATE</a>
                    </button>
                    <button type="button" class="btn btn-success">
                        <a href="users">BACK</a>
                    </button>
                    <button type="button" class="btn btn-success">
                        <a href="/">MENU</a>
                    </button>
                </div>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
