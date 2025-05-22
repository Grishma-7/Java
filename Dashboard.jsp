<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>

<%@ page import="model.Product" %>

<%@ page import="model.User" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <title> DASHBOARD </title>

    <link rel="stylesheet" href="CSS/Dashboard.css">
    
    <!-- Font Awesome CDN -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>

<body>



<!-- Hero section  -->

	<div class="sidebar">
	
		<div class="logo">
		
		<ul class="menu">
			
			<li class="active">
					
				<a href="#">
					
				<i class="fas fa-tachometer-alt"></i>
					
					<h3>Dashboard</h3>
					
				</a>
				
			</li>
				
			<li class="active">
				
				<a href="Pages/AddProduct.jsp">
					
					<i class="fas fa-box-open"></i>
					
					<h3>Add Product</h3>
					
				</a>
				
			</li>
				
			<li class="active">
				
				<a href="#">
					
					<i class="fas fa-shopping-bag"></i>
					
					<h3>Order</h3>
					
				</a>
					
			</li>
				
			<li class="active">
				
				<a href="Pages/AdminProfile.jsp">
					
					<i class="fas fa-user"></i>
					
					<h3>Profile</h3>
					
				</a>
				
			</li>
				
			<li class="active">
				
				<a href="Pages/AdminEditProfile">
					
					<i class="fas fa-edit"></i>
					
					<h3>Edit Profile</h3>
					
				</a>
				
			</li>
				
			<li class="active">
				
				<a href="Pages/Home.jsp">
					
					<i class="fas fa-home"></i>
					
					<h3>Home</h3>
					
				</a>
				
			</li>	
			
			<li class="active">
				
				<a href="Pages/Product.jsp">
					
					<i class="fas fa-cubes"></i>
					
					<h3>Product</h3>
					
				</a>
				
			</li>	
			
			<li class="active">
				
				<a href="Pages/Cart.jsp">
					
					<i class="fas fa-shopping-cart"></i>
					
					<h3>Cart</h3>
					
				</a>
				
			</li>
			
			<li class="active">
				
				<a href="Pages/AboutUs.jsp">
					
					<i class="fas fa-info-circle"></i>
					
					<h3>About Us</h3>
					
				</a>
				
			</li>	
			
			<li class="active">
				
				<a href="Pages/ContactUs.jsp">
					
					<i class="fas fa-envelope"></i>
					
					<h3>Contact Us</h3>
					
				</a>
				
			</li>		
			
			<li class="active">
				
				<a href="#">
					
					<i class="fas fa-sign-out-alt"></i>
					
					<h3>Logout</h3>
					
				</a>
				
			</li>
				
		</ul>
		
	</div>
		
</div>
		
	<div class="main--content">
		
		<div class="header--wrapper">
			
			<div class="header--title">
				
				<h2>Dashboard</h2>
				
			</div>
				
			<img src="../Images/User Profile.jpg" alt="Admin profile photo">
			
		</div>
		
		<div class="card--container">
		
			<h3 class="main--title">Todays data</h3>
		
			<div class="card--wrapper">
			
				<div class="dashboard--card light-red">
					
					<div class="card--header">
					
						<div class="quantity">
					
							<h3 class="title">Total User</h3>
							
							
							
							<p class="quantity--value"><%= request.getAttribute("totalUsers") %></p>
							
						</div>
							
							<i class="fas fa-user icon dark-red"></i>
						
					</div>
				
				</div>
			
				<div class="dashboard--card light-blue">
					
					<div class="card--header">
					
						<div class="quantity">
					
							<h3 class="title">Total Laptop</h3>
							
						
							
							<p class="quantity--value"><%= request.getAttribute("totalLaptops") %></p>
							
						</div>
							
							<i class="fas fa-laptop icon dark-blue"></i>
						
					</div>
				
				</div>
				
				<div class="dashboard--card light-purple">
					
					<div class="card--header">
					
						<div class="quantity">
					
							<h3 class="title">Total Order</h3>
							
							
							
							<p class="quantity--value"><%= request.getAttribute("totalOrders") %></p>
							
						</div>
							
							<i class="fas fa-shopping-bag icon dark-purple"></i>
						
					</div>
				
				</div>
			
				<div class="dashboard--card light-green">
					
					<div class="card--header">
					
						<div class="quantity">
					
							<h3 class="title">Total Revenue</h3>
							
							
							
							<p class="quantity--value"><%= request.getAttribute("totalRevenues") %></p>
							
						</div>
							
							<i class="fas fa-dollar-sign icon dark-green"></i>
						
					</div>
				
				</div>
				
				
			</div>
				
		</div>
		
		
		<div class="tabular--wrapper">
		
			<h3 class="main--title">Recent Products</h3>		
		
			<div class="table-container">
		
				<table>
				
					<thead>
					
						<tr>
							
							<th>Product Id</th>
							
							<th>Product Name</th>
							
							<th>Price</th>
							
							<th>Product Stock</th>
							
							<th>Action</th>
						
						</tr>
						
					</thead>
					
					<tbody>
					    <%
					        List<Product> products = (List<Product>) request.getAttribute("recentProducts");
					
					        if (products != null && !products.isEmpty()) {
					
					            for (Product product : products) {
					    %>
					    <tr>
					        <td><%= product.getProductId() %></td>
					        <td><%= product.getProductName() %></td>
					        <td><%= product.getPrice() %></td>
					        <td><%= product.getProductStock() %></td>
					        <td>
					            <form action="EditProductController" method="get" style="display:inline;">
					                <input type="hidden" name="productId" value="<%= product.getProductId() %>">
					                <button type="submit">Edit</button>
					            </form>
					            <form action="DeleteProductController" method="post" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this product?');">
					                <input type="hidden" name="productId" value="<%= product.getProductId() %>">
					                <button type="submit">Delete</button>
					            </form>
					        </td>
					    </tr>
					    <%
					            }
					        } else {
					    %>
					    <tr>
					        <td colspan="4">No recent products found.</td>
					    </tr>
					    <%
					        } 
					    %>
					</tbody>

				
				</table>
				
				<h3 class="main--title"> Recent Users</h3>
				
				<table>
				
					<thead>
					
						<tr>
							
							<th>User Id</th>
							
							<th>User Name</th>
							
							<th>Email</th>
							
							<th>Phone Number</th>
							
							<th>Address</th>
							
							<th>Action</th>
						
						</tr>
						
					</thead>
					
					<tbody>
					    <%
					        List<User> users = (List<User>) request.getAttribute("recentUsers");
					
					        if (users != null && !users.isEmpty()) {
					
					            for (User user : users) {
					    %>
					    <tr>
					        <td><%= user.getUserId() %></td>
					        <td><%= user.getUserName() %></td>
					        <td><%= user.getEmail() %></td>
					        <td><%= user.getPhoneNumber() %></td>
					        <td><%= user.getAddress() %></td>
					        <td>
					            <form action="EditProductController" method="get" style="display:inline;">
					                <input type="hidden" name="userId" value="<%= user.getUserId() %>">
					                <button type="submit">Edit</button>
					            </form>
					            <form action="DeleteProductController" method="post" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this user?');">
					                <input type="hidden" name="userId" value="<%= user.getUserId() %>">
					                <button type="submit">Delete</button>
					            </form>
					        </td>
					    </tr>
					    <%
					            }
					        } else {
					    %>
					    <tr>
					        <td colspan="5">No recent users found.</td>
					    </tr>
					    <%
					        } 
					    %>
					</tbody>

				
				</table>
		
			</div>
		
		</div>
		
	</div>



</body>

</html>