<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
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
        <c:import url="/includes/font.jsp" />
        <title>Soft Bambino | Homepage</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <link rel="manifest" href="/site.webmanifest">

    </head>
    <body class="bg">


        <c:import url="/includes/navbar.jsp" />

        <div id="homepage-carousel" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#homepage-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#homepage-carousel" data-slide-to="1"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/homepage_image2.jpg" alt="" width= 100% height= 80%>
                    <div class="container">
                        <div class="carousel-caption text-left">
                            <h1>Welcome ${user.getFirstName()} to Soft Bambino</h1>
                            <p>Browse all our products across our extensive range of Soft Toys. Surprise your little bambino with a soft toy!</p>
                            <p><a class="btn btn-lg btn-contrast" href="ProductsServlet?filter=all" role="button">Start shopping &raquo;</a></p>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <img src="images/homepage_image.jpg" alt="" width=100% height=80%>
                    <div class="container">
                        <div class="carousel-caption text-left">
                            <h1>Are you Registered?</h1>
                            <p>Sign up today to get all notified of all your latest offers and arrivals. It will also speed up the checkout process</p>
                            <p><a class="btn btn-lg btn-contrast" href="login.jsp" role="button">Sign up today &raquo;</a></p>
                        </div>
                    </div>
                </div>   
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#homepage-carousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#homepage-carousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div> 

        <div class="container main">
            <div class="row justify-content-center">
                <h2>Our Products</h2>
            </div>

            <!-- Three card below the heading -->
            <div class="row index">

                <div class="col-lg-6">

                    <img src="images/index-2.jpg">

                    <div class="mt-lg-4 mt-3 product-info-img">
                        <p>Here at Soft Bambino we know we value our customers. 
                            We are happy to help with any queries or issues 
                            you may be having with our products.
                        </p>
                        <div class="clients_more-buttn mb-3">
                            <a href="contact.jsp" class="btn btn-default">Contact Us</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <img src="images/index-3.jpg">
                    <div class="mt-lg-4 mt-3 mb-3 product-info-img">
                        <p>Here at Soft Bambino we stock an extensive
                            range of soft animals, soft   dolls and 
                            soft interactive toys. You will be sure 
                            to find just what you are looking for your
                            little one very at a competitive price. 
                            Do not wait to surprise them ...
                        </p>
                        <div class="clients_more-buttn">
                            <a href="ProductsServlet?filter=all" class="btn btn-default">Shop Now</a>
                        </div>
                    </div>
                    <img src="images/index-4.jpg">
                    <div class="mt-lg-4 mt-3">
                        <p>Here at Soft Bambino we care about what we can do
                            to help protect the planet for the next generations of
                            kids. Thats why we ensure all our products are sources 
                            from ethical suppliers.
                        </p>
                        <div>
                            <a href="ProductsServlet?filter=all" class="btn btn-default">Shop Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <c:import url="/includes/footer.jsp" />