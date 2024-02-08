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
<%@include file="all_component/allCss.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <body style="background-color:#f7f7f7;">
   
     <%@include file="all_component/navbar.jsp" %>

<div class="container text-center mt-3">
<i class="fas fa-check-circle fa-6x text-success mt-6"></i>
<h1>Thank You</h1>
<h2>You Ordered Successfully</h2>
<h5>Within 7 days your product will be delivered</h5>
<a href="index.jsp" class="btn btn-primary mt-3">Home</a>
<a href="order.jsp " class="btn btn-danger  mt-3">View Order</a>
</div>
</body>
</html>