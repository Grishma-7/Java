package controller.DAO;

import java.sql.*;
import java.util.ArrayList;
import model.Category;
import controller.database.DBConnection;

public class CategoryDAO {
    public ArrayList<Category> getAllCategories() throws SQLException, ClassNotFoundException {
        ArrayList<Category> list = new ArrayList<>();
        Connection conn = DBConnection.getConnection();
        String sql = "SELECT Category_Id, Category_Name, Category_Image FROM category"; // Adjust column names
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("Category_Id");
            String name = rs.getString("Category_Name");
            String image = rs.getString("Category_Image");
            list.add(new Category(id, name, image));
        }

        rs.close();
        ps.close();
        conn.close();
        return list;
    }
}
