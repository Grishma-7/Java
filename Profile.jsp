<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import='model.User' %>
<%
	
	User user = (User) session.getAttribute("currentUser");

	if(user == null){
		
		RequestDispatcher rd = request.getRequestDispatcher("/Pages/Login.jsp");
		
		rd.forward(request, response);
		
		return;
	}

%>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>PROFILE</title>

    <link rel="stylesheet" href="../CSS/Profile.css">
    
    <!-- Font Awesome CDN -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>

<body>

<% String status = request.getParameter("status"); %>

<% if ("success".equals(status)) { %>
    <p style="color: green;">Profile updated successfully!</p>
<% } else if ("failed".equals(status)) { %>
    <p style="color: red;">Failed to update profile.</p>
<% } else if ("error".equals(status)) { %>
    <p style="color: red;">An unexpected error occurred.</p>
<% } %>




<!-- Hero section  -->

<div class="sidebar">

	<div class="logo">
	
	<ul class="menu">
		
		<li class = "active">
				
			<a href="#">
				
			<i class="fas fa-user-circle"></i>
				
				<h3>Profile</h3>
				
			</a>
			
		</li>
			
		<li>
			
			<a href="EditProfile.jsp">
				
				<i class="fas fa-user-edit"></i>
				
				<h3>Edit Profile</h3>
				
			</a>
			
		</li>
			
		<li>
			
			<a href="#">
				
				<i class="fas fa-history"></i>
				
				<h3>Order History</h3>
				
			</a>
				
		</li>
			
		<li>
			
			<a href="#">
				
				<i class="fas fa-credit-card"></i>
				
				<h3>Payment</h3>
				
			</a>
			
		</li>
			
		<li class="logout">
			
			<a href="#">
				
				<i class="fas fa-sign-out-alt"></i>
				
				<h3>Logout</h3>
				
			</a>
			
		</li>	
			
	</ul>
	
	</div>

</div>

	<div class="main-content">

        <h2>Personal Information</h2>
		
		<form action="../ProfileController" method="post">

        	<div class="profile-section">

            	<div class="profile-card">

                	<img src="../Images/User.jpg" alt="Profile image">

           	 	</div>



            <div class="general-info-card">

                <h3>General information</h3>

                <div class="form-row">

                    <input type="text" class="half-width"  name="username" value="<%= user.getUserName() %>" required>

					<input type="email" class="half-width"  name="email" value="<%= user.getEmail() %>" required>

                </div>

            </div>

        </div>



        <div class="security-card">

            <div class="form-row">      

                 <input type="text" class="half-width"  name="address"  value="<%= user.getAddress() %>" required>

                 <input type="text" class="half-width"  name="phoneNumber" value="<%= user.getPhoneNumber() %>" required>

               </div>

				<div class="security-actions">

               		<button type= "submit">Update Profile</button>

            	</div>

        	</div>
        
    	</form>
       
	</div>

</body>

</html>