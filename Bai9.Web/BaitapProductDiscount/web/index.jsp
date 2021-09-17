<%--
  Created by IntelliJ IDEA.
  User: ducli
  Date: 17/09/2021
  Time: 6:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>$Title$</title>
</head>
<body>
<div class="container ">
  <form action="display-discount" method="post">
    <div class="form-group">
      <label >Product Description</label>
      <input type="text" class="form-control" name="description">

    </div>
    <div class="form-group">
      <label >List Price </label>
      <input type="text" class="form-control" name="listPrice">
    </div>
    <div class="form-group">
      <label >Discount Percent</label>
      <input type="text" class="form-control" name="Discount_Percent" >
    </div>

    <button type="submit" class="btn btn-primary">Calculate Discount </button>
  </form>
</div>
</body>
</html>
