<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Login.css">
	<title>Login</title>
	
</head>
<body>
	
	<div class="maindiv">
        <img src="" alt="Logo">
        <h1>Sign in</h1>
        <h3>Continue to login</h3>

        <form action="login" method="post">

            <div class="inputs">
                <div class="Fields">
                    <div class="Fieldset">
                        <input type="text" class="Before-FS" name="Username" id="Username" required autocomplete="off">
                        <h1 class="Fs-H"><span>Email or username</span></h1>
                        <label class="placeholder">Email or username</label>
                        <a id="forget" href="http://">Forget email or username?</a>
                    </div>
                </div>
                <div class="Fields">
                    <div class="Fieldset">
                        <input type="password" class="Before-FS" name="Password" id="Password" required>
                        
                        <h1 class="Fs-H"><span>Password</span></h1>
                        <label class="placeholder">Password</label>
                    </div>
                </div>
        
            </div>
                <a id="ca" href="register.jsp">Create Account</a>
                <button type="submit" id="login">LOGIN</button>
        </form>
    </div>
	
</body>
</html>
