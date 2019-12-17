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

        <title>Soft Bambino | Admin Dashboard</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <link rel="manifest" href="/site.webmanifest">
    </head>
    <body>
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
                        <h1 class="h2">Add User</h1>
                    </div>
                    <div>
                        <c:url var="postUrl" value="/UserManagerServlet">
                        <c:param name="action" value="ADD"/>
                    </c:url>
                        <form action="${postUrl}" method="POST" class="needs-validation" novalidate>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="firstName">First name</label>
                                    <input type="text" class="form-control" name="firstName" required>
                                    <div class="invalid-feedback">
                                        Valid first name is required.
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="lastName">Last name</label>
                                    <input type="text" class="form-control" name="lastName" required>
                                    <div class="invalid-feedback">
                                        Valid last name is required.
                                    </div>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" name="email" required>
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>
                            
                             <div class="mb-3">
                                <label for="email">Password</label>
                                <input type="password" class="form-control" name="pword"  required>
                                <div class="invalid-feedback">
                                    Please enter a valid password.
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="address">Address</label>
                                <input type="text" class="form-control" name="address" required>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="address2">Address 2</label> 
                                <input type="text" class="form-control" name="address2" required>
                            </div>

                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="state">County</label>
                                    <select class="custom-select d-block w-100" name="county" required>
                                        <option selected>Choose...</option>
                                        <option>Kerry</option>
                                        <option>Dublin</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please provide a valid county/state.
                                    </div>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="country">Country</label>
                                    <select class="custom-select d-block w-100" name="country" required>
                                        <option selected>Choose...</option>
                                        <option>Ireland</option>
                                        <option>Ireland</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a valid country.
                                    </div>
                                </div>

                                <div class="col-md-3 mb-3">
                                    <label for="zip">Postal Code</label>
                                    <input type="text" class="form-control" name="postalCode" required>
                                    <div class="invalid-feedback">
                                        Postal code required.
                                    </div>
                                </div>
                                
                           
                            
                            <div class="col-md-3 mb-3">
                                    <label for="country">User Type</label>
                                    <select class="custom-select d-block w-100" name="userType" required>
                                        <option>ADMIN</option>
                                        <option>GENUSER</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a valid country.
                                    </div>
                            </div>
 </div>
                            <div class="col-md-3 mb-3 custom-control custom-switch ">
                                <input type="checkbox" class="custom-control-input" name="isDisabled">
                                <label class="custom-control-label" for="isDisabled">Disable</label>
                            </div>

                            <button class="btn btn-secondary btn-lg float-right" type="submit">Add</button>
                        </form>
                    </div>
                </main>
            </div>
        </div>

    </body>
</html>
