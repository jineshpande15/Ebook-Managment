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
<title>All Recent Book</title>
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
    <%
		User u=(User)session.getAttribute("userobj");
%>
<div class="container-fluid">
<div class="row p-3">
 <%
            BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
            List<BookDtls>list2=dao2.getRecentBooks();
            for(BookDtls b:list2)
            {%>
            	
            	<div class="col-md-3">
                	
                	<div class="card crd-ho mt-2">
                         <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width:120px;height: 170px;"class="img-thumblin">
                        <p ><%=b.getBookName() %></p>
                        <p><%=b.getAuthor() %></p>
                        <%
                        if(b.getBookCategory().equals("old"))
                        {
                        %>
                         <div class="row t"  >
                            
                            <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-4">View Details</a>
                            <a  class="btn btn-danger btn-sm ml-4"><%=b.getPrice() %>.<i class="fa-solid fa-rupee-sign"></i></a>
                        </div>
                        
                        
                        <%
                        }
                        else
                        {%>
                        	Categories:<%=b.getBookCategory() %>
                         <div class="row t"  >
                           <%
                         if(u==null)
                         {%>
                            <a href="login.jsp" class="btn btn-danger btn-sm ml-2"> <i class="fa-solid fa-cart-shopping fa-shake"></i> Cart</a>                        	 
                         <%}
                         else
                         {%>
                            <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-2"> <i class="fa-solid fa-cart-shopping fa-shake"></i> Cart</a>
                    	 
                         <%}
                         %>
                            <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a  class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %>.<i class="fa-solid fa-rupee-sign"></i></a>
                        </div>	
                        	
                        <%}
                        
                        
                        %>
                       
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