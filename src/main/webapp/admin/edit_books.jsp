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
<h4>Edit Books</h4>

  								
	                             
	                             
	                             <%
	                             
	                             int id=Integer.parseInt(request.getParameter("id"));
	                             BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
	                            BookDtls b= dao.getBookById(id);
	                            System.out.println(id);
	                             
	                             %>
<form action="../edit_books" method="post" >
<input type="hidden" name="id" value="<%=b.getBookId()%>">

<div class="form-group">
<label for="exampleInputEmail1">Book Name</label>
<input name="bname" type="text" class="form-control" value="<%=b.getBookName() %>" id="exampleInputEmail" aria-describedby="emailHelp">

</div>

<div class="form-group">
<label for="exampleInputEmail1">Auther Name</label>
<input name="author" type="text" class="form-control" value="<%=b.getAuthor() %>" id="exampleInputEmail" aria-describedby="emailHelp">

</div>

<div class="form-group">
<label for="exampleInputEmail1">Price</label>
<input name="price" type="number" class="form-control" value="<%=b.getPrice() %>" id="exampleInputEmail" aria-describedby="emailHelp">

</div>



<div class="form-group">
<label for="inputState">Book Status</label>
<select id="inputState" name="bstatus" class="form-control">
<%if("Active".equals(b.getStatus()))
{
	%>
<option value="Active">Active</option>
	
	<%
	}
else
{
%>

<option value="InActive">InActive</option>

<%	
}
	%>
	

</select>

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