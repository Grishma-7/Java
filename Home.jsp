<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%

    if (request.getAttribute("productList") == null) {

        response.sendRedirect(request.getContextPath() + "/HomeController");

        return;

    }

%> 

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>LAPTECH</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Home.css">


    <!-- Font Awesome CDN -->



    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>

<body>

<!-- Navbar -->

<!-- Include Navbar -->

<jsp:include page="Navbar.jsp"/>

<!-- Hero Section -->

<section class="hero">

    <div class="hero-text">

        <h1>NEW LAPTOP SALE</h1>

        <p>GET YOURS TODAY</p>

         <a href="${pageContext.request.contextPath}/Product"><button class="shop">SHOP NOW</button></a>

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

            <div class="category-card-circle">

                <a href="${pageContext.request.contextPath}/Product?category=Budget Laptops" class="product-link">

                    <img src="${pageContext.request.contextPath}/Images/img2.jpg" alt="Budget Laptop">

                    <h3>Budget Laptop</h3>

                </a>

          </div>

            <div class="category-card-circle">

                <a href="${pageContext.request.contextPath}/Product?category=Student Laptops" class="product-link">

                    <img src="${pageContext.request.contextPath}/Images/img3.jpg" alt="Student Laptop">

                    <h3>Student Laptop</h3>

                </a>

            </div>

            <div class="category-card-circle">

                <a href="${pageContext.request.contextPath}/Product?category=Gaming Laptops" class="product-link">
                
                    <img src="${pageContext.request.contextPath}/Images/img6.jpg" alt="Gaming Laptop">

                    <h3>Gaming Laptop</h3>

                </a>

            </div>

            <div class="category-card-circle">

                <a href="${pageContext.request.contextPath}/Product?category=Convertible Laptops" class="product-link">

                    <img src="${pageContext.request.contextPath}/Images/img8.jpg" alt="Convertible Laptop">

                    <h3>Convertible Laptop</h3>

                </a>

            </div>

        </div>

    </div>

</section>

<!-- Include Footer -->

<jsp:include page="Footer.jsp"/>

</body>

</html>