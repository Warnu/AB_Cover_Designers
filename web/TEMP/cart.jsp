<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Product Maintenance</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>Products</h1> 
<table>
  <tr>
    <th>Code</th>
    <th>Description</th>
    <th>Price</th>
    <th></th>
  </tr>
  
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="products" items="${products}">
  <tr>
    <td>${products.code}
    
    </td>
    <td>${products.description}</td>
    <td>${products.priceCurrencyFormat}
    <form action="loadProducts" method="post">
        <input type="hidden" name="code" value="${products.code}">
        <input type="hidden" name="action" value="edit">
        <input type="submit" value="Edit" class="btn-link">
    </form>
    </td>
    <td>
        <form action="loadProducts" method="post">
        <input type="hidden" name="code" value="${products.code}">   
        <input type="hidden" name="action" value="delete">
        <input type="submit" value="Delete" class="btn-link">
        </form>
    </td>
  </tr>
</c:forEach>
</table>


<form action="loadProducts" method="post">
  <input type="hidden" name="action" value="add">
  <input type="submit" value="Add Product">
</form>

</body>
</html>