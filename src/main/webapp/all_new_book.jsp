<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>All New Books</title>
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
 #toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 2.s, fadeOut 2s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
        </style>
</head>
<body>
<c:if test="${not empty addCart }">
<div id="toast">${ addCart } </div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		    $("#toast").removeClass("display");
		    },2000)
		}	
</script>
<c:remove var="addCart" scope="session"/>
</c:if>


<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid">
<div class="row p-3">
<%
                BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
                List<BookDtls>list=dao.getNewBook();
                for(BookDtls b:list)
                {%>
                	     <%
		User u=(User)session.getAttribute("userobj");
%>
                <div class="col-md-3">
                	
                	<div class="card crd-ho">
                         <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName() %>" style="width:120px;height: 170px;"class="img-thumblin">
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
                            <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %>.<i class="fa-solid fa-rupee-sign"></i></a>
                        </div>
                    </div>
                    </div>
                    
            </div>
                    
                	
                <%}
                %>
                    
</div>
</div>
</body>
</html>