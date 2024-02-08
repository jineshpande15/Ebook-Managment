<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection"%>
<%@ page import="com.db.*" %> 
 <%@page isELIgnored="false"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import ="com.DAO.BookDAOImpl"%>
    <%@page import=" com.db.DBConnect" %>
    <%@page import=" java.util.List" %>
    <%@page import="com.entity.BookDtls" %>
    <%@page import="com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allCss.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_component/navbar.jsp"%>
<div class="container">
<div class="row p-3">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<h3 class="text-center ">Address</h3>
<form>

<div class="form-row">
   
    <div class="form-group col-md-6">
      <label for="inputPassword4">Address</label>
      <input type="text" class="form-control" id="inputPassword4"  >
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputEmail4">Landmark</label>
      <input type="text" class="form-control" id="inputEmail4" >
    </div>
  
  </div>
  
  <div class="form-row">
    
    <div class="form-group col-md-4">
      <label for="inputPassword4">City</label>
      <input type="text" class="form-control" id="inputPassword4" >
    </div>
    <div class="form-group col-md-4">
      <label for="inputPassword4">State</label>
      <input type="text" class="form-control" id="inputPassword4" >
    </div>
    
     <div class="form-group col-md-4">
      <label for="inputPassword4">Pincode</label>
      <input type="number" class="form-control" id="inputPassword4" >
    </div>
  </div>
  <div class="text-center">
  <button class="btn btn-warning ">Add Address</button>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>