package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Product;

public class ProductDAO {
	private static final String GET_PRODUCT_BY_ID = "select * product where id = 2;";
	public Product getProductById(int id) {
		Connection conn = null;
        try {
        	conn = new DBContext().getConnection();
        	PreparedStatement ps = conn.prepareStatement(GET_PRODUCT_BY_ID);
//            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
}
