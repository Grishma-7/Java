<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <link rel="stylesheet" href="../CSS/AddProduct.css">
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

<!-- Main Content -->
<div class="main-content">
    <h2>Add New Product</h2>
    <form action="../DashboardController" method="post" enctype="multipart/form-data">

        <div class="add-product-container">
            <!-- Left Section -->
            <div class="left-section">
                <div class="form-group">
                    <input type="text" class="half-width" placeholder="Product Name" name="Product Name" value="${product.productName}" required>
                    <input type="text" class="half-width" placeholder="Product Description" name="Product Description" value="${product.productDescription}" required>
                </div>
                <div class="form-row">
                    <div class="form-group half-width">
                        <input type="number" class="half-width" placeholder="Price" name="Price" value="${product.price}" required>
                    </div>
                    <div class="form-group half-width">
                        <input type="number" class="half-width" placeholder="Stock" name="ProductStock" value="${product.productStock}" required>
                    </div>
                </div>
                <button type="submit" class="submit-btn">Add Product</button>
            </div>

            <!-- Right Section -->
            <div class="right-section">
                <h3>Upload Image</h3>
                <input type="file" name="productImage" accept="image/*">
                <div class="form-group">
                    <label>Category</label>
                    <select name="category">
                        <option value="Laptops">Laptops</option>
                        <option value="clothing">Budget Laptop</option>
                        <option value="accessories">Gaming Laptop</option>
                        <option value="accessories">Student Laptop</option>
                        <option value="accessories">Convertible Laptop</option>
                    </select>
                </div>
            </div>
        </div>
    </form>
</div>

</body>
</html>
