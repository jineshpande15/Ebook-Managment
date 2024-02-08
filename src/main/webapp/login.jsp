<%-- 
    Document   : login
    Created on : Jun 21, 2023, 7:41:58 PM
    Author     : jines
--%>

<%@page isELIgnored="false"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="all_component/allCss.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Book Login</title>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>

        <!--<h1>Hello World!</h1>-->
        <div class="container">
            <div class="row mt-4">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class ="text-center" style="font-weight: bold">Login Page</h5>
                           
                              <c:if test="${not empty failedMsg}">
	                             <h4 class="text-center text-danger">${failedMsg}</h4>
	                             <c:remove var="failedMsg" scope="session"/>
	                             </c:if>
                           
                            <c:if test="${not empty succMsg}">
	                             <h4 class="text-center text-success">${succMsg}</h4>
	                             <c:remove var="succMsg" scope="session"/>
	                             </c:if>
                           
                          
                           
                           
                            <form action="login" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email"  name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" placeholder="Enter email">
                                    <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password"  name="password" class="form-control" id="exampleInputPassword1" required="required" placeholder="Password">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary ">Login</button><br>
                                    <a href="register.jsp">Create Account</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <div style="margin-top:180px;">
        <%@include file="all_component/footer.jsp" %>
    </div>
        </body>
</html>
