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
        <link rel="stylesheet" href="adminStyle.css">
        <c:import url="/includes/font.jsp" />

        <script type="text/javascript" src="myScript.js"></script>

        <title>Soft Bambino | Add Product</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <link rel="manifest" href="/site.webmanifest">
        
        <script>
            function myFunction()
            {
                console.log("myfuntion")
                document.getElementById("name").value = '${editProduct.getProductName()}';
                document.getElementById("price").value = '${editProduct.getPrice()}';
                document.getElementById("description").value = '${editProduct.getProductDesc()}';
                document.getElementById("category").value = '${editProduct.getProductType()}';
                document.getElementById("ageSuitability").value = '${editProduct.getAgeSuitability()}';
                document.getElementById("stock").value = '${editProduct.getStock()}';
                document.getElementById("image").value = '${editProduct.getImage()}';
            }
        </script>
    </head>
    <body onload="myFunction()">
        <!-- https://github.com/twbs/bootstrap/blob/master/site/content/docs/4.3/examples/dashboard/index.jsp -->
        <nav class="navbar navbar-dark fixed-top navbar-default  flex-md-nowrap p-0 shadow">
            <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Soft Bambino</a>
            <ul class="nav justify-content-end px-3">
                <li class="nav-item">
                    <span class="nav-link">Welcome, ${user.getFirstName()}</span>
                </li>
                <li class="nav-item text-nowrap">

                    <a class="nav-link" href="LogoutServlet">Sign out</a>
                </li>
            </ul>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                    <div class="sidebar-sticky">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" href="dashboard.jsp">
                                    <span data-feather="home"></span>
                                    Dashboard <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ViewUsersServlet">
                                    <span data-feather="users"></span>
                                    Users
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link collapsed" href="#submenu2" data-toggle="collapse" data-target="#submenu2">Products</a>
                                <div class="collapse" id="submenu2" aria-expanded="false">
                                    <ul class="flex-column pl-2 nav">
                                        <li class="nav-item"><a class="nav-link py-0" href="addProduct.jsp">Add Products</a></li>
                                        <li class="nav-item"><a class="nav-link py-0" href="ViewProductsServlet">View/Edit Products</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <span data-feather="users"></span>
                                    Orders
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Edit Product</h1>
                    </div>
                     <c:url var="postUrl" value="/ProductManagerServlet">
                        <c:param name="action" value="UPDATE"/>
                    </c:url>
                    <form action="${postUrl}" method="POST" class="form-full-span needs-validation" novalidate>
                        <input type="hidden" name="id" name="id" value="${editProduct.getId()}">
                        <div class="form-group">
                            <label for="name">Product Name:</label>
                            <input type="name" class="form-control" id="name" name="name" required>
                            <div class="invalid-feedback">
                                Valid name is required.
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name">Product Price:</label>
                            <input type="name" class="form-control" id="price" name="price"   required>
                            <div class="invalid-feedback">
                                Valid price is required.
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="message">Product Description:</label>
                            <textarea class="form-control" id="description" name="description" rows="5" required></textarea>
                            <div class="invalid-feedback">
                                Valid Description is required.
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <label for="category">Category</label>
                                <select class="custom-select d-block w-100" id="category" name="category" required>
                                    <option>Choose...</option>
                                    <option>ANIMAL</option>
                                    <option>SOFT DOLLS</option>
                                    <option>INTERACTIVE</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid category.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="ageSuitability">Product Age</label>
                                <select class="custom-select d-block w-100" id="ageSuitability" name="ageSuitability" required>
                                    <option>Choose...</option>
                                    <option>6 mts</option>
                                    <option>18+ mts</option>
                                    <option>2+ yrs</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid Age Suitability.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="category">Stock</label>
                                <input type="name" class="form-control" id="stock" name="stock" >
                                <div class="invalid-feedback">
                                    Valid stock is required.
                                </div>
                            </div>
                        </div>
                        <!--https://www.w3schools.com/bootstrap4/bootstrap_forms_custom.asp-->
                        <div class="custom-file mb-4">
                            <input type="file" class="custom-file-input" id="image" name="image">
                            <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>


                        <button class="btn btn-secondary btn-lg float-right" type="submit">Update</button>
                    </form>
                </main>
            </div>
        </div>
        <script>
            //Code to add image file name to textbox
            $(".custom-file-input").on("change", function () {
                var fileName = $(this).val().split("\\").pop();
                $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
            });
        </script> 
    </body>
</html>