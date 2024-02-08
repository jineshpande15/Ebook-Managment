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
<%@include file="all_component/allCss.jsp" %>
<meta charset="ISO-8859-1">
<title>All Old Books</title>
<style type="text/css">
            .back-img
            {
                background-image: url(img/img1.jpg);
                height:50vh;
                width: 100%;
                background-size: cover;
                background-repeat: no-repeat;
                
            }
            .crd-ho:hover
            {
               background-color: #f7f7f7; 
            }
        </style>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid">
<div class="row p-3">
  <%
            BookDAOImpl dao3=new BookDAOImpl(DBConnect.getConn());
            List<BookDtls>list3=dao3.getOldBooks();
            for(BookDtls b:list3)
            {%>
            	
            	<div class="col-md-3">
                	
                	<div class="card crd-ho">
                         <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width:120px;height: 17 0px;"class="img-thumblin">
                        <p ><%=b.getBookName() %></p>
                        <p><%=b.getAuthor() %></p>
                        <p><%=b.getBookCategory() %></p>
                        
                         <div class="row t"  >
                            
                            <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm " style="margin-left:70px;">View Details</a>
                            <a href="" class="btn btn-danger btn-sm "style="margin-left:70px;"><%=b.getPrice() %>.<i class="fa-solid fa-rupee-sign"></i></a>
                        </div>
                        
                        
                       
                    </div>
                    </div>
                    
            </div>
            	
            	<%
            }
            %>
</div>
</div>
</body>
</html>