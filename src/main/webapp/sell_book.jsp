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
<title>Sell Book</title>
</head>
<body style="background-color: #f7f7f7;">
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"/>
</c:if>
<%@include file="all_component/navbar.jsp"%>
<div class="container ">
<div class="row mt-4">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h5 class="text-center p-1">Sell Old Books</h5>
  
	                              <c:if test="${not empty succMsg}">
	                             <h4 class="text-center text-success">${succMsg}</h4>
	                             <c:remove var="succMsg"/>
	                             </c:if>
	                             
	                                <c:if test="${ empty failedMsg}">
	                             <h4 class="text-center text-danger">${failedMsg}</h4>
	                             <c:remove var="failedMsg"/>
	                             </c:if>
<form action="add_old_book" method="post" enctype="multipart/form-data">

<input type="hidden" value="${userobj.email }" name="user">

<div class="form-group">
<label for="exampleInputEmail1">Book Name</label>
<input name="bname" type="text" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp">

</div>

<div class="form-group">
<label for="exampleInputEmail1">Auther Name</label>
<input name="author" type="text" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp">

</div>

<div class="form-group">
<label for="exampleInputEmail1">Price</label>
<input name="price" type="number" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp">

</div>




<div class="form-group">
<label for="exampleInputEmail1">Upload Photo</label>
<input name="bimg" type="file" class="form-control" id="exampleInputEmail" >

</div>

<button type="submit" class="btn btn-primary">Sell</button>
</form>
</div>
</div>
</div>
</div>
</div>	
</body>
</html>