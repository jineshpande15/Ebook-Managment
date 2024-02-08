<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color:#f0f2f2;">
<%@ include file="navbar.jsp" %>
<c:if test="${empty userobj }">
<c:redirect url="../login.jsp"/>
</c:if>
<div class="container mt-3">
<div class="row" >
<div class="col-md-4 offset-md-4">

<div class="card">
<div class="card-body">
<h4>Add Books</h4>

  <c:if test="${not empty succMsg}">
	                             <h4 class="text-center text-success">${succMsg}</h4>
	                             <c:remove var="succMsg"/>
	                             </c:if>
	                             
	                                <c:if test="${not empty failedMsg}">
	                             <h4 class="text-center text-danger">${failedMsg}</h4>
	                             <c:remove var="failedMsg"/>
	                             </c:if>
<form action="../add_books" method="post" enctype="multipart/form-data">

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
<label for="inputState">Book Categories</label>
<select id="inputState" name="btype" class="form-control">
<option selected>---select---</option>
<option value="New">New Book</option>

</select>

</div>



<div class="form-group">
<label for="inputState">Book Status</label>
<select id="inputState" name="bstatus" class="form-control">
<option selected>---select---</option>
<option value="Active">Active</option>
<option value="InActive">InActive</option>

</select>

</div>


<div class="form-group">
<label for="exampleInputEmail1">Upload Photo</label>
<input name="bimg" type="file" class="form-control" id="exampleInputEmail" >

</div>

<button type="submit" class="btn btn-primary">Add</button>
</form>

</div>
</div>
</div>
</div>
</div>

<div style="margin-top:115px;">
<%@include file="footer.jsp" %>
</div>
</body>
</html>