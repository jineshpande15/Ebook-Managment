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

<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
<meta charset="ISO-8859-1">
<title>Settings</title>
</head>
<body style="background-color: #f7f7f7;">

<c:if test="${empty userobj }">
<c:redirect url="login.jsp"/>

</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
	
	<h3 class="text-center">Hello ${userobj.name}</h3>
	
		
		<div class="row p-5">
			<div class="col-md-4">
				<a href="sell_book.jsp">
					<div class="card ">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open fa-3x"></i>
							</div>
							<h4>Sell Old Books</h4>

						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4">
				<a href="old_book.jsp">
					<div class="card ">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open fa-3x"></i>
							</div>
							<h4> Old Books</h4>

						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4">
				<a href="edit_profile.jsp">
					<div class="card ">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-pen-to-square fa-3x"></i>
							</div>
							<h3>Edit Profile</h3>

						</div>
					</div>
				</a>
			</div>
			
			
			
			
			
			<div class="col-md-6 mt-3">
				<a href="order.jsp">
					<div class="card ">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa fa-box-open fa-3x"></i>
							</div>
							<h3>My Orders</h3>
							<p>Track Your Order</p>

						</div>
					</div>
				</a>
			</div>
			
			
			
			<div class="col-md-6 mt-3">
				<a href="helpline.jsp">
					<div class="card ">
						<div class="card-body text-center">
							<div class="text-warning">
								<i class="fa-sharp fa-solid fa-circle-info fa-3x"></i>
							</div>
							<h3>Help Center</h3>
							<p>24 x 7 Service</p>

						</div>
					</div>
				</a>
			</div>
			
		</div>

	</div>
	<%@ include file ="all_component/footer.jsp" %>
</body>
</html>