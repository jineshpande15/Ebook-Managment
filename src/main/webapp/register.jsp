<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Book Register</title>
        <%@include file="all_component/allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f4">
        <!--<h1>Hello World!</h1>-->
        <%@include file="all_component/navbar.jsp" %>
        <div class="container p-4">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center " style="font-weight: bold">Registration Page</h4>
                             
	                             <c:if test="${not empty succMsg}">
	                             <h4 class="text-center text-success">${succMsg}</h4>
	                             <c:remove var="succMsg"/>
	                             </c:if>
	                             
	                                <c:if test="${not empty failedMsg}">
	                             <h4 class="text-center text-danger">${failedMsg}</h4>
	                             <c:remove var="failedMsg"/>
	                             </c:if>
	                             
	                             
                             
                                <form action="register" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1"> Name</label>
    <input type="text" class="form-control"required="required" id="exampleInputEmail1"  name="fname" aria-describedby="emailHelp" placeholder="Enter Name">
    <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
  </div>
     <div class="form-group">
    <label for="exampleInputEmail1"> Email Address</label>
    <input type="email" class="form-control"required="required" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder=" Email">
    <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
  </div>
                                    <div class="form-group">
    <label for="exampleInputEmail1">Phone</label>
    <input type="tel" class="form-control" required="required" id="exampleInputEmail1" name="phno" aria-describedby="emailHelp" placeholder=" Phone no.">
    <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
  </div>
                                    
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" required="required" id="exampleInputPassword1" name="password" placeholder="Password">
  </div>
  <div class="form-check">
      <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
