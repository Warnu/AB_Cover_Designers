<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <title>Product Maintenance</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>

    <h1>Product</h1>
     <form action="loadProducts" method="post">   
        <input type="hidden" name="action" value="update">
        <label class="pad_top">Code:</label>
        <input type="text" name="code" 
               value="${edit.code}"><br>
        <label class="pad_top">Description:</label>
        <input type="text" name="description" 
               value="${edit.description}"><br>
        <label class="pad_top">Price:</label>
        <input type="text" name="price" 
               value="${edit.priceCurrencyFormat}"><br>    
        
        <input type="submit" value="Update Product" class="margin_left">
    </form>
    <form action="loadProducts" method="post">
        <input type="hidden" name="action" value="view">
        <input type="submit" value="View Products" class="margin_left">
    </form>
        

