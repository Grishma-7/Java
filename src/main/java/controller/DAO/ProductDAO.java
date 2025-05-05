package controller.DAO;

import model.Product;
import controller.database.DBConnection;

import java.sql.*;
import java.util.ArrayList;

public class ProductDAO {
    private Connection conn;

    // Constructor to initialize the connection
    public ProductDAO() throws ClassNotFoundException, SQLException {
        this.conn = DBConnection.getConnection();
    }

    // Method to get all products
    public ArrayList<Product> getAllProducts() throws SQLException {
        ArrayList<Product> products = new ArrayList<>();
        String query = "SELECT * FROM product LIMIT 6";  // Ensure this table name matches your DB schem
        try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
            // Loop through the results and create Product objects
            while (rs.next()) {
                Product product = new Product(
                    rs.getInt("product_Id"),
                    rs.getString("product_Name"),
                    rs.getString("product_Description"),
                    rs.getDouble("price"),
                    rs.getInt("product_Stock"),
                    rs.getInt("category_Id"),  // Assuming category_Id is an integer
                    rs.getString("image_path") // Make sure this column exists in the database
                );

                products.add(product);
                System.out.println("Retrieved product: " + product.getProductName());
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e; // Propagate the SQLException
        }

        System.out.println("Total products retrieved: " + products.size());
        return products;
    }
    
    public static void main(String[] args) {
		try {
			ProductDAO p = new ProductDAO();
			ArrayList<Product> pl = p.getAllProducts();
			for (Product product : pl) {
				System.out.println("Product name:"+ product.getProductName());
				System.out.println("Product image: "+product.getImagePath());
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
