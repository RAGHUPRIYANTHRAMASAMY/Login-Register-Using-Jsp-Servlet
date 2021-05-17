<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="home.css">
        <title>HOME</title>

        <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-migrate-1.4.1.min.js"></script>
        <script src="js/jquery-ui-1.10.3.custom.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $.ajax({
                    type: 'POST',
                    url: 'homeservlet',
                    async: false,
                    success: function (result) {
                        if ($.trim(result) == "true") {
                            $('#signin').toggleClass("hide");
                            $('#signup').toggleClass("hide");
                            $('#signout').toggleClass("show");
                        }
                        if ($.trim(result) == "false") {
                            $('#signin').toggleClass("show");
                            $('#signup').toggleClass("show");
                            $('#signout').toggleClass("hide");
                        }
                    }
                })
            })
        </script>
    </head>

    <body>

        <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" );
            response.setHeader("pragma", "no-cache" );
            response.setHeader("Expires", "0" );
         %>

            <nav>
                <form action="login.jsp" method="post">
                    <button type="submit" id="signin">Sign In</button>
                </form>
                <form action="logout" method="post">
                    <button type="submit" id="signout">Sign Out</button>
                </form>
                <form action="register.jsp" method="post">
                    <button type="submit" id="signup">Sign Up</button>
                </form>
            </nav>
            <h1>Welcome to Home page!...<br>${ email }</h1>

    </body>
</html>