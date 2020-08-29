package abCover.Controller;
import abCover.business.Feedback;
import abCover.data.FeedbackDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FeedbackController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext sc = getServletContext();

        String action = request.getParameter("action");
        String messageFeedback = "";
        String url = "/contactus.jsp";
        if(action.equals("feedback")){
            String message_topic = request.getParameter("selectVal");
            String first_name = request.getParameter("fname");
            String last_name = request.getParameter("lname");
            String user_email = request.getParameter("email");
            String phone_number = request.getParameter("pnumber");
            String message_comment = request.getParameter("comment");
            Feedback input = new Feedback(message_topic, first_name, last_name, user_email, phone_number, message_comment);
            FeedbackDB.insertFeedback(input);
            HttpSession session = request.getSession();
            messageFeedback = "Thank you for taking the time to send us feedback!";
            session.setAttribute("messageFeedback", messageFeedback);
            url = "/contactus.jsp";
        }
        sc.getRequestDispatcher(url).forward(request, response);  
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
