package dal;

import model.Products;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO extends DBContext {

    PreparedStatement stm;
    ResultSet rs;
    List<Products> list = new ArrayList<>();

    public List<Products> getAll() {
        try {
            String strSelect = "select * from Products";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                Products em = new Products(rs.getInt("Id"), rs.getString("Name"));
                list.add(em);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Products> getByName(String na) {
        try {
            String strSelect = "select * from Products where name like ?";
            stm = connection.prepareStatement(strSelect);
            stm.setString(1, "%"+na+"%");
            rs = stm.executeQuery();
            while (rs.next()) {
                Products em = new Products(rs.getInt("Id"), rs.getString("Name"));
                list.add(em);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void addProduct(Products p) {
        try {
            String sql = "INSERT INTO [dbo].[Products]([id],[name])VALUES(?,?)";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, p.getId());
            stm.setString(2, p.getName());
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //tim product khi co id
    public Products getByID(int id) {
        try {
            String strSelect = "select * from Products where id=?";
            stm = connection.prepareStatement(strSelect);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            if (rs.next()) {
                Products em = new Products(rs.getInt("Id"), rs.getString("Name"));
                return em;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void delete(int id) {
        try {
            String sql = "DELETE FROM [dbo].[Products]WHERE id=?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Products p) {
        try {
            String sql = "update Products set name=? where id=?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, p.getName());
            stm.setInt(2, p.getId());
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        ProductDAO objP = new ProductDAO();

   
        List<Products> list = objP.getAll();
        
        for (Products products : list) {
            System.out.println(products.getId() + " : " + products.getName());

        }
    }
}
