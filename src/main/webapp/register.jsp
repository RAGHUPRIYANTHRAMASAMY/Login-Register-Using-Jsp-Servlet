<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Material Icons' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="./Register.css">
    <title>Register</title>
    
</head>
<body>
	
	<div class="main">
    <form class="" action="register" method="post">
      <div class="head">
        <img src="" alt="logo" class="logo">
        <h3>Create your Signin Account</h3>
      </div>
      <div class="name">
        <input type="text" name="username" required>
        <label>First name</label>
      </div>
      <div class="name">
        <input type="text" required>
        <label>Last name</label>
      </div>
      <div class="user-name">
        <input type="username" name="email" required>
        <label>Email</label>
        <span class="gmail">@gmail.com</span>
      </div>
      <a class="line1">You can use letters, numbers & periods</a>
      <a href="" class="line2">Use my current email address instead</a>
      <div class="pass">
        <input type="password" name="password" class="password" id="pass1" required>
        <label>Password</label>
      </div>
      <div class="pass">
        <input type="password" class="password" id="pass2" required>
        <label>Confirm</label>
        </div>
        <div class="iconeye">
      <img src="eyehide.png" onclick="show();" id="eye">
      </div>
      <a class="line3">Use 8 or more characters with a mix of letters, numbers & symbols</a>
      <a href="login.jsp" class="line4">Sign in instead</a>
      <input type="submit" value="Submit">
    </form>
    </div>

    <script type="text/javascript">

    function show(){

      var password= document.getElementById('pass1');
      confirm= document.getElementById('pass2');
      image= document.getElementById('eye');

      if (password.type==="password",confirm.type==="password") {
        password.type="text";
        confirm.type="text";
        image.setAttribute('src', 'eyeshow.png');

      }else if (password.type==="text",confirm.type==="text"){
        password.type="password";
        confirm.type="password";
        image.setAttribute('src', 'eyehide.png');
      }
    }

    </script>
	
</body>
</html>
