<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LAPTECH</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/Productdetails.css">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

<!-- Navbar -->
<header class="navbar">
    <div class="logo">
        <a href="Home.jsp">
            <img src="../image/laptech (7).png" alt="LAPTECH Logo">
        </a>
    </div>

    <nav class="nav-links">
        <a href="Home.jsp">Home</a>
        <a href="Product.jsp">Product</a>
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

<!-- Product Section -->
<div class="container">
    <div class="product-image">
        <img src="../image/img1.png" alt="HP">
    </div>

    <div class="product-details">
        <h1>HP Laptop 14</h1>
        <p class="price">Rs.53,198</p>
        <p class="description">
            (11th Gen Intel Core i3 - N305 Processor | 8GB RAM | 256GB SSD | Full HD, In-Plane Switching (IPS) | 14" FHD Display | Warranty 1 Year).
        </p>

        <div class="colors">
            <span class="color gray selected"></span>
            <span class="color black "></span>
            <span class="color silver"></span>
        </div>

        <div class="cart">
            <button>Add to cart</button>
            
        </div>

        <button class="buy-btn">Buy now</button>
        <p class="stock-info">In Stock: LapTech, Free 2 day shipping</p>
    </div>
</div>





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
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="Product.jsp">Products</a></li>
                    <li><a href="#">Cart</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>

            <div class="footer-section social">
                <h4>Connect with Us</h4>
                <ul>
                    
               <li><a href="https://www.facebook.com" >
                <i class="fab fa-facebook-f"></i> Facebook</a>
             </li>
               <li><a href="https://www.instagram.com" >
                <i class="fab fa-instagram"></i> Instagram</a>
             </li>
                <li><a href="https://wa.me/9842277671" >
                 <i class="fab fa-whatsapp"></i> WhatsApp</a>
              </li>
                 <li><a href="https://www.linkedin.com">
                  <i class="fab fa-linkedin-in"></i> LinkedIn</a>
              </li>
             </ul>
         </div>
     </div>

        <div class="footer-bottom">
            © 2025 LapTech. All rights reserved.
        </div>

        
    </footer>
</body>
</html>

