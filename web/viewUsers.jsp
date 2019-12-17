<%@page import="model.User"%>
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
        <link rel="stylesheet" href="adminStyle.css">
        <c:import url="/includes/font.jsp" />

        <script type="text/javascript" src="myScript.js"></script>
        <script>
            //funciton to search users based on user name
            function myFunction() {
                // Declare variables
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");

                // Loop through all table rows, and hide those who don't match the search query
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[1];
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
        </script>
    </script>

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
                            <a class="nav-link active" href="ViewUsersServlet">
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
                    <h1 class="h2">All Users</h1>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1"><i class="fa fa-search" aria-hidden="true"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Enter Name..." aria-label="Name" aria-describedby="basic-addon1" id="myInput" onkeyup="myFunction()">
                </div>
                <div>
                    <div class="table-responsive">
                        <table class="table table-striped table-sm" id="myTable">
                            <thead>
                                <tr>
                                    <th>User ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Type</th>
                                    <th class="text-center">View / Edit</th>
                                    <th class="text-center">Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${SKALLUSERS}" var="tempuser">  
                                    <%--<%! int name = ${tempuser.getFirstName()} + ${tempuser.getLastName()}; %>--%>
                                    <tr>
                                        <td scope="row"><c:out value="${tempuser.getId()}"/></td>
                                        <td>${tempuser.getFirstName()} ${tempuser.getLastName()}</td>
                                        <td>${tempuser.getEmail()}</td>
                                        <td>${tempuser.getUserType()}</td>
                                        <%--<c:set var = "id" scope = "request" value = "${tempuser.getId()}"/>--%>
                                        <td class="text-center"><a href="UserManagerServlet?action=EDIT&email=${tempuser.getEmail()}" class="text-dark"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                                        <td class="text-center"><a href="UserManagerServlet?action=DELETE&id=${tempuser.getId()}" class="text-dark"><i class="fa fa-times" aria-hidden="true"></i></a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
        </div>
    </div>

</body>
</html>

<!--https://www.w3schools.com/howto/howto_js_filter_table.asp-->
