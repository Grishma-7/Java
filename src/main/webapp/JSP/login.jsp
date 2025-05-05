<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="../CSS/Style.css">
</head>
<body>
    <div class="login-container">
        <div class="left-panel">
            <img src="../image/Swift-Go-16-02 (1).jpg" alt="Laptop" class="floating-laptop">        </div>
        <div class="right-panel">
            <div class="login-box">
            
                <h2>Login</h2>
                
                <p class="welcome">Welcome back! Log into your account to continue</p>  
                
                <form action="LoginServlet" method="post">
                
                     <input type="text" name="firstname" placeholder="Email" required>
                        
                      <input type="password" name="password" placeholder="Password" required>
                 
                    <div class="forgot-password">
                    <a href="#">Forgot password?</a>
                    
                    </div>

                    <button type="submit">Login</button>
                    
                    <p class="register">
                    
                     Don’t have an account?
                     
                     <a href="register.jsp">Register</a>
                     </p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>


