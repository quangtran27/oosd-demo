<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Male_Fashion Template">
  <meta name="keywords" content="Male_Fashion, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Edit password</title>

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
          <h4>Personal information</h4>
          <div class="breadcrumb__links">
            <a href="index.jsp">Home</a>
            <span>Change Password</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Contact Section Begin -->
<div class="container">
  <div class="spad">
    <div class="row">
      <div class="col-md-4 mb-3">
        <div class="card">
          <div class="card-body">
            <div class="d-flex flex-column align-items-center text-center" id="profile-head">
              <c:choose>
                <c:when test="${user.image != null}">
                  <img alt="Image Profile" src="${pageContext.request.contextPath}/${user.image}" class="rounded-circle" style="width: 150px; height: 150px;">
                </c:when>
                <c:otherwise><img src="${pageContext.request.contextPath}/web/assets/img/profile/no-avartar.png" alt="Admin" class="rounded-circle" width="150"></c:otherwise>
              </c:choose>
              <div class="mt-3">
                <h4>${userLogged.name}</h4>
                <p class="text-muted font-size-sm">${userLogged.address}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-8">
      <div class="card">
        <form class="card-body" method="post" action="change-password">
          <div class="row mb-3">
            <div class="col-sm-3">
<%--              <h6 class="mb-0">Username</h6>--%>
            </div>
            <div class="col-sm-9 text-secondary">
              <input type="hidden" class="form-control" id="username" name="username" value="${userLogged.username}">
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-sm-3">
              <h6 class="mb-0">Present password</h6>
            </div>
            <div class="col-sm-9 text-secondary">
              <input type="password" class="form-control" id="password-old" name="password-old">
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-sm-3">
              <h6 class="mb-0">New password</h6>
            </div>
            <div class="col-sm-9 text-secondary">
              <input type="password" class="form-control" id="password-new" name="password-new">
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-sm-3">
              <h6 class="mb-0">Re-enter new password</h6>
            </div>
            <div class="col-sm-9 text-secondary">
              <input type="password" class="form-control" id="password-retype" name="password-retype">
            </div>
          </div>
          <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-9 text-secondary">
              <button type="submit" class="submit btn btn-info">Save change</button>
            </div>
          </div>
        </form>
        <c:if test="${message != null}">
          <div class="col-sm-12 d-flex justify-content-end my-3">
            <p class="text-${message.type}">${message.body}</p>
          </div>
        </c:if>
      </div>
    </div>
  </div>
</div>
</div>

<!-- Contact Section End -->

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

<!-- Active menu -->
<script>
  document.getElementById('menu-contact').classList.add('active')
</script>

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
</body>

</html>