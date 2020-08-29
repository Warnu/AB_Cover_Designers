
package abCover.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InventoryDB {
    public static double getItemPrice(String item){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT price FROM Inventory WHERE ItemName = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, item);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getDouble("Price");
            } else {
                return 0;
            }
        } catch (SQLException e) {
            System.err.println(e);
            return 0;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
}
