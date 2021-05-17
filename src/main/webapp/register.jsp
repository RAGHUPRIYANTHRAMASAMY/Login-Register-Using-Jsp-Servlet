<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Register</title>
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Material Icons' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./Register.css">

    <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-1.4.1.min.js"></script>
    <script src="js/jquery-ui-1.10.3.custom.min.js"></script>

    <script type="text/javascript">

      $(document).ready(function () {
        var email;
        $('#email').blur(function () {
          email = $('#email').val();
          console.log(email);
          if (email == null || email == "") {
            $('#emailerror').html("Please Enter your Email ID").css("color", "red");
            $('#email').css("border", "2px solid red");
          }
          else if (email.endsWith("@gmail.com") == false) {
            console.log("not contains @gmail.com");
            $('#emailerror').html("Entered Email ID Not Valid").css("color", "red");
            $(':input[type="submit"]').prop('disabled', true);
          }
          else {
            $.ajax({
              type: 'POST',
              data: { userEmail: email },
              url: 'registeremailvalidate',
              async: false,
              success: function (result) {
                if ($.trim(result) == "true") {
                  console.log(result);
                  $(':input[type="submit"]').prop('disabled', true);
                  $('#emailerror').html("Entered Email ID already exist").css("color", "red");
                  $('#emailerror').toggleClass("res");
                }
                if ($.trim(result) == "false") {
                  console.log(result);
                  $('#emailerror').html("");
                  $(':input[type="submit"]').prop('disabled', false);
                }
              }
            })
          };
        });

        $('#email').focus(function () {
          $('#emailerror').html("");
          $('#email').css("border", "");
        })

      });
    </script>
  </head>

  <body>
    <div class="main">
      <form class="" action="register" method="post">
        <div class="head">
          <center><img src="logo.png" alt="logo" class="logo"></center>
          <h3>Create your Signin Account</h3>
        </div>
        <div class="name">
          <input type="text" name="firstname" autofocus required>
          <label>First name</label>
        </div>
        <div class="name">
          <input type="text" name="lastname" required>
          <label>Last name</label>
        </div>
        <div class="user-name">
          <input type="email" name="email" id="email" required>
          <label>Email</label>
          <span id="emailerror" class="res"></span>
        </div>
        <div class="pass">
          <input style="width: 354px;" type="password" name="password" class="password" id="pass1" pattern=".{8,}"
            title="Eight or more characters" required>
          <label>Password</label>
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

      var emailvalue = sessionStorage.getItem("email");
      if (emailvalue.endsWith("@gmail.com")) {
        document.getElementById("email").value = emailvalue;
        console.log(sessionStorage.getItem("email"));
      }

      function show() {
        var password = document.getElementById('pass1');
        image = document.getElementById('eye');
        if (password.type === "password") {
          password.type = "text";
          image.setAttribute('src', 'eyeshow.png');
        } else if (password.type === "text") {
          password.type = "password";
          image.setAttribute('src', 'eyehide.png');
        }
      }
    </script>
  </body>
</html>