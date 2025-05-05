<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="../CSS/register.css">
</head>
<body>

<div class="wrapper">
    <div class="form-section">
        <div class="form-card">
            <h2>Register</h2>
            <form action="RegisterServlet" method="post">
                <input type="text" name="firstname" placeholder="First name" required>
                <input type="text" name="lastname" placeholder="Last name" required>
                <input type="text" name="username" placeholder="User name" required>
                <input type="email" name="email" placeholder="Email" required>
                <input type="text" name="phonenumber" placeholder="Phone Number" required>
                <input type="text" name="address" placeholder="Address" required>
                <input type="password" name="password" placeholder="Password" required> 
                <input type="password" name="confirmpassword" placeholder="Confirm password" required>
                

                <button type="submit">Register</button>
                <p class="login-link">
                    Already have an account?
                    <a href="login.jsp">Login</a>
                </p>
            </form>
        </div>
    </div>

    <div class="image-section">
        <img src="../image/Swift-Go-16-02 (1).jpg" class="floating-laptop">
    </div>
</div>

</body>
</html>
