<%-- 
    Document   : quote
    Created on : Apr 27, 2020, 2:30:52 PM
    Author     : student
--%>

<%@ include file="/includes/quote_header.html" %>
<%@ include file="/includes/navbar.html" %>
<!DOCTYPE html>
<main> 
    <p><i>${message}</i></p>
    <div id="mForm">
        <form name="mForm" action="InvoiceController" method="post" required autocomplete="on">
            <label>Email:</label>
            <input type="text" name="email" required><br>
            
            <br><label>Chairs:</label>
            <select id="chair_type" name="chair_type">
                <option value="White Chair">White Chair</option>
                <option value="Clear Chair">Clear Chair</option>
            </select>
            <input type="text" name="chair_amount" size="8" required placeholder="Amount of chairs"><br>
            
            <br><label>Tables:</label>
            <select id="table_type" name="table_type">
                <option value="Silver Table">Silver Table</option>
                <option value="White Table">White Table</option>
            </select>
            <input type="text" name="table_amount" size="8" required placeholder="Amount of Tables"><br>
            
            <br><label>Plates:</label>
            <select id="plate_type" name="plate_type">
                <option value="Silver Plate">Silver Plate</option>
                <option value="Gold Plate">Gold Plate</option>
            </select>
            <input type="text" name="plate_amount" size="8"required placeholder="Amount of Plates"><br>
            
            <br><label>Napkins:</label>
            <select id="napkin_type" name="napkin_type">
                <option value="White Napkins">White Napkins</option>
            </select>
            <input type="text" name="napkin_amount" size="8" required placeholder="Amount of Napkins"><br>
            
            <br><label>Utensils:</label>
            <select id="utensil_type" name="utensil_type">
                <option value="Silver Utensils">Silver Utensils:</option>
                <option value="Gold Utensils">Gold Utensils:</option>
            </select>
            <input type="text" name="utensil_amount" size="8" required placeholder="Amount of Utensils"><br>
            
            <input type="hidden" name="action" value="quote">
            <br><input type="submit" value="Get Quote">
            </form>
    </div>
</main>
<%@ include file="/includes/footer.html" %>