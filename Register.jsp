<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<title>Register</title>
	
	<link rel="stylesheet" href="../CSS/Register.css">
	
</head>
<body>

<div class="wrapper">

    <div class="form-section">
    
        <div class="form-card">
        
            <h2>Register</h2>
					
					
					<% if (session.getAttribute("registerError") != null) { %>
    
    					<p class="error" style="color:red;"><%= session.getAttribute("registerError") %></p>

					<% } %>

	
					<% if (session.getAttribute("nameError") != null) { %>
					   
					    <p class="error" style="color:red;"><%= session.getAttribute("nameError") %></p>
					
					<% } %>
					
					<% if (session.getAttribute("usernameError") != null) { %>
					
					    <p class="error" style="color:red;"><%= session.getAttribute("usernameError") %></p>
					
					<% } %>
					
					<% if (session.getAttribute("emailError") != null) { %>
					
					    <p class="error" style="color:red;"><%= session.getAttribute("emailError") %></p>
					
					<% } %>
					
					<% if (session.getAttribute("phoneError") != null) { %>
					
					    <p class="error" style="color:red;"><%= session.getAttribute("phoneError") %></p>
					
					<% } %>
					
					<% if (session.getAttribute("addressError") != null) { %>
					
					    <p class="error" style="color:red;"><%= session.getAttribute("addressError") %></p>
					
					<% } %>
					
					<% if (session.getAttribute("passwordError") != null) { %>
					
					    <p class="error" style="color:red;"><%= session.getAttribute("passwordError") %></p>
					
					<% } %>
					
					    				
    				<form  action = "../RegisterController" method = "post">
		
						<input type = "text" id = "firstname" name = "firstname" placeholder = "First name" required> 
	
						<input type = "text" id = "lastname" name = "lastname" placeholder = "Last name" required>
		
						<input type = "text" id = "username" name = "username" placeholder = "User name" required>
		
						<input type = "email" id = "email" name = "email" placeholder = "Email" required>
				
						<input type = "number" id = "phonenumber" name = "phonenumber" placeholder = "Phone number" required>
				
						<input type = "text" id = "address" name = "address" placeholder = "Address" required>
	
						<input type = "password" id = "password" name = "password" placeholder = "Password" required>
			
						<input type = "password" id = "confirmpassword" name = "confirmpassword" placeholder = "Confirm password" required>
	
						<button type = "submit"> Register </button>
							
						<p class = "login-link"> 
							
							Already have an account?
								
							<a href="Login.jsp"> Login </a>
							
						</p>
						
					</form>
						
			</div>
				
		</div>
			
		<div class="image-section">
		
        <img src="../Images/Swift-Go-16-02 (1) (2).jpg" class="floating-laptop">
        
    </div>
				
	</div>
						
</body>
</html>