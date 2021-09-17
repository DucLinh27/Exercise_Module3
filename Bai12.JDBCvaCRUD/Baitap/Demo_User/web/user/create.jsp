<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/20/2021
  Time: 8:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create new user</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <style>
        body {
            font-family: "Times New Roman", Times, serif;
            background-color: rgb(226, 226, 226);
        }

        .modal-dialog{
            margin: 250px auto;
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

        button {
            width: 90px;
        }

        .btn1 {
            margin: auto 100px;
        }

        a {
            text-decoration: none;
            color: white;
        }

        a:hover {
            color: black;
        }
    </style>
</head>
<body>
<form method="POST">
    <table>
        <th colspan="2">
            <h2 style="text-align: center">CREATE NEW USER</h2>
        </th>
        <tr>
            <td class="L">User Name</td>
            <td>
                <input type="text" name="name" id="name" placeholder="Enter your user"/>
            </td>
        </tr>
        <tr>
            <td class="L">Email</td>
            <td>
                <input type="text" name="email" id="email" placeholder="Enter your email"/>
            </td>
        </tr>
        <tr>
            <td class="L">Country</td>
            <td>
                <input type="text" name="country" id="country" placeholder="Enter your country"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 50px;">
                <div class="btn1">
                    <button type="submit" class="btn btn-success" data-toggle="modal" data-target="#myModal">
                        <a>SAVE</a>
                    </button>
                    <button class="btn btn-success">
                        <a href="users">BACK</a>
                    </button>
                    <button class="btn btn-success">
                        <a href="/">MENU</a>
                    </button>
                </div>
            </td>
        </tr>

        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">SUCCESSFUL</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        Added to the list.
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">CLOSE</button>
                    </div>
                </div>
            </div>
        </div>

    </table>
</form>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
