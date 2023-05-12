<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Male_Fashion Template">
  <meta name="keywords" content="Male_Fashion, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Male-Fashion | Checkout</title>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
        rel="stylesheet">

  <!-- Css Styles -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/web/assets/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/web/assets/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/web/assets/css/elegant-icons.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/web/assets/css/magnific-popup.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/web/assets/css/nice-select.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/web/assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/web/assets/css/slicknav.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/web/assets/css/style.css" type="text/css">

  <style>
    input {
       color: black !important;
    }
  </style>
</head>

<body>
<!-- Header Section Begin-->
<jsp:include page="header.jsp" />
<!-- Header Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__text">
          <h4>Check Out</h4>
          <div class="breadcrumb__links">
            <a href="${pageContext.request.contextPath}/home">Home</a>
            <a href="${pageContext.request.contextPath}/shop">Shop</a>
            <span>Check Out</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
  <div class="container">
    <div class="checkout__form">
      <form action="${pageContext.request.contextPath}/order/add" method="post" id="checkout-form">
        <div class="row">
          <div class="col-lg-6 col-md-6">
            <h6 class="checkout__title">Billing Details</h6>
            <div class="checkout__input">
              <p>Full Name <span>*</span></p>
              <input type="text" name="name" required value="${user.name}">
            </div>
            <div class="checkout__input">
              <p>Phone <span>*</span></p>
              <input type="text" name="phone" required value="${user.phone}">
            </div>
            <div class="checkout__input">
              <p>Address <span>*</span></p>
              <input type="text" name="address" required value="${user.address}">
            </div>
            <div class="checkout__input">
              <p>Email <span>*</span></p>
              <input type="email" name="email" value="${user.email}" required>
            </div>
            <div class="checkout__input">
              <p>Order notes </p>
              <input type="text" name="note" placeholder="Notes about your order, e.g. special notes for delivery.">
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
            <div class="checkout__order">
              <h4 class="order__title">Your order</h4>
              <div class="checkout__order__products">Product <span>Total</span></div>
              <ul class="checkout__total__products">
                <c:forEach items="${cartItems}" var="cartItem">
                  <li class="order-item">
                    <input type="hidden" name="cartItem" value="${cartItem.id}">
                      ${cartItem.quantity} x ${cartItem.product.name}
                    <span>
                        ${cartItem.product.discount == 0 ? cartItem.product.price * cartItem.quantity : cartItem.product.discount * cartItem.quantity}
                    </span>
                  </li>
                </c:forEach>
              </ul>
              <ul class="checkout__total__all">
                <input type="hidden" name="total">
                <li>Total <span style="font-size: 18px; font-weight: 800;" id="total"></span></li>
              </ul>
              <div class="checkout__input__checkbox">
                <h5 class="mb-4">Mode of payment</h5>
                <label for="cod">
                  COD
                  <input type="radio" name="payment-mode" value="cod" id="cod" required checked>
                  <span class="checkmark"></span>
                </label>
              </div>
              <div class="checkout__input__checkbox">
                <label for="banking">
                  Banking
                  <input type="radio" name="payment-mode" value="banking" id="banking" required>
                  <span class="checkmark"></span>
                </label>
              </div>
              <button type="submit" class="site-btn">PLACE ORDER</button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp" />
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
  <div class="h-100 d-flex align-items-center justify-content-center">
    <div class="search-close-switch">+</div>
    <form class="search-model-form">
      <input type="text" id="search-input" placeholder="Search here.....">
    </form>
  </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="${pageContext.request.contextPath}/web/assets/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/web/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/web/assets/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/web/assets/js/jquery.nicescroll.min.js"></script>
<script src="${pageContext.request.contextPath}/web/assets/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/web/assets/js/jquery.countdown.min.js"></script>
<script src="${pageContext.request.contextPath}/web/assets/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/web/assets/js/mixitup.min.js"></script>
<script src="${pageContext.request.contextPath}/web/assets/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/web/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath}/web/assets/js/checkout.js"></script>
</body>

</html>