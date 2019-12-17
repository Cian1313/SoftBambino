<%-- 
    Document   : shopFilter
    Created on : 19-Nov-2019, 14:31:43
    Author     : ciano
    
    Images References: https://www.smythstoys.com/ie/en-ie
--%>
<%@page import="model.SoftToy"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

        <!-- Links to external CSS -->
        <link rel="stylesheet" href="shopStyle.css">

        <script type="text/javascript" src="myScript.js"></script>

        <c:import url="/includes/font.jsp" />

        <title>Soft Bambino | Shop</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <link rel="manifest" href="/site.webmanifest">
        <style>
            /*filter*/
            .container {
                overflow: hidden;
            }

            .filterDiv {
                display: none; /* Hidden by default */
            }

            /* The "show" class is added to the filtered elements */
            .show {
                display: block;
            }

        </style>
    </head>
    <%  String filter = (String) request.getParameter("filter"); %>
    <% System.out.println("shop:" + filter);%>
    <body class="bg  body-nav-buffer" onload="filterHeader('${filter}')">
        <c:import url="/includes/navbar.jsp" />
        <!-- Main  -->
        <div class="container">
            <div class="row justify-content-center mb-5">

                <h2>Shop Soft Toys</h2>

            </div>
            <div class="row mt-3 mb-4 p-1 ">
                <div class="col-lg-8 col-md-12">
                    <h4></h4>
                </div>

                <!-- Control buttons -->
                <div class="col-lg-4 col-md-12 d-flex justify-content-end"id="myBtnContainer">
                    <a class="btn mr-2 badge-pill" href="ProductsServlet?filter=all" id="all"> Show all</a>
                    <a class="btn mr-2 badge-pill" href="ProductsServlet?filter=ANIMAL" id="ANIMAL"> Animals</a>
                    <a class="btn mr-2 badge-pill" href="ProductsServlet?filter=DOLL" id="DOLL"> Doll</a>
                    <a class="btn mr-2 badge-pill" href="ProductsServlet?filter=INTERACTIVE" id="INTERACTIVE"> Interactive</a>
                </div>
            </div>
            <!-- The filterable elements. Note that some have multiple class names (this can be used if they belong to multiple categories) -->
            <div class="row">
                <c:forEach items="${SKALLPRODUCTS}" var="tempproduct">  
                    <div class="col-lg-3 col-md-6"> 
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

            </div>
        </div>
        <div class="d-flex justify-content-center"
             <nav aria-label="Search results pages">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <script>
        //to set the correct header and set link to active state to match filter
        //funtion is called on load
        function filterHeader(f) {
            switch (f) {
                case "all":
                    $("h4").text("All Soft Toys...");
                    var activeBtn = document.getElementById(f);
                    activeBtn.className += " filter-btn-active";
                    break;
                case "ANIMAL":
                    $("h4").text("All Animal Soft Toys...");
                    var activeBtn = document.getElementById(f);
                    activeBtn.className += " filter-btn-active";
                    break;
                case "DOLL":
                    $("h4").text("All Doll Soft Toys...");
                    var activeBtn = document.getElementById(f);
                    activeBtn.className += " filter-btn-active";
                    break;
                case "INTERACTIVE":
                    $("h4").text("All Interactive Soft Toys...");
                    var activeBtn = document.getElementById(f);
                    activeBtn.className += " filter-btn-active";
            }
        }
    </script>

    <c:import url="/includes/footer.jsp" />