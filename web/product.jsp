<%@page import="model.SoftToy"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Soft Bambino | Product</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <link rel="manifest" href="/site.webmanifest">

        <script>
            $(document).ready(function () {
                $("#productDesc").click(function () {
                    // $("#productDescPanel").hide();
                    $("#productDescPanel").slideToggle("slow");
                });
            });

            $(document).ready(function () {
                $("#productDelivery").click(function () {
                    // $("#productDescPanel").hide();
                    $("#productDeliveryPanel").slideToggle("slow");
                });
            });
        </script>
        
        <script>
                        function stock() {
                            var s = parseInt('${product.getStock()}');
                            if(s > 10){
////                                console.log(stock)
//                            switch (stock){
//                                    case > 10:
                            document.getElementById('stockAvailability').innerHTML = 'Yah! This is in stock';
                            }else if (s > 1 && s < 10){
                              document.getElementById('stockAvailability').innerHTML = 'Hurry! There is only a few remaining';
                            }else if (s === 0){
                             document.getElementById('stockAvailability').innerHTML = 'Sorry! Out of stock';
                            }
                        }
                    </script>
    </head>

<%  String stock = (String) request.getParameter("id"); %>
    <% System.out.println("stock" + stock);%>
    <body class="bg  body-nav-buffer" onload="stock()">

        <c:import url="/includes/navbar.jsp" />

        <!-- Main  -->
        <div class="container">
            <div class="row mb-5">
                <a href="ProductsServlet?filter=all" >&lt; Continue Shopping</a>
            </div>
            <div class="row">
                <div class="col-lg-5 col-md-12">

                    <img src="${product.getImage()}" class=" img-fluid shadow rounded border border-dark" alt="Responsive image">

                </div>

                <div class="col-lg-7 col-md-12">

                    <h2 id="productName">${product.getProductName()}</h2>
                    <br>

                    <h4 id="price">${product.getPrice()}</h4>
                    <br>
                    
                    <h5 id="stockAvailability" ></h5>
                    <br>
                    <span><b>Age Suitability:</b>  ${product.getAgeSuitability()}</span>
                    <br><br>
                    <form class="form-inline">

                        <div class="form-group mr-3">
                            <label for="quantity" class="sr-only">Quantity</label>
                            <input type="text" class="form-control input-mini" id="quantity" value="1">
                        </div>
                        <div id="btn-default">
                            <button type="submit" class="btn btn-default">Add <i class="fa fa-shopping-cart ml-1"></i></button>
                        </div>
                    </form>



                    <hr/>
                    <h6 id="productDesc"> Product Description  <i class="fa fa-angle-down" aria-hidden="true"></i></h6>
                    <div id="productDescPanel" class="product-panel">
                        <p>
                            ${product.getProductDesc()}
                        </p>
                    </div>
                    <hr/>
                    <h6 id="productDelivery"> Product Delivery  <i class="fa fa-angle-down" aria-hidden="true"></i></h6>
                    <div id="productDeliveryPanel" class="product-panel">
                        <p>
                            ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor 
                            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
                            ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit 
                            in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                            non prosunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor.
                        </p>
                    </div>
                    <hr/>


                </div>

            </div> 


            <br>
            <br>
            <br>
            <!--<hr/>-->
            <div class="row d-flex  wow fadeIn">

                <div class="col-md-6">

                    <h4 class="my-4 h4">Other Suggested Products...</h4>

                </div>
                <!--Grid column-->

            </div>
            <!--Grid row-->

            <!--Grid row-->
            <div class="row wow fadeIn">
                 <c:forEach items="${suggestedProducts}" var="tempproduct">  
                    <div class="col-lg-3 col-md-12 mb-4"> 
                        <div class="card mb-4 shadow card-product">
                            <div class="card-body">
                                <a href="ProductManagerServlet?action=PROD&id=${tempproduct.getId()}"> <img class="card-img-top card-img" src="${tempproduct.getImage()}" alt="animal"></a>
                                <a href="ProductManagerServlet?action=PROD&id=${tempproduct.getId()}"><h5 class="text-center mt-3">${tempproduct.getProductName()}</h5></a>
                                <p class="card-text text-center">&#8364; ${tempproduct.getPrice()}</p>
                                <div class="d-flex justify-content-center align-items-center">
                                    <c:url var="postUrl" value="/CartServlet">
                                        <c:param name="action" value="ADD"/>
                                    </c:url>
                                    <form action="${postUrl}" method="POST" class="needs-validation" novalidate>
                                        <input type="hidden" name="id" name="id" value="${tempproduct.getId()}">
                                        <button class="btn btn-sm " type="submit">Add  <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
<!--
                Grid column
                <div class="col-lg-3 col-md-12 mb-4">

                    <div class="card mb-4 shadow card-product">
                        <div class="card-body">
                            <a href="product.jsp"> <img class="card-img-top card-img" src="images/soft-animal-5-l.jpg" alt="teddy-bears-square"></a>
                            <a href="product.jsp"><h5 class="text-center mt-3">Product Name</h5></a>
                            <p class="card-text text-center">$13.00</p>
                            <div class="d-flex justify-content-center align-items-center">


                                <button type="button" class="btn btn-sm ">Add  <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>

                                  
                            </div>
                        </div>
                    </div>

                </div>
                Grid column

                Grid column
                <div class="col-lg-3 col-md-6 mb-4">

                    <div class="card mb-4 shadow card-product">
                        <div class="card-body">
                            <a href="product.jsp"> <img class="card-img-top card-img" src="images/soft-animal-2.jpg" alt="teddy-bears-square"></a>
                            <a href="product.jsp"><h5 class="text-center mt-3">Product Name</h5></a>
                            <p class="card-text text-center">$13.00</p>
                            <div class="d-flex justify-content-center align-items-center">


                                <button type="button" class="btn btn-sm ">Add  <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>

                                  
                            </div>
                        </div>
                    </div>

                </div>
                Grid column
                <div class="col-lg-3 col-md-6 mb-4">

                    <div class="card mb-4 shadow card-product">
                        <div class="card-body">
                            <a href="product.jsp"> <img class="card-img-top card-img" src="images/soft-animal-4.jpg" alt="teddy-bears-square"></a>
                            <a href="product.jsp"><h5 class="text-center mt-3">Product Name</h5></a>
                            <p class="card-text text-center">$13.00</p>
                            <div class="d-flex justify-content-center align-items-center">


                                <button type="button" class="btn btn-sm ">Add  <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>

                                  
                            </div>
                        </div>
                    </div>-->
<!--
                </div>
                Grid column
                <div class="col-lg-3 col-md-6 mb-4">

                    <div class="card mb-4 shadow card-product">
                        <div class="card-body">
                            <a href="product.jsp"> <img class="card-img-top card-img" src="images/soft-doll-1.jpg" alt="teddy-bears-square"></a>
                            <a href="product.jsp"><h5 class="text-center mt-3">Product Name</h5></a>
                            <p class="card-text text-center">$13.00</p>
                            <div class="d-flex justify-content-center align-items-center">


                                <button type="button" class="btn btn-sm ">Add  <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>

                                  
                            </div>
                        </div>
                    </div>

                </div>
                Grid column-->

<!--            </div>
            Grid row-->

        </div>
    </main>
    <!--Main layout-->
</div>
</div>
<c:import url="/includes/footer.jsp" />