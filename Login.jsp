<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <title>Login</title>

    <link rel="stylesheet" type="text/css" href="../CSS/Login.css">

</head>

<body>

    <div class="login-container">

        <div class="left-panel">

            <img src="../Images/Swift-Go-16-02 (1) (2).jpg" alt="Laptop" class="floating-laptop">        </div>

        <div class="right-panel">

            <div class="login-box">

            

                <h2>Login</h2>

                

                <p class="welcome">Welcome back! Log into your account to continue</p>

               <% 
				    if (session.getAttribute("loginError") != null) { 
				%>
				    <p class="error" style="color:red; font-weight: bold;">
				        <%= session.getAttribute("loginError") %>
				    </p>
				<%
				    session.removeAttribute("loginError");
				} 
				%>


                <form action= "../LoginController" method="post">
                	
                	<input type="email" name="email" id = "email" placeholder="Email" required>
                	
                	<input type="password" name="password"id = "password" placeholder="Password" required>

                    <div class="forgot-password">

                    <a href="#">Forgot password?</a>


                    </div>

                    <button type="submit">Login</button>

                    <p class="register">

                     Don’t have an account?

                     <a href="Register.jsp">Register</a>

                     </p>

                </form>

            </div>

        </div>

    </div>

</body>

</html>