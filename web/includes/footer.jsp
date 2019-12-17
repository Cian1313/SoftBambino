<%-- 
    Document   : footer
    Created on : 13-Nov-2019, 20:22:35
    Author     : ciano
--%>
<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%  
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
            <!-- Footer -->
	
            <div class="container-fluid footer ">
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
                        <p class="h6">&copy; Copyright <%= currentYear %> ACME Trading Company trading as<a class="link-default ml-2" href="index.jsp"  target="_blank">Soft Bambino</a></p>
                    </div>
                    </hr>
                </div>	
            </div>
       
    </body>
</html>
