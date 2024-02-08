<%@page import="java.sql.Connection"%>
<%@ page import="com.db.*" %> 
 <%@page isELIgnored="false"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import ="com.DAO.BookDAOImpl"%>
    <%@page import ="com.DAO.CartDAOImpl"%>
    <%@page import=" com.db.DBConnect" %>
    <%@page import=" java.util.List" %>
    <%@page import="com.entity.BookDtls" %>
    <%@page import="com.entity.User" %>
    <%@page import="com.entity.Cart" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <%@include file="all_component/allCss.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@include file="all_component/navbar.jsp" %>
  <c:if test="${not empty succMsg}">
	                            	<div class="alert alert-success">
	                            	${succMsg}
	                            	</div>
	                             <c:remove var="succMsg"/>
	                             </c:if>
	                             
	                                <c:if test="${not empty failedMsg}">
	                             <div class="alert alert-success">
	                            	${failedMsg}
	                            	</div>
	                             
	                             <c:remove var="failedMsg"/>
	                             </c:if>
 <div class="container p-5">
 <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
        <th scope="col">Category</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <%
  User u=(User)session.getAttribute("userobj");
  String email=u.getEmail();
                BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
                List<BookDtls>list=dao.getBookByOld(email,"Old");
                for(BookDtls b:list){
                	%>
                	
                	  <tr>
      <th ><%=b.getBookName() %></th>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
         <td><%=b.getBookCategory() %></td>
      
      <td><a href="delete_old_book?em=<%=email %>&&id=<%=b.getBookId() %>" class="btn btn-sm btn-danger">Delete</a></td>
     
    </tr>
                <% }
               
                
                
              
     %>           	     

  
   
  </tbody>
</table>
 </div>



</body>
</html>