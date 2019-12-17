<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <!-- Linked to external CSS -->
        <link rel="stylesheet" href="shopStyle.css">

        <script type="text/javascript" src="myScript.js"></script>
        <c:import url="/includes/font.jsp" />
        <title>Soft Bambino | Register</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <link rel="manifest" href="/site.webmanifest">
    </head>

    <body class="bg body-nav-buffer">

        <c:import url="/includes/navbar.jsp" />
        <!-- Main  -->
        <div class="container container-narrow">
            <div class="row justify-content-center h2-margin">
                <h2>Create Account</h2>
            </div>
            <form class="needs-validation" novalidate>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="firstName">First name</label>
                        <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                        <div class="invalid-feedback">
                            Valid first name is required.
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="lastName">Last name</label>
                        <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                        <div class="invalid-feedback">
                            Valid last name is required.
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" placeholder="johndoe@example.com" required>
                    <div class="invalid-feedback">
                        Please enter a valid email address.
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email">Confirm Email</label>
                    <input type="email" class="form-control" id="email" placeholder="" required>
                    <div class="invalid-feedback">
                        Please ensure email matches.
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email">Password</label>
                    <input type="password" class="form-control" id="email" required>
                    <div class="invalid-feedback">
                        Please enter a valid password.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="email">Confirm Password</label>
                    <input type="password" class="form-control" id="email" required>
                    <div class="invalid-feedback">
                        Please ensure password matches.
                    </div>
                </div>


                <div class="mt-3" id="btn-contrast">
                    <button class="btn btn-contrast btn-block" type="submit">Register</button>
                </div>
            </form>
        </div>     
    </div>
    <!-- Footer -->

    <div class="container-fluid footer fixed-bottom">
        <div class="row ">
            <div class="col-s-12 col-sm-12 col-md-12 mt-2 mt-sm-2">
                <h5 class="text-center">Quick Links</h5>
                <ul class="list-unstyled list-inline text-center">
                    <li class=""><a href="index.jsp">Home</a></li>
                    <li class=""><a href="shop.jsp">Shop</a></li>
                    <li class=""><a href="contact.jsp">Contact</a></li>
                </ul>
            </div>

        </div>
        <div class="row">
            <div class="col-s-12 col-sm-12 col-md-12 mt-2 mt-sm-2">
                <ul class="list-unstyled list-inline social text-center">
                    <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-facebook icon"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-twitter icon"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-instagram icon"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-youtube icon"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void();" target="_blank"><i class="fa fa-envelope icon"></i></a></li>
                </ul>
            </div>
            </hr>
        </div>
        <div class="row">
            <div class="col-s-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                <p class="h6">&copy; Copyright <%= currentYear%>ACME Trading Company trading as<a class="link-default ml-2" href="index.jsp"  target="_blank">Soft Bambino</a></p>
            </div>
            </hr>
        </div>	
    </div>

</body>
</html>