<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>LAPTECH</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Navbar.css">

    <!-- Font Awesome CDN -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>

<body>

<header class="navbar">
    <div class="logo">
        <a href="${pageContext.request.contextPath}/Pages/Home.jsp">
            <img src="${pageContext.request.contextPath}/Images/laptech.png" alt="LAPTECH Logo">
        </a>
    </div>
    <nav class="nav-links">
        <a href="${pageContext.request.contextPath}/Pages/Home.jsp" class="active">Home</a>
        <a href="${pageContext.request.contextPath}/Pages/Product.jsp">Product</a>
        <a href="#">Cart</a>
        <a href="${pageContext.request.contextPath}/Pages/About.jsp">About Us</a>
        <a href="${pageContext.request.contextPath}/Pages/Contactus.jsp">Contact Us</a>
    </nav>
    <div class="nav-actions">
        <div class="search-type">
            <input type="text" placeholder="Search..." class="search-box">
            <i class="fas fa-search search-icon"></i>
        </div>
        <i class="fas fa-shopping-cart icon cart-icon"></i>
        <a href="${pageContext.request.contextPath}/Pages/Profile.jsp" class="Profile-btn">
            <i class="fas fa-user"></i> 
        </a>
    </div>
</header>

</body>

</html>