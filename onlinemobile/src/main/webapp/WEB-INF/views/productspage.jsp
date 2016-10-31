<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<html lang="en">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<div class="container">
	 <div class="panel-heading">
                <h1 class="panel-title">
                    Product Details
                </h1>
            </div>

	<spring:url value="/add" var="userActionUrl" />

	<form:form class="form-horizontal" method="post"
     modelAttribute="product" action="${userActionUrl}" enctype="multipart/form-data">

		<form:hidden path="id" />
	
		<%-- <spring:bind path="productimage">
		<img src="<c:url value="/resources/${product.productimage}.png"/>" width="40%"/>
		</spring:bind> --%>
		
		<spring:bind path="name">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
				<form:input path="name" type="text" class="form-control"
                                id="name" placeholder="${product.name}" />
				<form:errors path="name" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="description">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">description</label>
			<div class="col-sm-10">
				<form:input path="description" class="form-control"
                                id="description" placeholder="${product.description}" />
				<form:errors path="description" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="price">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">price</label>
			<div class="col-sm-10">
				<form:input path="price" class="form-control"
                                id="price" placeholder="${product.price}" />
				<form:errors path="price" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="unitinstock">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">unitinstock</label>
			<div class="col-sm-10">
				<form:input path="unitinstock" class="form-control"
                                id="unitinstock" placeholder="${product.unitinstock}" />
				<form:errors path="unitinstock" class="control-label" />
			</div>
		  </div>
		</spring:bind>

		<spring:bind path="category">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">category</label>
			<div class="col-sm-10">
				<label class="radio-inline">
                                  <form:radiobutton path="category" value="newarrival" /> New Arrival
				</label>
				<label class="radio-inline">
                                  <form:radiobutton path="category" value="exclusive" /> Exclusive
				</label> 
				<label class="radio-inline">
                                  <form:radiobutton path="category" value="offer" /> Offer
				</label> <br />
				<form:errors path="category" class="control-label" />
			</div>
		  </div>
		  </spring:bind>
		  
		 <%--  <spring:bind path="productimage">
		  <tr><td><form:input type="file" path="productimage" /></td></tr>
		</spring:bind> --%>
		
	<%-- <security:authorize access="ROLE_ADMIN"> --%>
	<div class="form-group">
		  <div class="col-sm-offset-2 col-sm-10">
			<%-- <c:choose>
			  <c:when test="${product['new']}"> --%>
			     <button type="submit" class="btn-lg btn-primary pull-left">Add
                         </button>
			<%--   </c:when> 
			  <c:otherwise> --%>
			     <button type="submit" class="btn-lg btn-primary pull-left">Update
                             </button>
			<%--   </c:otherwise>
			</c:choose> --%>
		  </div>
		</div>
		<%-- </security:authorize> --%>
	</form:form>

</div>

<%@ include file="footer.jsp" %>
</body>
</html>