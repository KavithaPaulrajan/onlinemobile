<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false" %>
<%--  <%@ include file="header.jsp" %> --%>
<html lang="en">
<head>
  <title>Insert title here</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>

  <nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<ul class="nav navbar-nav ">
			<li><a class="navbar-brand" href="#">emob</a></li>
		<li><a href="<c:url value="/home"/>">Home</a></li>
				<li><a href="<c:url value="/about"/>">About us</a></li>
				<li><a href="<c:url value="/list"/>">View Product</a></li>
				<li><a href="<c:url value="/products"/>">Add new Products</a></li> 
				 <%-- <c:if test="${pageContext.request.userPrincipal.name!=null}" >
				<security:authorize access="ROLE_ADMIN"> 
				<li><a href="<c:url value="/addproduct"/>">Add new Products</a></li> 
				</security:authorize>
				
				<li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li>
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>
		</c:if >
				<c:if test="${pageContext.request.userPrincipal.name==null}">
				<li><a href="<c:url value="login"></c:url>">login</a></li>
		<c:url value="/registration" var="url"></c:url>
			<li><a href="${url }">Register</a></li>
			</c:if>  --%>
			</ul>
				</div>
				</nav> 
<body>
<div id="mycarousel" class="carousel slide" data-ride="carousel">

<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="E:\kavitha\1+3.jpg" class="img-responsive" alt="oneplus 3" width="840" height="230">
</div>
<div class="item">
<img src="E:\kavitha\Gionee-F103-Pro.jpg" class="img-responsive" alt="Gionee F103" width="840" height="230">
</div>
<div class="item">
<img src="E:\kavitha\lenovo_k5_note.jpg" class="img-responsive" alt="lenovo k5 note" width="840" height="230">
</div>
<div class="item">
<img src="E:\kavitha\moto.jpg" class="img-responsive" alt="moto g4" width="840" height="230">
</div>
<a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
  <span class="sr-only">Next</span>
  </a>
  </div>
 <div class="jumbotron">
    <h1>emob</h1> 
    <h3>Online Shopping for Mobile Phones </h3>
   
   <div class="container">
	<div class="row">
		<div class="col-md-12">
    	    <div class="well"> 
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    
                <div class="item active">
                	<div class="row-fluid">
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="E:\kavitha\nexus6.jpg" alt="Nexus 6" width="250" height="250" /></a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="E:\kavitha\htc.jpg" alt="HTC" width="250" height="250" /></a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="E:\kavitha\samsungs6.jpg" alt="Samsung s6" width="250" height="250" /></a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="E:\kavitha\samsung galaxy a7.jpg" alt="Samsung Galaxy A7" width="250" height="250"/></a></div>
                	
                	</div>
                </div>
                <div class="item">
                	<div class="row-fluid">
                	<div class="col-md-3"><a href="#" class="thumbnail"><img src="E:\kavitha\lenovo-vibe-k5-plus.jpg" alt="Lenono Vibe k5Plus" width="250" height="250" /></a></div>
                	<div class="col-md-3"><a href="#" class="thumbnail"><img src="E:\kavitha\Lenovo-Vibe-K5-Note.jpg" alt="Lenovo Vibe K5Note" width="250" height="250" /></a></div>
                	<div class="col-md-3"><a href="#" class="thumbnail"><img src="E:\kavitha\1+3.jpg" alt="one plus three" width="250" height="250" /></a></div>
                	<div class="col-md-3"><a href="#" class="thumbnail"><img src="E:\kavitha\moto.jpg" alt="moto" width="250" height="250" /></a></div>
                	</div>
                </div>
                </div>
                  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
 				  <span class="sr-only">Previous</span>
 				 </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                 <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
 				  <span class="sr-only">Next</span>
 				 </a>
            
                </div>
                 </div>
               
            </div>   
		</div>
	</div>
</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>