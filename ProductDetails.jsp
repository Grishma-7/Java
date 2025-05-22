<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="model.Product" %>

<%

    Product product = (Product) request.getAttribute("product");

    if (product == null) {

        response.sendRedirect(request.getContextPath() + "/ProductDetails");

        return;

    }

    String categoryName =

      product.getCategory() != null

        ? product.getCategory().getCategoryName()

        : "Uncategorized";

%>

<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="UTF-8">
  <title><%= product.getProductName() %> - Details</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/ProductDetails.css">
</head>


<body>

  <header><h1><%= product.getProductName() %></h1></header>

  <main class="product-details">

    <img src="${pageContext.request.contextPath}/<%= product.getImagePath() %>"

         alt="<%= product.getProductName() %>" width="300"/>

    <div class="details">

      <p><strong>Category:</strong> <%= categoryName %></p>

      <p><strong>Description:</strong> <%= product.getProductDescription() %></p>

      <p><strong>Price:</strong> Rs <%= String.format("%.2f", product.getPrice()) %></p>

      <button onclick="location.href='${pageContext.request.contextPath}/AddToCart?productId=<%= product.getProductId() %>'">

        Add to Cart

      </button>

    </div>

  </main>

</body>

</html>