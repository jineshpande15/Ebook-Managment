<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.db.*"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import=" com.db.DBConnect"%>
<%@page import=" java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Book_Order"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/allCss.jsp"%>
<meta charset="ISO-8859-1">
<title>Order</title>
</head>
<body style="background-color: #f7f7f7;">
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"/>
</c:if>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-1">
		<h3 class="text-center mt-4">Your Order</h3>
		<table class="table mt-3">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Order Id</th>
					<th scope="col">Name</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
				</tr>
			</thead>
			<tbody>

				<%
  
  User u=(User)session.getAttribute("userobj");
  BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
 List<Book_Order> blist=dao.getBook(u.getEmail());
 for(Book_Order b:blist)
 {%>
	 
	 
				<tr>
					<th ><%=b.getOrderId() %></th>
					<td><%=b.getUserName() %></td>
					<td><%=b.getBookName() %></td>
					<td><%=b.getAuthor() %></td>
					<td><%=b.getPrice() %></td>
					<td><%=b.getPaymentType() %></td>
				</tr>
	 
 <%}
  
  %>



		</table>
</body>
</html>