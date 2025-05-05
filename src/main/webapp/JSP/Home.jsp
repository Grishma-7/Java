<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    if (request.getAttribute("productList") == null) {
        response.sendRedirect(request.getContextPath() + "/HomeServlet");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LAPTECH</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/home.css">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

<!-- Navbar -->
<header class="navbar">
    <div class="logo">
        <a href="Home.jsp">
            <img src="${pageContext.request.contextPath}/Images/laptech (7).png" alt="LAPTECH Logo">
        </a>
    </div>
    <nav class="nav-links">
        <a href="${pageContext.request.contextPath}/HomeServlet" class="active">Home</a>
        <a href="${pageContext.request.contextPath}/Product.jsp">Product</a>
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
        <a href="login.jsp" class="login-btn">Login</a>
    </div>
</header>

<!-- Hero Section -->
<section class="hero">
    <div class="hero-text">
        <h1>NEW LAPTOP SALE</h1>
        <p>GET YOURS TODAY</p>
        <a href="Product.jsp"><button class="shop">SHOP NOW</button></a>
    </div>
</section>

<!-- Best Seller Section -->
<section class="best-seller">
    <div class="heading">
        <h2>Best Seller</h2>
    </div>
    <p class="best-seller-text">
        Made with care for your little ones, our products are perfect for every occasion. Check it out.
    </p>
  <div class="product-grid">
    <c:forEach var="product" items="${productList}">
        <div class="product-card">
            <img src="${pageContext.request.contextPath}/${product.imagePath}" 
                 alt="${product.productName}" width="200" height="200"
                 onerror="this.onerror=null;this.src='${pageContext.request.contextPath}/Images/placeholder.png';" />
              <a href="ProductDetails.jsp" class="product-link">
            <h3>${product.productName}</h3>
            <p>${product.productDescription}</p>
            <p class="price">₹${product.price}</p>
            </a>
        </div>
    </c:forEach>
</div>
</section>

<!-- Category Section -->
<section class="category-section">
    <div class="category-class">
        <h2>Choose Your Category</h2>
        <p class="category-text">
            Discover top-quality laptops from leading brands.<br>
            Find the perfect device for work, gaming, or everyday use in our wide selection.
        </p>
        <div class="category-grid">
            <!-- Category 1 -->
            <div class="category-card-circle">
                <a href="${pageContext.request.contextPath}/filterProducts?category=Budget Laptops" class="product-link">
                    <img src="${pageContext.request.contextPath}/Images/Asus-Zenbook-14-oled.jpg" alt="Budget Laptop">
                    <h3>Budget Laptop</h3>
                </a>
                <p>2 items</p>
            </div>
            <!-- Category 2 -->
            <div class="category-card-circle">
                <a href="${pageContext.request.contextPath}/filterProducts?category=Student Laptops" class="product-link">
                    <img src="${pageContext.request.contextPath}/Images/Acer-Aspire-5-A515-57.jpg" alt="Student Laptop">
                    <h3>Student Laptop</h3>
                </a>
                <p>2 items</p>
            </div>
            <!-- Category 3 -->
            <div class="category-card-circle">
                <a href="${pageContext.request.contextPath}/filterProducts?category=Gaming Laptops" class="product-link">
                    <img src="${pageContext.request.contextPath}/Images/img3%20(1).jpg" alt="Gaming Laptop">
                    <h3>Gaming Laptop</h3>
                </a>
                <p>2 items</p>
            </div>
            <!-- Category 4 -->
            <div class="category-card-circle">
                <a href="${pageContext.request.contextPath}/filterProducts?category=Convertible Laptops" class="product-link">
                    <img src="${pageContext.request.contextPath}/Images/img6.jpg" alt="Convertible Laptop">
                    <h3>Convertible Laptop</h3>
                </a>
                <p>2 items</p>
            </div>
        </div>
    </div>
</section>

<!-- Footer Section -->
<footer class="footer">
    <div class="footer-content">
        <div class="footer-section">
            <h3>LapTech</h3>
            <p>Inspiring Tomorrow’s Technology. Elevating Today's Experience</p>
        </div>
        <div class="footer-section links">
            <h4>Quick Links</h4>
            <ul>
                <li><a href="${pageContext.request.contextPath}/HomeServlet" class="active"> Home</a></li>
                <li><a href="Product.jsp">Products</a></li>
                <li><a href="#">Cart</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </div>
        <div class="footer-section social">
            <h4>Connect with Us</h4>
            <ul>
                <li><a href="https://www.facebook.com"><i class="fab fa-facebook-f"></i> Facebook</a></li>
                <li><a href="https://www.instagram.com"><i class="fab fa-instagram"></i> Instagram</a></li>
                <li><a href="https://wa.me/9842277671"><i class="fab fa-whatsapp"></i> WhatsApp</a></li>
                <li><a href="https://www.linkedin.com"><i class="fab fa-linkedin-in"></i> LinkedIn</a></li>
            </ul>
        </div>
    </div>
    <div class="footer-bottom">
        © 2025 LapTech. All rights reserved.
    </div>
</footer>

</body>
</html>