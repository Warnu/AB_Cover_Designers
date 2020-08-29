package abCover.data;

import abCover.business.Invoice;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InvoiceDB {
    public static void insertInvoice(Invoice inv){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "INSERT INTO Invoice (user_email, chair_type, chair_amount, "
                + "table_type, table_amount, plate_type, plate_amount, napkin_type,"
                + "napkin_amount, utensil_type, utensil_amount, price) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
             ps = connection.prepareStatement(query);
             ps.setString(1, inv.getUserEmail());
             ps.setString(2, inv.getChairType());
             ps.setInt(3, inv.getChairAmount());
             ps.setString(4, inv.getTableType());
             ps.setInt(5, inv.getTableAmount());
             ps.setString(6, inv.getPlateType());
             ps.setInt(7, inv.getPlateAmount());
             ps.setString(8, inv.getNapkinType());
             ps.setInt(9, inv.getNapkinAmount());
             ps.setString(10, inv.getUtensilType());
             ps.setInt(11, inv.getUtensilAmount());
             ps.setDouble(12, inv.getPrice());
             
             ps.executeUpdate();
     
        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
}
