<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>

        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Login.css">
        <title>Login</title>

    </head>

    <body>

        <div class="main">
            <form class="" action="login" method="post">
                <div class="head">
                    <center><img src="logo.png" alt="logo" class="logo">
                        <h3>Sign in</h3>
                        <h3>to access accounts</h3>
                    </center>
                </div>
                <div id="username">
                    <div class="name">
                        <input class="animat" type="text" name="Username" autofocus required>
                        <label>Username</label>
                    </div>
                    <div>
                        <a href="">Forget Username?</a>
                        <button type="button" id="next" class="next">Next</button>
                    </div>
                    <div style="margin-left: 10px;">
                        <h4>Sign in using</h4>
                        <a href=""><img class="icon" src="./giconl.png" alt=""></a>
                        <a href=""><img class="icon" src="./liconl.png" alt=""></a>
                        <a href=""><img class="icon" src="./microfofticon.png" alt=""></a>

                    </div>
                </div>

                <div id="password">
                    <div id="pass_select">
                        <div class="pass" id="my-input">
                            <input type="password" name="Password" class="password" id="pass1" autofocus required>
                            <label>Password</label>
                        </div>
                        <div class="iconeye">
                            <img src="eyehide.png" onclick="show();" id="eye">
                        </div>
                        <a href="">Forget Password?</a>
                        <input class="submit" type="submit" value="Submit">
                    </div>
                    <div style="margin-left: 10px;">
                        <h4>Sign in using</h4>
                        <a href=""><img class="icon" src="./giconl.png" alt=""></a>
                        <a href=""><img class="icon" src="./liconl.png" alt=""></a>
                        <a href=""><img class="icon" src="./microfofticon.png" alt=""></a>
                    </div>
                </div>

            </form>
        </div>

        <script src="./login.js"></script>

    </body>

    </html>