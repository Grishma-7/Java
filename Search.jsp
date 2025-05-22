<%@ page import="java.util.*, model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Products</title>
    <link rel="stylesheet" href="CSS/Style.css">
</head>
<body>
    <h1>Search Laptops</h1>
    
    <!-- Search Form -->
    <form action="${pageContext.request.contextPath}/SearchController" method="get">
        <input type="search" name="searchname" placeholder="Enter product name or brand" />
        
    </form>

    <hr>

    <%
        List<Product> results = (List<Product>) request.getAttribute("results");
        if (results != null) {
            if (results.isEmpty()) {
    %>
                <p>No products found.</p>
    <%
            } else {
    %>
                <h2>Search Results:</h2>
                <div class="product-container">
                    <% for (Product p : results) { %>
                        <div class="product-card">
                           <img src="${pageContext.request.contextPath}/<%= p.getImagePath() %>" 
						     width="150" height="100"
						     onerror="this.onerror=null;this.src='${pageContext.request.contextPath}/Images/placeholder.png';"
						     alt="<%= p.getProductName() %>">

                            <h3><%= p.getProductName() %></h3>
                            <p>Brand: <%= p.getCategory() %></p>
                            <p>Price: $<%= p.getPrice() %></p>
                            
                        </div>
                          <a href="${pageContext.request.contextPath}/Product?productId=${product.productId}" class="product-link">
                          Back</a>
                          
                    <% } %>
                </div>
    <%
            }
        }
    %>
</body>
</html>
