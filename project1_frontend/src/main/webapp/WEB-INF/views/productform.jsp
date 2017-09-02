
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body>

    <div class="container">
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
<c:url value="/admin/saveproduct" var="url"></c:url>
	<form:form action="${url }" method="post" modelAttribute="product" enctype="multipart/form-data">

		<!-- Form Name -->
				<legend>ADD PRODUCTS</legend>

<!-- Text input-->
<div class="form-group">
  
  			<form:label path="ProductName">Enter Product Name</form:label>
			<form:input path="productName" class="form-control"  />
			<form:errors path="productName" cssStyle="color:red"></form:errors>
  </div>

<div class="form-group">
			<form:label path="category.id">Select Category</form:label>
			<form:select path="category.id">
			<c:forEach items="${categories }" var="c">
			<form:option value="${c.id }">${c.categoryName }</form:option>
			<!--  
				<form:radiobutton path="category.id" value="${c.id }" />${c.categoryName }
				-->
		    </c:forEach>
		    </form:select>
</div>
		 
<!-- Text input-->
<div class="form-group">
			<form:label path="price">Enter Product Price</form:label>
  			<form:input path="price" class="form-control" />
			<form:errors path="price" cssStyle="color:red"></form:errors>
</div>


<div class="form-group">
			<form:label path="quantity">Enter Quantity</form:label>
			<form:input path="quantity" class="form-control" />
			<form:errors path="quantity" cssStyle="color:red"></form:errors>
		</div>
		
		<div class="form-group">
			<form:label path="description">Enter Description</form:label>
			<form:textarea path="description" class="form-control"  />
			<form:errors path="description" cssStyle="color:red"></form:errors>
		</div>
		<br>
		
		
 	<div class="form-group">
		 Upload an image
		 <input type="file" name="image">
	</div>
		
		<div class="form-group">
         <button id="singlebutton" name="singlebutton" class="btn btn-primary" type="submit" value="Add Product">Add Product</button>
      	 </div>
 
 <br>
 <br>
 
 
 <!-- 
 <!-- File Button --> 
<div class="form-group">
Upload an image
  <label class="col-md-4 control-label" for="filebutton">main_image</label>
  <div class="col-md">
    <input id="filebutton" name="filebutton" class="input-file" type="file">
  </div>
</div>
<br>
Button
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Add Product</button>
  </div>
 </div>
 -->
 
 
</form:form>
 </div>
  </div>
   </div>
	 </div>
</body>
</html>
<%@ include file="footer.jsp"%>



<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body>

   
				<form class="form-horizontal">
<fieldset>
				
<c:url value="/admin/saveproduct" var="url"></c:url>
	<form:form action="${url }" method="post" modelAttribute="product" enctype="multipart/form-data">

		<!-- Form Name -->
				<legend>ADD PRODUCTS</legend>

<!-- Text input-->
<div class="form-group">
  
  			<form:label path="ProductName">Enter Product Name</form:label>
			<form:input path="productName" class="form-control"  />
			<form:errors path="productName" cssStyle="color:red"></form:errors>
  </div>

<div class="form-group">
			<form:label path="category.id">Select Category</form:label>
			<form:select path="category.id">
			<c:forEach items="${categories }" var="c">
			<form:option value="${c.id }">${c.categoryName }</form:option>
			<!--  
				<form:radiobutton path="category.id" value="${c.id }" />${c.categoryName }
				-->
		    </c:forEach>
		    </form:select>
</div>
		 
<!-- Text input-->
<div class="form-group">
			<form:label path="price">Enter Product Price</form:label>
  			<form:input path="price" class="form-control" />
			<form:errors path="price" cssStyle="color:red"></form:errors>
</div>


<div class="form-group">
			<form:label path="quantity">Enter Quantity</form:label>
			<form:input path="quantity" class="form-control" />
			<form:errors path="quantity" cssStyle="color:red"></form:errors>
		</div>
		
		<div class="form-group">
			<form:label path="description">Enter Description</form:label>
			<form:textarea path="description" class="form-control"  />
			<form:errors path="description" cssStyle="color:red"></form:errors>
		</div>
		<br>
		
		
		 <!-- <div class="form-group">
		 Upload an image
		 <input type="file" name="image">
		 </div>
		
		<div class="form-group">
         <input type="submit" value="Add Product">
      	 </div>
 -->
 
 
 <!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">main_image</label>
  <div class="col-md-4">
    <input id="filebutton" name="filebutton" class="input-file" type="file">
  </div>
</div>
<br>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Add Product</button>
  </div>
 </div>
 


</form:form>
 </fieldset>
 </form>
 
</body>
</html>
<%@ include file="footer.jsp"%>





 --%>




