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
<body>
<%@ include file="navbar.jsp" %>
<c:if test="${empty userobj }">
<c:redirect url="../login.jsp"/>
</c:if>
<h2 class="text-center">All Books</h2>
                                 <c:if test="${not empty succMsg}">
	                             <h4 class="text-center text-success">${succMsg}</h4>
	                             <c:remove var="succMsg"/>
	                             </c:if>
	                             
	                                <c:if test="${not empty failedMsg}">
	                             <h4 class="text-center text-danger">${failedMsg}</h4>
	                             <c:remove var="failedMsg"/>
	                             </c:if>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Image</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Book category</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <%
  BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
  List<BookDtls>list=dao.getAllBooks();
  for(BookDtls b:list)
  {%>
   <tr>
      <td><%=b.getBookId() %></td>
      <td><img src="../book/<%=b.getPhotoName()%>" style="width:50px; height=50px;"></td>
      <td><%=b.getBookName()%></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getBookCategory() %></td>
      <td><%=b.getStatus() %></td>
      <td>
      <a href="edit_books.jsp?id=<%=b.getBookId() %>" class="btn btn-sm  btn-primary"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
      <a href="../delete?id=<%=b.getBookId() %>" class="btn btn-sm  btn-danger"><i class="fa-solid fa-trash-can"></i> Delete</a>
      </td>
    </tr>
  
	 <% 
  }
  %>
  
  
   
    
    
  </tbody>
</table>



<div style="margin-bottom:0px;margin-top:262px;">
<%@include file="footer.jsp" %>
</div>
</body>
</html>