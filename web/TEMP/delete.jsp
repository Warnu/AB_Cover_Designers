<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Confirm Deletion</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>Are you user you want to delete this product?</h1>
    
        <label class="pad_top">Code:</label>
        <span>${selected.code}</span><br>
        <label class="pad_top">Description:</label>
        <span>${selected.description}</span><br>
        <label class="pad_top">Price:</label>
        <span>${selected.priceCurrencyFormat}</span><br>
        
    <form action="loadProducts" method="post">
        <input type="hidden" name="code" value="${selected.code}">
        <input type="hidden" name="action" value="yes">
        <input type="submit" value="Yes" class="margin_left">
    </form>
    <form action="loadProducts" method="post">
        <input type="hidden" name="action" value="view">
        <input type="submit" value="No" class="margin_left">
    </form>

</body>
</html>

