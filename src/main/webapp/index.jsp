<%-- 
    Document   : index
    Created on : Jun 21, 2023, 4:01:40 PM
    Author     : jines
--%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.db.*" %> 
 <%@page isELIgnored="false"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import ="com.DAO.BookDAOImpl"%>
    <%@page import=" com.db.DBConnect" %>
    <%@page import=" java.util.List" %>
    <%@page import="com.entity.BookDtls" %>
    <%@page import="com.entity.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="all_component/allCss.jsp" %>
        <style type="text/css">
            .back-img
            {
                background-image: url(img/img1.jpg);
                height:50vh;
                width: 100%;
                background-size: cover;
                background-repeat: no-repeat;
                
            }
            .crd-ho
            {
            
            box-shadow: 10px 10px 20px black;
            }
            .crd-ho:hover
            {
                box-shadow: 10px 10px 10px black; 
             
            }
            p
            {
            margin-top:15px;
            font-weight:bold;
            }
            .img-thumblin
            {
            box-shadow: 10px 10px 10px black;
            }
            .img-thumblin:hover
            {
            box-shadow: 10px 10px 50px black;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#f7f7f7;">
        <%
		User u=(User)session.getAttribute("userobj");
%>
     <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid back-img">
            <h2 class="text-center text-danger" style="font-weight: bolder">E-Book Managment System</h2>
        </div>
        
        <!--start recent book-->
        <div class="container " >
            <h3 class="text-center mt-3" style="font-weight:bold;margin-top:10px;">Recent Book</h3>
            <div class="row mt-3" style="margin-top:10px;">
            <%
            BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
            List<BookDtls>list2=dao2.getRecentBooks();
            for(BookDtls b:list2)
            {%>
            	
            	<div class="col-md-3" >
                	
                	<div class="card crd-ho " >
                         <div class="card-body text-center ">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width:150px;height: 200px; "class="img-thumblin">
                       
     
                        <p class="mt-3	" style="font-weight:bold;"><%=b.getBookName() %></p>
                        <p><%=b.getAuthor() %></p>
                        <%
                        if(b.getBookCategory().equals("Old"))
                        {
                        %>
                         <div class="row t"  >
                         
                         
                            
                            <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-4">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-4"><%=b.getPrice() %>.<i class="fa-solid fa-rupee-sign"></i></a>
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
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %>.<i class="fa-solid fa-rupee-sign"></i></a>
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
            <div class="text-center mt-2">
                   <a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white mt-3"> View All</a>
            </div>
        </div>
        
        <!--end recent book-->
        <hr>
         
        <!--start of new Book-->
        <div class="container " >
            <h3 class="text-center mt-3" style="font-weight:bold;margin-top:10px;">New Book</h3>
            <div class="row mt-3" style="margin-top:10px;">
                <%
                BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
                List<BookDtls>list=dao.getNewBook();
                for(BookDtls b:list)
                {%>
                	
                <div class="col-md-3">
                	
                	<div class="card crd-ho">
                         <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width:150px;height: 200px;"class="img-thumblin">
                        <p > <%=b.getBookName() %></p>
                        <p> <%=b.getAuthor() %></p>
                        <p><%=b.getBookCategory() %></p>
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
                            <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-6">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %>.<i class="fa-solid fa-rupee-sign"></i></a>
                        </div>
                    </div>
                    </div>
                    
            </div>
                    
                	
                <%}
                %>
                    
                
          
                
              
              
        </div>
            <div class="text-center mt-2">
                   <a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white mt-3"> View All</a>
            </div>
        </div>
        
        <!--end  NEw book-->
        <hr>
        
        
        <!--start of old book-->
        
        <div class="container " >
            <h3 class="text-center mt-3" style="font-weight:bold;margin-top:10px;">Old Book</h3>
            <div class="row mt-3" style="margin-top:10px;">
               <%
            BookDAOImpl dao3=new BookDAOImpl(DBConnect.getConn());
            List<BookDtls>list3=dao3.getOldBooks();
            for(BookDtls b:list3)
            {%>
            	
            	<div class="col-md-3">
                	
                	<div class="card crd-ho">
                         <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width:150px;height: 200px;"class="img-thumblin">
                        <p ><%=b.getBookName() %></p>
                        <p><%=b.getAuthor() %></p>
                        <p><%=b.getBookCategory() %></p>
                        
                         <div class="row t"  >
                            
                            <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-7">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %>.<i class="fa-solid fa-rupee-sign"></i></a>
                        </div>
                        
                        
                       
                    </div>
                    </div>
                    
            </div>
            	
            	<%
            }
            %>
                
             
                
              
                
              
        </div>
            <div class="text-center mt-2">
                   <a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white mt-2"> View All</a>
            </div>
        </div>
        
        <!--end old book-->
        
        
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
