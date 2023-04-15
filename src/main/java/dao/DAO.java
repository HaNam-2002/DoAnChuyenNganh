
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where cID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where uID = ?;";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        	System.out.println(e.getMessage());
        }
        System.out.println(list.size());
        return list;
    }
    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where [name] like ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+ txtSearch+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductByID(String id) {
        String query = "select * from product\n"
                + "where pid = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
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

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getLast() {
        String query = "select top 1 * from product\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
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
    public Account login(String user, String pass) {
        String query = "select * from account "
                + "where [user] = ? "
                + "and pass = ?"; //truy vấn đến user và pass ở bảng account
        try {
        	Connection connect = new DBContext().getConnection();
            ps = connect.prepareStatement(query);
            ps.setString(1, user);//lấy user pử dấu ? 1
            ps.setString(2, pass);//lấy user pử dấu ? 2
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5)); 
            }
        } catch (Exception e) {
        }
        return null;
    }
    public Account checkAccountExist(String user) {
        String query = "select * from account\n"
                + "where [user] = ?\n";
        try {
        	Connection connect = new DBContext().getConnection();
            ps = connect.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void singup(String user, String pass) {
        String query = "insert into account\n"
                + "values(?,?,0,0)";
        try {
        	Connection connect = new DBContext().getConnection();
            ps = connect.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public boolean changePass(String pass, int id) {
    	String query = "update Account set pass = '" + pass + "' where uID = " + id;
    	try {
        	Connection connect = new DBContext().getConnection();
            int result = connect.createStatement().executeUpdate(query);
            if(result == 1) {
            	return true;
            }
        } catch (Exception e) {
        }
    	return false;
    }
    public boolean checkExistUsername(String username) {
    	String query = "select uId from Account where [user] = '" + username + "'";
    	try {
        	Connection connect = new DBContext().getConnection();
            ResultSet result = connect.createStatement().executeQuery(query);
            if(result.next()) {
            	return true;
            }
        } catch (Exception e) {
        }
    	return false;
    }
    public void editProduct(String name, String image, String price,
            String title, String description, String category, String pid) {
        String query = "update product\n"
                + "set [name] = ?,\n"
                + "[image] = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "[description] = ?,\n"
                + "cID = ?\n"
                + "where id = ?";
        try {
        	Connection connect = new DBContext().getConnection();//mo ket noi voi sql
            ps = connect.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void deleteProduct(String pid) {
        String query = "delete from product\n"
                + "where pid = ?";
        try {
        	Connection connect = new DBContext().getConnection();
            ps = connect.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void deleteAccount(String uid) {
        String query = "delete from Account\n"
                + "where uID = ?";
        try {
        	Connection connect = new DBContext().getConnection();
            ps = connect.prepareStatement(query);
            ps.setString(1, uid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void 	insertProduct(String name, String image, String price,
            String title, String description, String category, int sid) {
        String query = "INSERT [dbo].[product] \n"
                + "([name], [image], [price], [title], [description], [cID], [uID])\n"
                + "VALUES(?,?,?,?,?,?,?)";
        try {
        	Connection connect = new DBContext().getConnection();
            ps = connect.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setInt(7, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public List<Account> getALLAccount() {
        List<Account> list = new ArrayList<>();
        String query = "  SELECT  uID, [user], pass, isSell from Account where isAdmin =0";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi sql
            ps = conn.prepareStatement(query);//nem cau lenh query sang sql
            rs = ps.executeQuery();//chay cau lenh query, nhan ket qua tra ve
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),0));
                        
            }

        } catch (Exception e) {
        }
        return list;
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();

        for (Category o : listC) {
            System.out.println(o);
        }
    }

}
