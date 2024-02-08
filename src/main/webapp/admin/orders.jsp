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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allCss.jsp" %>
</head>
<body>
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"/>
</c:if>
<%@ include file="navbar.jsp" %>

<c:if test="${empty userobj }">
<c:redirect url="../login.jsp"/>
</c:if>
<div class="container ">
<h3 class="text-center mt-3 p-2">Order Details</h3>
<table class="table mt-3 p-3">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Order ID</th>
      <th scope="col"> Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Phno</th>
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
   List<Book_Order> blist=dao.getAllOrder();
   for(Book_Order b:blist)
   {%>
	   
	  <tr>
      <th scope="row"><%=b.getOrderId() %></th>
      <td><%=b.getUserName() %></td>
      <td><%=b.getEmail() %></td>
      <td><%=b.getFulladd() %></td>
      <td><%=b.getPhno() %></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getPaymentType() %></td>
      
    </tr>
       
	   
  <% }
  %>
  
  
  </tbody>
</table>
</div>

<div style="margin-top:307px;">
<%@include file="footer.jsp" %>
</div>
</body>
</html>