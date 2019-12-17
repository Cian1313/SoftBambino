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
        <script type="text/javascript" src="myScript.js"></script>

        <title>Soft Bambino | Checkout</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <link rel="manifest" href="/site.webmanifest">
    </head>

    <body class="bg  body-nav-buffer">
        <!-- Navbar  -->
        <c:import url="/includes/navbar.jsp" />


        <!-- Main -->
        <div class="container">
            <div class="row row justify-content-center">
                <h2>Checkout</h2>
            </div>
            <div class="row">
                <!--#region Shopping Cart  -->

                <div class="col-md-4 order-md-2 mb-4">
                    <h4 class="mb-3">Shopping Cart</h4>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col" class="border-0 ">
                                    <div class=" text-uppercase">Product</div>
                                </th>
                                <th scope="col" class="border-0 ">
                                    <div class=" text-uppercase">Unit Price</div>
                                </th>
                                <th scope="col" class="border-0 ">
                                    <div class="text-uppercase">Quantity</div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">
                                    <div class="">
                                        <img src="images/bear-product-1.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">

                                    </div>
                                </th>
                                <td class="align-middle"><strong>&#8364; 20.99</strong></td>
                                <td class="align-middle text-center"><strong>2</strong></td>

                            </tr>
                            <tr>
                                <th scope="row">
                                    <div class="">
                                        <img src="images/soft-animal-2.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">

                                    </div>
                                </th>
                                <td class="align-middle"><strong>&#8364; 12.99</strong></td>
                                <td class="align-middle text-center"><strong>1</strong></td>

                            </tr>
                            <tr>
                                <th scope="row">
                                    <div class="">
                                        <img src="images/soft-animal-3.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">

                                    </div>
                                <td class="align-middle"><strong>&#8364; 14.99</strong></td>
                                <td class="align-middle text-center"><strong>1</strong></td>

                            </tr>
                        </tbody>
                    </table>



                    <div class="p-2">
                        <ul class="list-unstyled mb-4">
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order Subtotal </strong><strong>&#8364;48.97</strong></li>
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Shipping and handling</strong><strong>&#8364;3.99</strong></li>
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                                <h5 class="font-weight-bold">&#8364;52.96</h5>
                            </li>
                    </div>


                    <form class="card p-2">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Promo code">
                            <div class="input-group-append" id="btn-contrast">
                                <button type="submit" class="btn btn-contrast">Redeem</button>
                            </div>
                        </div>
                    </form>


                </div>
                <!--endregion-->

                <div class="col-md-8 order-md-1">
                    <h4 class="mb-3">Billing address</h4>
                    <form class="needs-validation" novalidate>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="firstName">First name</label>
                                <input type="text" class="form-control" id="firstName" placeholder="John"  required>
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="lastName">Last name</label>
                                <input type="text" class="form-control" id="lastName" placeholder="Doe"  required>
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" placeholder="johndoe@example.com" required>
                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address">Address</label>
                            <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
                            <div class="invalid-feedback">
                                Please enter your shipping address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address2">Address 2</label>
                            <input type="text" class="form-control" id="address2" placeholder="Town / City">
                        </div>

                        <div class="row">

                            <div class="col-md-4 mb-3">
                                <label for="state">State</label>
                                <select class="custom-select d-block w-100" id="state" required>
                                    <option value="">Choose...</option>
                                    <option>Kerry</option>
                                    <option>Dublin</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid county/state.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="country">Country</label>
                                <select class="custom-select d-block w-100" id="country" required>
                                    <option value="">Choose...</option>
                                    <option>Ireland</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="zip">Postal Code</label>
                                <input type="text" class="form-control" id="postCode" placeholder="" required>
                                <div class="invalid-feedback">
                                    Postal code required.
                                </div>
                            </div>
                        </div>

                        <hr class="mb-4">
                        <h4 class="mb-3">Delivery Options</h4>
                        <div class="custom-control custom-radio">
                            <input id="standard" name="deliveryMethod" type="radio" class="custom-control-input" checked required>
                            <label class="custom-control-label" for="standard">Standard Delivery - &#8364;3.99</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input id="next_day" name="deliveryMethod" type="radio" class="custom-control-input" required>
                            <label class="custom-control-label" for="next_day">Next Day Delivery - &#8364;5.99</label>
                        </div>
                        <hr class="mb-4">

                        <h4 class="mb-3">Payment</h4>

                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                                <label class="custom-control-label" for="credit">Credit card</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label" for="debit">Debit card</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="cc-name">Name on card</label>
                                <input type="text" class="form-control" id="cc-name" placeholder="" required>
                                <small class="text-muted">Full name as displayed on card</small>
                                <div class="invalid-feedback">
                                    Name on card is required
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="cc-number">Credit card number</label>
                                <input type="text" class="form-control" id="cc-number" placeholder="" required>
                                <div class="invalid-feedback">
                                    Credit card number is required
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <label for="cc-expiration">Expiration</label>
                                <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                                <div class="invalid-feedback">
                                    Expiration date required
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="cc-cvv">CVV</label>
                                <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                                <div class="invalid-feedback">
                                    Security code required
                                </div>
                            </div>
                        </div>
                        <hr class="mb-4">
                        <div id="btn-default">
                            <button class="btn btn-default btn-lg btn-block" type="submit">Complete checkout</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>

        <c:import url="/includes/footer.jsp" />

        <!-- Sources -->
        <!-- https://github.com/twbs/bootstrap/blob/master/site/content/docs/4.3/examples/checkout/index.jsp -->