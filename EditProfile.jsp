<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import='model.User' %>
<%
	
	User user = (User) session.getAttribute("currentUser");

	request.setAttribute("user", user);
	
	if (user == null){
		
		response.sendRedirect("Login.jsp");
		
		return;
	}

%>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>EDIT PROFILE</title>

    <link rel="stylesheet" href="../CSS/Profile.css">
    
    <!-- Font Awesome CDN -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>

<body>

<!-- Hero section  -->

<div class="sidebar">

	<div class="logo">
	
	<ul class="menu">
		
		<li>
				
			<a href="#">
				
			<i class="fas fa-user-circle"></i>
				
				<h3>Profile</h3>
				
			</a>
			
		</li>
			
		<li class = "active">
			
			<a href="#">
				
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

<div class="back-to-profile">

    <a href="Profile.jsp">Back to Profile</a>
    
</div>

	<div class="main-content">
	
		<% 
	    	String status = request.getParameter("status"); 
	    	if ("success".equals(status)) { 
	    %>
	        <p style="color:darkgreen;">Profile updated successfully!</p>
	    <% 
	    	} else if ("failed".equals(status)) { 
	    %>
	        <p style="color:red;">Failed to update profile. Try again.</p>
	    <% 
	    	}
	    	if ("nochange".equals(status)) { 
	    %>
	        <p style="color:blue;">No changes were made to your profile.</p>
	    <% } %>

        <h2>Personal Information</h2>
		
		<form action="../EditProfileController" method="post">

        	<div class="profile-section">

            	<div class="profile-card">

                	<img src="../Images/User Profile.jpg" alt="Profile image">

           	 	</div>



            <div class="general-info-card">

                <h3>General information</h3>

                <div class="form-row">
                
                	<input type="hidden" name="userid" value="${user.userId}">

                    <input type="text" class="half-width" placeholder="Username" name="username" value="${user.userName}" required>
                    
                    <input type="email" class="half-width" placeholder="Email" name="email" value="${user.email}" required>

                </div>

            </div>

        </div>



        <div class="security-card">

            <div class="form-row">

                 <input type="text" class="half-width" placeholder="Address" name="address"  value="${user.address}" required>

                 <input type="text" class="half-width" placeholder="Phone Number" name="phoneNumber" value="${user.phoneNumber}" required>

               </div>

				<div class="security-actions">

               		<button type="submit">Save Changes</button>

            	</div>

        	</div>
        
    	</form>
       
	</div>

</body>

</html>