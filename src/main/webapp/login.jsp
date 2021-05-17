<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Login.css">

        <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-migrate-1.4.1.min.js"></script>
        <script src="js/jquery-ui-1.10.3.custom.min.js"></script>

        <title>Login</title>
    </head>

    <body>
        <div class="form">
            <form class="" action="login" method="post" id="form">
                <div class="head">
                    <img src="logo.png" alt="logo" class="logo">
                    <h3>Sign in</h3>
                    <h3>to access accounts</h3>
                </div>
                <div id="username">
                    <div class="name">
                        <input class="animat" type="email" name="email" id="userName" autofocus required>
                        <label>Email</label>
                        <div><span id="result1"></span></div>
                    </div>
                    <div class="fub">
                        <a href="">Forget Username?</a>
                        <button type="button" id="next" class="next">Next</button>
                    </div>
                    <div id="foot-signup" style="margin-left: 11px; margin-top: 20px;">

                        Don't have an account? <a href="register.jsp">Sign up now</a>

                    </div>
                </div>
                <div id="password" class="hidden">
                    <div id="pass_select">
                        <div class="pass" id="my-input">
                            <input type="password" name="Password" class="password" id="pass1" autofocus required>
                            <label>Password</label>
                            <div><span id="pass-result"></span></div>
                        </div>
                        <div class="iconeye">
                            <img src="eyehide.png" id="eye">
                        </div>
                        <div class="fub">
                            <a href="">Forget Password?</a>
                            <button id="btnsubmit" class="submit" type="button">Submit</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <script src="./login.js"></script>
    </body>

    </html>