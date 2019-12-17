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

        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

        <!-- Demo scripts for this page-->
        <script src="js/demo/chart-area-demo.js"></script>
        <script src="js/demo/chart-bar-demo.js"></script>
        <script src="js/demo/chart-pie-demo.js"></script>

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
            <span class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Soft Bambino</span>
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
                                <a class="nav-link active" href="dashboard.jsp">
                                    <span data-feather="home"></span>
                                    Dashboard <span class="sr-only">(current)</span>
                                </a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link collapsed" href="#submenu2" data-toggle="collapse" data-target="#submenu2">Users</a>
                                <div class="collapse" id="submenu2" aria-expanded="false">
                                    <ul class="flex-column pl-2 nav">
                                        <li class="nav-item"><a class="nav-link py-0" href="addUser.jsp">Add User</a></li>
                                        <li class="nav-item"><a class="nav-link py-0" href="UserManagerServlet?action=VIEW">View/Edit Users</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link collapsed" href="#submenu" data-toggle="collapse" data-target="#submenu">Products</a>
                                <div class="collapse" id="submenu" aria-expanded="false">
                                    <ul class="flex-column pl-2 nav">
                                        <li class="nav-item"><a class="nav-link py-0" href="addProduct.jsp">Add Products</a></li>
                                        <li class="nav-item"><a class="nav-link py-0" href="ProductManagerServlet?action=VIEW">View/Edit Products</a></li>
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
                        <h1 class="h2">Dashboard</h1>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="card p-3 bg-warning"
                                 <h2>Total Orders</h2>
                                <h5>10,000</h5>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card p-3  bg-info"
                                 <h2>Total Revenue</h2>
                                <h5>&#8364; 150,000</h5>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card p-3 bg-success"
                                 <h4>Total Profit</h4>
                                <h5>&#8364; 101,000</h5>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card p-3  bg-danger"
                                 <h4>Total Customers</h4>
                                <h5>100</h5>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-5 mb-5">
                        <div class="col-md-12 mb-5">
                            <canvas id="line-chart" class="" width="900" height="380"></canvas>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <canvas id="bar-chart-horizontal" width="450" height="300"></canvas>
                        </div>
                        <div class="col-md-6">
                            <canvas id="doughnut-chart" width="800" height="450"></canvas>
                        </div>
                    </div>

                </main>
            </div>
        </div>
        <script>
//                        https://tobiasahlin.com/blog/chartjs-charts-to-get-you-started/
            new Chart(document.getElementById("line-chart"), {
                type: 'line',
                data: {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    datasets: [{
                            data: [82, 86, 88, 90, 92, 91, 86, 84, 83, 87, 95, 101],
                            label: "Sales Profit",
                            borderColor: "#8e5ea2",
//                              fill: false
                        }
                    ]
                },
                options: {
                    title: {
                        display: true,
                        text: 'Sales Profit (in Thousands)'
                    }
                }
            });

            new Chart(document.getElementById("doughnut-chart"), {
                type: 'doughnut',
                data: {
                    labels: ["Active", "Passive"],
                    datasets: [
                        {

                            backgroundColor: ["#17a2b8", "#c45850"],
                            data: [70, 30]
                        }
                    ]
                },
                options: {
                    title: {
                        display: true,
                        text: 'Number of Active Users vs Passive Users'
                    }
                }
            });

            new Chart(document.getElementById("bar-chart-horizontal"), {
                type: 'bar',
                data: {
                    labels: ["Product 1", "Product 2", "Product 3", "Product 4", "Product 5"],
                    datasets: [
                        {
                            label: "Units Sold",
                            backgroundColor: ["#ffc107", "#8e5ea2", "#17a2b8", "#28a745", "#c45850"],
                            data: [500, 350, 300, 285, 225]
                        }
                    ]
                },
                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: 'Top 5 Performing Product'
                    }
                }
            });
        </script> 
    </body>
</html>