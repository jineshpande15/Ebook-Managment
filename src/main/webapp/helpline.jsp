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


<div class="container ">
<div class="row p-5 mt-5" >
<div class="col-md-4 offset-4 text-center">
<div class="text-success text-center">
<i class="fa-solid fa-square-phone fa-3x"></i>
</div>
<h2>24 x 7 Service</h2>
<h4>HelpLine Number</h4>
<h5>+9111111 11111</h5>
<a href="index.jsp" class="btn btn-primary">Home</a>
</div>
</div>

</div>

</body>
</html>