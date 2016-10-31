<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Ranga Reddy">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Employee Information</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container{
            margin: 20px;
        }
    </style>
    
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
        function submitProductForm() {             
            
            // getting the employee form values
            var name = $('#name').val().trim();
            var description = $('#description').val();
            var price = $('#price').val();
            var category = $('#category').val();
            var unitinstock = $('#unitinstock').val();
            if(name.length ==0) {
                alert('Please enter name');
                $('#name').focus();
                return false;
            }
    
            if(description.length== 0) {
                alert('Please enter description');
                $('#description').focus();
                return false;
            }
    
            if(price <= 0) {
                alert('Please enter proper salary');
                $('#price').focus();
                return false;
            }
            return true;
        };  
    </script>
</head>
<body class=".container-fluid">
    <div class="container myrow-container">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Product Details
                </h3>
            </div>
            <div class="panel-body">
                <form:form id ="prodform" cssClass="form-horizontal" action="/addProduct" commandAttribute = "product" modelAttribute="product" method="GET" >
    <form:hidden path="id" value="${product.id}"/>
                    <div class="form-group">
                        <div class="control-label col-xs-3"> <form:label path="name" >Product Name</form:label> </div>
                        <div class="col-xs-6">
                            
                            <form:input id ="name" cssClass="form-control" path="name" value="${product.name}"/>
                        </div>
                    </div>
    
                     <div class="form-group">
                        <form:label path="description" cssClass="control-label col-xs-3">Description :</form:label>
                        <div class="col-xs-6">
                            <form:input id="description" cssClass="form-control" path="description" value="${product.description}"/>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="price">Price</form:label></div>
                        <div class="col-xs-6">
                            <form:input id ="price" cssClass="form-control" path="price" value="${product.price}"/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="category">Category</form:label></div>
                         <div class="col-xs-6">
                       <form>
 							 <input type="radio" name="category" value="newarrival" checked>New Arrival<br>
  							 <input type="radio" name="category" value="exclusive">Exclusive<br>
  							 <input type="radio" name="category" value="offer">Offer<br>
						</form>
                       </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="unitinstock">Unit in Stock</form:label></div>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="unitinstock" value="${product.unitinstock}"/>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-4">
                            </div>
                            <div class="col-xs-4">
              
                          <input type="submit" id="addProduct" class="btn btn-primary" value="Save" /> 
          
                            </div>
                            <div class="col-xs-4">
                            </div>
                        </div>
                    </div>                     
                 
                </form:form>
            </div>
        </div>
    </div>
    
  
    </body>
    </html>
    
    
<%-- <form:form method="POST" commandname="team" action="${pageContext.request.contextPath}/team/add/process.html">
05
<table>
06
<tbody>
07
    <tr>
08
        <td>Name:</td>
09
        <td><form:input path="name"></form:input></td>
10
    </tr>
11
    <tr>
12
        <td>Rating:</td>
13
        <td><form:input path="rating"></form:input></td>
14
    </tr>
15
    <tr>
16
        <td><input value="Add" type="submit"></td>
17
        <td></td>
18
    </tr>
19
</tbody>
20
</table>
21
</form:form>
     --%>