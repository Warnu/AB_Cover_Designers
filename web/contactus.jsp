<%-- 
    Document   : contactus
    Created on : Apr 27, 2020, 2:24:52 PM
    Author     : student
--%>

<%@ include file="/includes/contactus_header.html" %>
<%@ include file="/includes/navbar.html" %>
 <main>

            <h2>Can't find it in the <a href="faq.jsp">F.A.Q</a>? Send us message!</h2>
            <p><i>${messageFeedback}</i></p>
            <hr>
            <div id="mForm"> 
            <form name="mForm" action="FeedbackController" method="post" autocomplete="on" onsubmit="return validateForm()">
                    Topic: <select id="selectVal" name="selectVal">
                            <optgroup label="Bugs">
                              <option value="SETplanner">Table Event Planner Issue/Error</option>
                            </optgroup>
                            <optgroup label="Schedule">
                              <option value="Modify Date">Change Time or Date</option>
                              <option value="Request Quote">Request Quote</option>
                            </optgroup>
                            <optgroup label="Item Request Modification">
                               <option value="Request New Color">New Color</option>
                               <option value="Request New Texture">New Texture</option>
                            </optgroup>
                          </select><br><br>
                    <label>First Name:</label> <input type="text" name="fname" maxlength="15"><br><br>
                    <label>Last Name:</label> <input type="text" name="lname" maxlength="15"><br><br>
                    <label>E-mail:</label> <input type="text" name="email"><br><br>
                    <label>Phone Number:</label> <input type="text" name="pnumber" maxlength="10"><br><br>
                    <label>Comment:</label> <textarea name="comment" cols="40"></textarea>
                    <input type="hidden" name="action" value="feedback">
                    <input type="submit">
            </form>
        </div>
         </main>
<%@ include file="/includes/footer.html" %>