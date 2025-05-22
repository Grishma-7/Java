<%@ page contentType="text/html;charset=UTF-8" language="java"%>



<%@ page import="model.Product, java.util.ArrayList, model.Category"%>

<%

if (request.getAttribute("products") == null || request.getAttribute("categories") == null) {

response.sendRedirect(request.getContextPath() + "/Product");

return;

}


ArrayList<Product> products = (ArrayList<Product>) request.getAttribute("products");



ArrayList<Category> categories = (ArrayList<Category>) request.getAttribute("categories");

%>

<!DOCTYPE html>



<html lang="en">

<head>

<meta charset="UTF-8">

<title>Product Page</title>

<title>Products</title>

<link rel="stylesheet"

href="${pageContext.request.contextPath}/CSS/Product.css">


<link rel="stylesheet"

href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">


</head>

<body>


<!-- Include Navbar -->

<jsp:include page="/Pages/Navbar.jsp" />


<main>

<h2 class="section-title">Our Products</h2>

<!-- Filter Section -->

<div class="filter-section">

<h2>Filter by Category</h2>

<div class="category-dropdown">

<form method="get"

action="${pageContext.request.contextPath}/Product">

<select name="category" onchange="this.form.submit()">



<option value="All">All Categories</option>



<%

if (categories != null) {



for (Category category : categories) {

%>



<option value="<%=category.getCategoryName()%>"

<%=request.getParameter("category") != null &&



request.getParameter("category").equals(category.getCategoryName()) ? "selected" : ""%>>



<%=category.getCategoryName()%>



</option>



<%

}



}

%>



</select>



</form>



</div>



</div>







<!-- Product Grid -->



<div class="product-grid">



<%

if (products != null && !products.isEmpty()) {



for (Product product : products) {



String categoryName = (product.getCategory() != null)



? product.getCategory().getCategoryName()



: "Unknown Category";

%>



<div class="product-card" data-category="<%=categoryName%>">



<a

href="<%= request.getContextPath() %>/ProductDetails?productId=<%= product.getProductId() %>">



<img

src="${pageContext.request.contextPath}/<%= product.getImagePath() %>"

alt="<%= product.getProductName() %>" width="200" height="200"

onerror="this.onerror=null;this.src='${pageContext.request.contextPath}/Images/placeholder.png';" />



<div class="category-badge"><%=categoryName%></div>



<h3><%=product.getProductName()%></h3>



<p><%=product.getProductDescription()%></p>



<p class="price">

Rs

<%=String.format("%.2f", product.getPrice())%></p>



</a>



</div>



<%

}



} else {

%>



<p>No products available.</p>



<%

}

%>



</div>



</main>



<!-- Include Footer -->


<jsp:include page="/Pages/Footer.jsp" />


</body>



</html>