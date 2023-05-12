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
   <title>Male-Fashion</title>
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
</head>

<body>
<jsp:include page="header.jsp" />

<section class="hero">
   <div class="hero__slider owl-carousel">
      <div class="hero__items set-bg" data-setbg="${pageContext.request.contextPath}/web/assets/img/hero/hero-1.jpg">
         <div class="container">
            <div class="row">
               <div class="col-xl-5 col-lg-7 col-md-8">
                  <div class="hero__text">
                     <h6>All Collection</h6>
                     <h2>ONLY THE FINEST</h2>
                     <p>At Male-Fashion we give fashion forward men, quick access to the finest, premium-quality, designer clothes for men.</p>
                     <a href="${pageContext.request.contextPath}/shop" class="primary-btn">Shop now <span class="arrow_right"></span></a>
                     <div class="hero__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>

<section class="product spad mt-5">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <ul class="filter__controls">
               <li class="active" data-filter=".hot-sales">Best Sellers</li>
               <li data-filter=".new-arrivals">New Arrivals</li>
            </ul>
         </div>
      </div>
      <div class="row product__filter">
         <c:forEach items="${bestsellers}" var="product">
            <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales mb-5">
               <a class="product__item" href="shop-details?id=${product.id}&CategoryID=${product.category.id}">
                  <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${product.image}">
                     <span class="label text-white bg-danger">Hot</span>
                  </div>
                  <div class="product__item__text">
                     <h6>${product.name}</h6>
                     <c:if test="${product.discount != 0}">
                        <h5>$${product.discount} <span>$${product.price}</span></h5>
                     </c:if>
                     <c:if test="${product.discount == 0}">
                        <h5>$${product.price}</h5>
                     </c:if>
                  </div>
               </a>
            </div>
         </c:forEach>
         <c:forEach items="${newArrivals}" var="product">
            <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals mb-5">
               <a class="product__item" href="shop-details?id=${product.id}&CategoryID=${product.category.id}">
                  <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${product.image}">
                     <span class="label">New</span>
                  </div>
                  <div class="product__item__text">
                     <h6>${product.name}</h6>
                     <c:if test="${product.discount != 0}">
                        <h5>$${product.discount} <span>$${product.price}</span></h5>
                     </c:if>
                     <c:if test="${product.discount == 0}">
                        <h5>$${product.price}</h5>
                     </c:if>
                  </div>
               </a>
            </div>
         </c:forEach>
      </div>
   </div>
</section>

<jsp:include page="footer.jsp" />

<div class="search-model">
   <div class="h-100 d-flex align-items-center justify-content-center">
      <div class="search-close-switch">+</div>
      <form class="search-model-form">
         <input type="text" id="search-input" placeholder="Search here.....">
      </form>
   </div>
</div>

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
<script>
   window.addEventListener('load', () => {
      document.getElementById('menu-home').classList.add('active')
      document.querySelector('.filter__controls li.active').click()
   })
</script>
</body>

</html>