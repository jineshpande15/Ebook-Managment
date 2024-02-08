<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import ="com.DAO.BookDAOImpl"%>
    <%@page import=" com.db.DBConnect" %>
    <%@page import=" java.util.List" %>
    <%@page import="com.entity.BookDtls" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allCss.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background_color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	 <%
		User u=(User)session.getAttribute("userobj");
%>
	<%
	int bid=Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
	BookDtls b=dao.getBookById(bid);
	
	
	
	%>

	<div class="container p-3">
		<div class="row ">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="book/<%=b.getPhotoName() %>" style="height: 180px; width: 150px"><br>
				<h4 class="mt-3" style="font-weight:bold">  Book Name : <span class="text-success" style="font-weight:bolder"><%=b.getBookName() %> </span></h4>
				<h4 style="font-weight:bold">Author Name : <span class="text-success"style="font-weight:bolder"><%=b.getAuthor() %></span></h4>
				<h4 style="font-weight:bold">Category    : <span class="text-success"style="font-weight:bolder"><%=b.getBookCategory() %></span></h4>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white ">
				<h2 style="font-weight:bolder"><%=b.getBookName() %></h2>
				<%
				if("Old".equals(b.getBookCategory()))
				{%>
					<h4 class="text-danger mt-2">Contact To Seller</h4>
					<h5 class="text-primary mt-2">EMAIL: <i class="fa-solid fa-envelope"></i> <%=b.getEmail() %></h5>
					
				<%}
				
				
				%>
				
				<div class="row">
				<div class="col-md-4 text-danger text-center p-2">
					<i class="fa-solid fa-money-bill-wave fa-3x"></i>
					<p>Cash on Delivery</p> 
				</div>
				<div class="col-md-4 text-danger text-center p-2">
					<i class="fa-solid fa-rotate-left fa-3x"></i> 
				<p>Return Available</p>
				</div>
				<div class="col-md-4 text-danger text-center p-2">
					<i class="fas fa-truck-moving fa-3x"></i>
					<p> Free Shipping</p>
				</div>
				</div>
				
				<%
				if("Old".equals(b.getBookCategory()))
				{%>
				<div class=" text-center p-3 mt-3">
				<a href="index.jsp" class="btn btn-success"><i class="fa-solid fa-cart-shopping fa-shake"></i> Continue Shopping</a>
				<a href="#" class="btn btn-warning">200 . <i class="fas fa-rupee-sign"></i></a>
				</div>	
				<%}
				else{%>
				
				
				
				<div class=" text-center p-3 mt-3">
				<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-primary"><i class="fa-solid fa-cart-shopping fa-shake"></i> AddCart</a>
				<a href="#" class="btn btn-success">200 . <i class="fas fa-rupee-sign"></i></a>
				</div>
	<%}
				%>
			</div>
		</div>
	</div>
</body>
</html>