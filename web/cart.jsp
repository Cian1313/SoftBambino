<%@page import="model.SoftToy"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <title>Soft Bambino | Your Cart</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <link rel="manifest" href="/site.webmanifest">
    </head>
    <body class="bg body-nav-buffer ">

        <c:import url="/includes/navbar.jsp" />

        <!-- Main -->
        <div class="container ">
            <div class="row justify-content-center " >
                <h2>Shopping Cart</h2>
            </div>
            <br/>
            <div class="row justify-content-center mb-4"  id="btn-default">
                <a class="btn btn-default btn-block" href="checkout.jsp" role="button">Proceed To Checkout</a>
            </div>
            <div class="row justify-content-center">
                <div class="col">
                    <table class="table">
                        <thead>
                            <tr>
<!--                                <th scope="col" class="border-0 ">
                                    <div class="p-2 text-uppercase ">Product</div>
                                </th>-->
                                <th scope="col" class="border-0 ">
                                    <div class="py-2 text-uppercase text-center">Unit Price</div>
                                </th>
                                <th scope="col" class="border-0 ">
                                    <div class="py-2 text-uppercase text-center">Quantity</div>
                                </th>
                                <th scope="col" class="border-0 ">
                                    <div class="py-2 text-uppercase text-center">Edit</div>
                                </th>
                                <th scope="col" class="border-0">
                                    <div class="py-2 text-uppercase text-center">Remove</div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${CART}" var="tempproduct">  
                                <tr>
                                    <td class="align-middle text-center"><strong><c:out value="${tempproduct.getPrice()}"/></strong></td>
                                    <td class="align-middle text-center"><strong>2</strong></td>
                                    <td class="align-middle text-center"><a href="#" class="text-dark table-link"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                                    <td class="align-middle text-center"><a href="#" class="text-dark table-link"><i class="fa fa-trash"></i></a></td>
                                </tr>
                            </c:forEach>
<!--                            <tr>
                                <td scope="row">
                                    <div class="p-2">
                                        <img src="images/bear-product-1.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
                                        <div class="ml-3 d-inline-block align-middle">
                                            <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block align-middle .table-link">Beige Teddy Bear</a></h5><span class="text-muted font-weight-normal font-italic d-block">
                                        </div>
                                    </div>
                                </td>
                                <td class="align-middle text-center"><strong>&#8364; 20.99</strong></td>
                                <td class="align-middle text-center"><strong>2</strong></td>
                                <td class="align-middle text-center"><a href="#" class="text-dark table-link"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                                <td class="align-middle text-center"><a href="#" class="text-dark table-link"><i class="fa fa-trash"></i></a></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <div class="p-2">
                                        <img src="images/soft-animal-2.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
                                        <div class="ml-3 d-inline-block align-middle">
                                            <h5 class="mb-0"><a href="#" class="text-dark d-inline-block">Beige Teddy Bear</a></h5><span class="text-muted font-weight-normal font-italic">
                                        </div>
                                    </div>
                                </th>
                                <td class="align-middle text-center"><strong>&#8364; 14.99</strong></td>
                                <td class="align-middle text-center"><strong>1</strong></td>
                                <td class="align-middle text-center"><a href="#" class="text-dark"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                                <td class="align-middle text-center"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <div class="p-2">
                                        <img src="images/soft-animal-3.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
                                        <div class="ml-3 d-inline-block align-middle">
                                            <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">Beige Teddy Bear</a></h5><span class="text-muted font-weight-normal font-italic">
                                        </div>
                                    </div>
                                <td class="align-middle text-center"><strong>&#8364; 12.99</strong></td>
                                <td class="align-middle text-center"><strong>1</strong></td>
                                <td class="align-middle text-center"><a href="#" class="text-dark"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                                <td class="align-middle text-center"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-md-7">
                    <div>
                        <a href="ProductsServlet?filter=all">&lt; Continue Shopping</a>
                    </div>
                </div>
                <div class="col-md-5 justify-content-end d-block">
                    <div class="p-4">
                        <ul class="list-unstyled mb-4">
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order Subtotal </strong><strongd-flex>&#8364; 48.97</strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Shipping and handling</strong><strong>&#8364; 3.99</strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                                    <h5 class="font-weight-bold">&#8364; 52.96</h5>
                                </li>
                        </ul>
                        <div id="btn-default"><a class="btn btn-default btn-block ml-3" id="btn-default" href="checkout.jsp" role="button">Proceed To Checkout</a></div>
                    </div>
                </div>



            </div><!-- end container -->
        </div>

        <c:import url="/includes/footer.jsp" />