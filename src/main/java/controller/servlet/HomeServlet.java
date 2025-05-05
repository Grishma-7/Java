package controller.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DAO.ProductDAO;
import controller.database.DBConnection;
import model.Product;


@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public HomeServlet() {
        super();
    
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Connection connection = DBConnection.getConnection();

            // Step 1: Get all products from the DAO
            ProductDAO productDAO = new ProductDAO(); // Ensure this constructor works
            ArrayList<Product> products = productDAO.getAllProducts();

            // Step 2: Update image path if necessary
            for (Product product : products) {
                String imgPath = product.getImagePath();

                // If path is missing or already complete, skip
                if (imgPath != null && !imgPath.startsWith("Images/")) {
                    product.setImagePath("Images/" + imgPath);
                }
            }

            // Step 3: Set product list attribute
            request.setAttribute("productList", products);
            
            // Debugging: Log product names
            for (Product p : products) {
                System.out.println("Product: " + p.getProductName());
            }

            // Step 4: Forward to Home.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/JSP/Home.jsp");
            dispatcher.forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Send error response or forward to error.jsp
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to load products.");
        }
    }
}