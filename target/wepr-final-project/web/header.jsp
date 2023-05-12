<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
   <div class="offcanvas__option">
      <div class="offcanvas__links">
         <c:if test="${sessionScope.userLogged == null}">
            <a href="${pageContext.request.contextPath}/login">Sign in</a>
         </c:if>
         <c:if test="${sessionScope.userLogged != null}">
            <a href="${pageContext.request.contextPath}/logout">Sign out</a>
         </c:if>o
      </div>
   </div>
   <div class="offcanvas__nav__option">
      <a href="#" class="search-switch"><img src="${pageContext.request.contextPath}/web/assets/img/icon/search.png" alt=""></a>
      <a href="${pageContext.request.contextPath}/cart"><img src="${pageContext.request.contextPath}/web/assets/img/icon/cart.png" alt=""> <span>0</span></a>
   </div>
   <div id="mobile-menu-wrap"></div>
   <div class="offcanvas__text">
      <p>Free shipping, 30-day return or refund guarantee.</p>
   </div>
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header">
   <div class="header__top">
      <div class="container">
         <div class="row">
            <div class="col-lg-6 col-md-7">
               <div class="header__top__left">
                  <p>Free shipping, 30-day return or refund guarantee.</p>
               </div>
            </div>
            <div class="col-lg-6 col-md-5">
               <div class="header__top__right">
                  <div class="header__top__links">
                     <c:if test="${sessionScope.userLogged == null}">
                        <a href="${pageContext.request.contextPath}/login">Sign in</a>
                     </c:if>
                     <c:if test="${sessionScope.userLogged != null}">
                        <a href="${pageContext.request.contextPath}/logout">Sign out</a>
                     </c:if>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="container">
      <div class="row">
         <div class="col-lg-3 col-md-3">
            <div class="header__logo">
               <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/web/assets/img/logo.png" alt=""></a>
            </div>
         </div>
         <div class="col-lg-6 col-md-6">
            <nav class="header__menu mobile-menu">
               <ul>
                  <li id="menu-home"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                  <li id="menu-shop"><a href="${pageContext.request.contextPath}/shop">Shop</a></li>
                  <li id="menu-contact"><a href="${pageContext.request.contextPath}/web/contact.jsp">Contacts</a></li>
               </ul>
            </nav>
         </div>
         <div class="col-lg-3 col-md-3">
            <div class="header__nav__option">
               <a href="#" class="search-switch"><img src="${pageContext.request.contextPath}/web/assets/img/icon/search.png" alt=""></a>
               <a href="${pageContext.request.contextPath}/cart"><img src="${pageContext.request.contextPath}/web/assets/img/icon/cart.png" alt=""></a>
               <c:if test="${sessionScope.userLogged != null}">
                  <a href="${pageContext.request.contextPath}/profile"><img id="user-img" src="${sessionScope.userLogged.image}" style="width: 24px; height: 24px; border-radius: 12px;" alt=""></a>
               </c:if>
            </div>
         </div>
      </div>
      <div class="canvas__open"><i class="fa fa-bars"></i></div>
   </div>
</header>
<script>
   document.getElementById('user-img').onerror = (e) => {
      const defaultImgUrl = location.origin + '/web/assets/img/default-user-img.png';
      e.target.setAttribute('src', defaultImgUrl);
   }
</script>
<!-- Header Section End -->