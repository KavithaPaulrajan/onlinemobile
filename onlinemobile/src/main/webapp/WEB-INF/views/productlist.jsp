<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<html lang="en">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<body>


	<div class="container">

		<c:if test="${not empty msg}">
		    <div class="alert alert-${css} alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert"
                                aria-label="Close">
				<span aria-hidden="true">×</span>
			</button>
			<strong>${msg}</strong>
		    </div>
		</c:if>

		<h1>All Products</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>#ID</th>
					<th>ProductImage</th>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Unit in Stock</th>
				</tr>
			</thead>

			<c:forEach var="product" items="${productlist}">
			    <tr>
				<td>${product.id}</td>
				<td>${product.productimage}</td>
				<td>${product.name}</td>
				<td>${product.description}</td>
				<td>${product.price}</td>
				<td>${product.unitinstock}</td>
				<td>
                                  <%-- <c:forEach var="framework" items="${product.framework}"
                                                             varStatus="loop">
					${framework}
    				        <c:if test="${not loop.last}">,</c:if> 
				  </c:forEach>--%>
			</td>
				<%-- <security:authorize access="ROLE_ADMIN"> --%>
				<td>
				 
				  <spring:url value="/update/${product.id}" var="update" />
				  <spring:url value="/delete/${product.id}" var="delete" />
				  
				
				  <button class="btn btn-primary"
                          onclick="location.href='${update}'">Update</button>
				  <button class="btn btn-danger"
                          onclick="location.href='${delete}'">Delete</button>
                                </td>
                             <%--    </security:authorize> --%>
			    </tr>
			</c:forEach>
		</table>

	</div>

	<%@ include file="footer.jsp" %>

</body>
</html>