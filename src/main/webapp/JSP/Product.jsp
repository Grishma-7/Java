<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="model.Product, java.util.List, model.Category" %>

<%

    List<Product> products = (List<Product>) request.getAttribute("products");

    List<Category> categories = (List<Category>) request.getAttribute("categories");

%>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Product Page</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/product.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>

<body>



<header class="navbar">

    <div class="logo">

        <a href="${pageContext.request.contextPath}/views/Home.jsp">

            <img src="${pageContext.request.contextPath}/Images/laptech (7).png" alt="LapTech Logo">

        </a>

    </div>

    <nav class="nav-links">

        <a href="${pageContext.request.contextPath}/views/Home.jsp">Home</a>

        <a href="${pageContext.request.contextPath}/Product" class="active">Product</a>

        <a href="#">Cart</a>

        <a href="#">About Us</a>

        <a href="#">Contact Us</a>

    </nav>

    <div class="nav-actions">

        <div class="search-type">

            <input type="text" placeholder="Search..." class="search-box">

            <i class="fas fa-search search-icon"></i>

        </div>

        <i class="fas fa-shopping-cart icon cart-icon"></i>

    </div>

</header>



<main>

    <h2 class="section-title">Our Products</h2>



    <!-- Filter Section -->

    <section class="filter-section">

        <h2>Filter by Category</h2>

        <div class="category-dropdown">

            <select id="categorySelect" onchange="filterProducts(this.value)">

                <option value="All">All Categories</option>

                <% if (categories != null) {

                    for (Category category : categories) { %>

                        <option value="<%= category.getCategory_Name() %>"><%= category.getCategory_Name() %></option>

                <%  }

                } %>

            </select>

        </div>

    </section>



    <!-- Product Grid -->

    <div class="product-grid">

        <% if (products != null && !products.isEmpty()) {

            for (Product product : products) {

                String categoryName = (product.getCategory() != null) ? product.getCategory().getCategory_Name() : "Unknown Category";

        %>

            <div class="product-card" data-category="<%= categoryName %>">

                <a href="${pageContext.request.contextPath}/views/ProductView.jsp?productId=<%= product.getProductId() %>">

                    <img 

                        src="${pageContext.request.contextPath}/Images/<%= product.getImagePath() %>" 

                        alt="<%= product.getProductName() != null ? product.getProductName() : "Product image" %>" 

                        onerror="this.onerror=null;this.src='${pageContext.request.contextPath}/Images/placeholder.png';">

                    <div class="category-badge"><%= categoryName %></div>

                    <h3><%= product.getProductName() %></h3>

                    <p><%= product.getProductDescription() %></p>

                    <p><i class="fas fa-star" style="color: #f39c12;"></i> 4.5 | 500 reviews</p>

                    <p class="price">Rs <%= String.format("%.2f", product.getProductPrice()) %></p>

                </a>

            </div>

        <%  }

        } else { %>

            <p>No products available.</p>

        <% } %>

    </div>

</main>



<!-- Footer -->

<footer class="footer">

    <div class="footer-content">

        <div class="footer-section">

            <h3>LapTech</h3>

            <p>Inspiring Tomorrow's Technology. Elevating Today's Experience</p>

        </div>

        <div class="footer-section links">

            <h4>Quick Links</h4>

            <ul>

                <li><a href="${pageContext.request.contextPath}/views/Home.jsp">Home</a></li>

                <li><a href="${pageContext.request.contextPath}/Product">Products</a></li>

                <li><a href="#">Cart</a></li>

                <li><a href="#">About Us</a></li>

                <li><a href="#">Contact Us</a></li>

            </ul>

        </div>

        <div class="footer-section social">

            <h4>Connect with Us</h4>

            <ul>

                <li><a href="#"><i class="fab fa-facebook-f"></i> Facebook</a></li>

                <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>

                <li><a href="#"><i class="fab fa-whatsapp"></i> WhatsApp</a></li>

                <li><a href="#"><i class="fab fa-linkedin-in"></i> LinkedIn</a></li>

            </ul>

        </div>

    </div>

    <div class="footer-bottom">

        © 2025 LapTech. All rights reserved.

    </div>

</footer>



<script>

    function filterProducts(category) {

        const cards = document.querySelectorAll('.product-card');

        cards.forEach(card => {

            const cardCategory = card.getAttribute('data-category');

            card.style.display = (category === "All" || cardCategory === category) ? "block" : "none";

        });

    }



    // Show all products by default

    window.onload = () => filterProducts("All");

</script>



</body>

</html>