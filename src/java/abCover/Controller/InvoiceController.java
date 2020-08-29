package abCover.Controller;

import abCover.business.Invoice;
import abCover.data.InventoryDB;
import abCover.data.InvoiceDB;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class InvoiceController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext sc = getServletContext();

        String action = request.getParameter("action");
        String message = "";
        String url = "/quote.jsp";
        if(action.equals("quote")){
            String user_email = request.getParameter("email");
            String chair_type = request.getParameter("chair_type");
            int chair_amount = Integer.parseInt(request.getParameter("chair_amount"));
            String table_type = request.getParameter("table_type");
            int table_amount = Integer.parseInt(request.getParameter("table_amount"));
            String plate_type = request.getParameter("plate_type");
            int plate_amount = Integer.parseInt(request.getParameter("plate_amount"));
            String napkin_type = request.getParameter("napkin_type");
            int napkin_amount = Integer.parseInt(request.getParameter("napkin_amount"));
            String utensil_type = request.getParameter("utensil_type");
            int utensil_amount = Integer.parseInt(request.getParameter("utensil_amount"));
            double price = CalculatePrice(chair_type, chair_amount, table_type, table_amount, 
                                          plate_type, plate_amount, napkin_type, napkin_amount,
                                          utensil_type, utensil_amount);
            Invoice input = new Invoice(user_email, chair_type, chair_amount, table_type, table_amount, 
                                          plate_type, plate_amount, napkin_type, napkin_amount,
                                          utensil_type, utensil_amount, price);
            InvoiceDB.insertInvoice(input);
            HttpSession session = request.getSession();
            message = "Thank you for requesting a quote!"
                    + " The total price is: "+price;
            session.setAttribute("message", message);
            url = "/quote.jsp";
        }
        
        sc.getRequestDispatcher(url).forward(request, response); 
    }

    private double CalculatePrice(String chair_type, int chair_amount, String table_type,
                               int table_amount, String plate_type, int plate_amount,
                               String napkin_type, int napkin_amount, String utensil_type, 
                               int utensil_amount){
        double total_price = (chair_amount*InventoryDB.getItemPrice(chair_type))+(table_amount*InventoryDB.getItemPrice(table_type))+
                             (plate_amount*InventoryDB.getItemPrice(plate_type))+(napkin_amount*InventoryDB.getItemPrice(napkin_type))+
                             (utensil_amount*InventoryDB.getItemPrice(utensil_type));
        double delivery_fee =200;
        double service_fee=50;
        final int tax = 7;
        return (total_price+delivery_fee+service_fee)*(1+tax/100);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
