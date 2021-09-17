<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/18/2021
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List User</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
            crossorigin="anonymous"
    />
    <style>
        center {
            margin-top: 70px;
        }

        body {
            font-family: "Times New Roman", Times, serif;
        }

        .btn1 {
            margin-top: 30px;
        }

        button {
            width: 200px;
        }

        .table {
            width: 1000px;
            margin-top: 10px;
        }

        td {
            width: 200px;
        }

        a {
            text-decoration: none;
            color: white;
            font-weight: bold;
        }

        a:hover {
            color: black;
        }

        .abc:hover{
            color: black;
        }
    </style>

    <script>
        // Initialize tooltip component
        $(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });

        // Initialize popover component
        $(function () {
            $('[data-toggle="popover"]').popover();
        });
    </script>
</head>
<body>

<center>
    <h1>MANAGER USER</h1>
    <div class="btn1">
        <button type="button" class="btn btn-info">
            <a href="/users?action=create">CREATE NEW USER</a>
        </button>
        <button type="button" class="btn btn-info">
            <a href="users?action=search">SEARCH COUNTRY</a>
        </button>
        <button type="button" class="btn btn-info">
            <a href="users?action=sort">SORTING BY NAME</a>
        </button>
    </div>
</center>


<c:if test="${empty listUser}">
    <h2 style="color: red ; font-weight: bold ; font-family: 'Times New Roman', Times, serif ; text-align: center ; margin-top: 30px">
        User List is empty</h2>
</c:if>


<c:if test="${not empty listUser}">
    <center style="margin-top: 40px">
        <h4 style="margin-top: 20px; width: 100px">User List</h4>
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col" style="width: 30px">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Country</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <th scope="row" style="width: 30px">
                        <c:out value="${user.id}"/>
                    </th>
                    <td scope="row"><c:out value="${user.name}"/></td>
                    <td scope="row"><c:out value="${user.email}"/></td>
                    <td scope="row"><c:out value="${user.country}"/></td>
                    <td scope="row" style="width: 250px">
<%--                        <button class="btn btn-warning" style="width: 100px;">--%>
<%--                            <a href="/users?action=edit&id=${user.id}">EDIT</a>--%>
<%--                        </button>--%>


                        <div class="container-fluid">

                            <button class="btn btn-warning" style="width: 100px;">
                                <a href="/users?action=edit&id=${user.id}">EDIT</a>
                            </button>

                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#flipFlop${user.id}" style="width: 100px;">
                                <a class="abc">DELETE</a>
                            </button>

                            <!-- The modal -->
                            <div class="modal fade" id="flipFlop${user.id}" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" id="modalLabel">WARNING!</h4>
                                        </div>
                                        <div class="modal-body">DO YOU WANT TO DELETE ID_User <c:out value="${user.id}"/> ? </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-danger" style="width: 100px;">
                                                <a href="/users?action=delete&id=${user.id}">DELETE</a>
                                            </button>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal" style="width: 100px">CLOSE</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
<%--                        <button type="submit" class="btn btn-dark" style="width: 100px;">--%>
<%--                            <a href="/users?action=delete&id=${user.id}">DELETE</a>--%>
<%--                        </button>--%>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </center>
</c:if>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
