<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <title>Product Maintenance</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <h1>Product</h1>
    <p><i>${message}</i></p>
     <form action="loadProducts" method="post">   
        <input type="hidden" name="action" value="update">
        <label class="pad_top">Code:</label>
        <input type="text" name="code" 
               value="${product.code}"><br>
        <label class="pad_top">Description:</label>
        <input type="text" name="description" 
               value="${product.description}"><br>
        <label class="pad_top">Price:</label>
        <input type="text" name="price" 
               value="${product.priceCurrencyFormat}"><br>    
        <c:if test="${product.code} == null">
            <p>Please Add a Code</p>
        </c:if>
        <c:if test="${product.description} == null">
            <p>Please Add a Description</p>
        </c:if>
        <c:if test="${product.priceCurrencyFormat} == null">
            <p>Please Add a Price</p>
        </c:if>
        <input type="submit" value="Update Product" class="margin_left">
    </form>
    <form action="loadProducts" method="post">
        <input type="hidden" name="action" value="view">
        <input type="submit" value="View Products" class="margin_left">
    </form>
        

