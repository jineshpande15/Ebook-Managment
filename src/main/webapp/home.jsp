<%@page isELIgnored="false"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<h1>User</h1>
 <c:if test="${not empty userobj}">
	                             <h1>Name:${userobj.name}</h1>
	                             <h1>Email:${userobj.email}</h1>
	                             <h1>Password:${userobj.password}</h1>
	                             </c:if>
</body>
</html>