<%-- 
    Document   : navbar
    Created on : 14-Nov-2019, 09:34:41
    Author     : ciano
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md navbar-default navbar-dark fixed-top">
    <!-- Brand -->
    <a class="navbar-brand" id="nav-link" href="index.jsp"">
        <img src="images/favicon-32x32.png" alt="Logo" >
    </a>


    <!-- Toggler/collapsibe Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <!-- Dropdown -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Shop</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="ProductsServlet?filter=all"> Shop All</a> 
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="ProductsServlet?filter=ANIMAL">Animals</a>
                    <a class="dropdown-item" href="ProductsServlet?filter=DOLL">Soft Dolls</a>
                    <a class="dropdown-item" href="ProductsServlet?filter=INTERACTIVE">Interactive Toys</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact</a>
            </li>
        </ul>

        <div class=>
        <form class="form-inline align-items-center my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        </div>

        <ul class="navbar-nav ml-auto mr-2">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> <i class="fa fa-user-o fa-lg icon" aria-hidden="true"></i></a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="login.jsp">Log in</a> 
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="LogoutServlet">Log out</a>
                </div>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link" href="CartServlet?action=VIEW">
                    <i class="fa fa-shopping-bag fa-lg icon" aria-hidden="true"><span class=""></span></i>
                </a>
            </li>
        </ul>
    </div>
</nav>
