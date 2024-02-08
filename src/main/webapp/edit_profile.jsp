<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.db.*"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import=" com.db.DBConnect"%>
<%@page import=" java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.entity.User"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allCss.jsp"%>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center ">Edit Profile</h3>
						<c:if test="${not empty failedMsg}">
	                             <h4 class="text-center text-danger">${failedMsg}</h4>
	                             <c:remove var="failedMsg" scope="session"/>
	                             </c:if>
                           
                            <c:if test="${not empty succMsg}">
	                             <h4 class="text-center text-success">${succMsg}</h4>
	                             <c:remove var="succMsg" scope="session"/>
	                             </c:if>
						<form action="update_profile" method="post">
							<input type="hidden" value="${userobj.id }" name="id">
							<div class="form-group">
								<label for="exampleInputEmail1"> Name</label> <input type="text"
									class="form-control" required="required"
									value="${userobj.name }" id="exampleInputEmail1" name="fname"
									aria-describedby="emailHelp" placeholder="Enter Name">
								<!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"> Email Address</label> <input
									type="email" class="form-control" required="required"
									value="${userobj.email }" id="exampleInputEmail1" name="email"
									aria-describedby="emailHelp" placeholder=" Email">
								<!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone</label> <input type="tel"
									class="form-control" required="required"
									value="${userobj.phno }" id="exampleInputEmail1" name="phno"
									aria-describedby="emailHelp" placeholder=" Phone no.">
								<!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" required="required"
									id="exampleInputPassword1" name="password"
									placeholder="Password">
							</div>

							<button type="submit" class="btn btn-primary">Update</button>
						</form>

					</div>
				</div>
			</div>
		</div>
</body>
</html>