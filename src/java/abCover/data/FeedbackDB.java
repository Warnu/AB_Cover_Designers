package abCover.data;

import abCover.business.Feedback;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FeedbackDB {
    public static void insertFeedback(Feedback product){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "INSERT INTO Feedback (message_topic, first_name, last_name, "
                + "user_email, phone_number, message_comment) "
                + "VALUES (?, ?, ?, ?, ?, ?)";
        
        try {
             ps = connection.prepareStatement(query);
             ps.setString(1, product.getMessageTopic());
             ps.setString(2, product.getFirstName());
             ps.setString(3, product.getLastName());
             ps.setString(4, product.getUserEmail());
             ps.setString(5, product.getPhoneNumber());
             ps.setString(6, product.getMessageComment());
             
             ps.executeUpdate();
     
        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
}
