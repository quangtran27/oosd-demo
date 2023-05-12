<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Male_Fashion Template">
  <meta name="keywords" content="Male_Fashion, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Edit Information</title>

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
            <span>Edit Personal information</span>
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
                  <c:when test="${user.image != null}"><img alt="Image Profile" src="${pageContext.request.contextPath}/${userLogged.image}" class="rounded-circle" style="width: 150px; height: 150px;">
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
            <form class="card-body" method="post" action="update-profile" enctype="multipart/form-data">
              <div class="row mb-3">
                <div class="col-sm-9 text-secondary">
                  <input type="hidden" class="form-control" id="user-name" name="username" disabled value="${userLogged.username}">
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-sm-3">
                  <h6 class="mb-0">Full name</h6>
                </div>
                <div class="col-sm-9 text-secondary">
                  <input type="text" class="form-control" id="customer-name" name="name" value="${userLogged.name}">
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-sm-3">
                  <h6 class="mb-0">Phone</h6>
                </div>
                <div class="col-sm-9 text-secondary">
                  <input type="text" class="form-control" id="phone" name="phone" value="${userLogged.phone}">
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-sm-3">
                  <h6 class="mb-0">Email</h6>
                </div>
                <div class="col-sm-9 text-secondary">
                  <input type="email" class="form-control" id="email" name="email" value="${userLogged.email}">
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-sm-3">
                  <h6 class="mb-0">Gender</h6>
                </div>
                <div class="col-sm-9 text-secondary">
                  <input type="text" class="form-control" id="customer-sex" name="sex" value="${userLogged.gender}">
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-sm-3">
                  <h6 class="mb-0">Address</h6>
                </div>
                <div class="col-sm-9 text-secondary">
                  <input type="text" class="form-control" id="customer-address" name="address" value="${userLogged.address}">
                </div>
              </div>
              <div class="row mb-3">
                <label class="col-sm-3 col-form-label" for="image">Choose image</label>
                <div class="col-sm-9">
                  <input
                          accept="image/png, image/gif, image/jpeg"
                          class="form-control"
                          id="image"
                          name="image"
                          type="file"
                  />
                  <img
  <%--              alt="Preview Product Image"--%>
                    class="img-thumbnail mt-3"
                    id="preview-img"
                    style="width: 200px;"
                    src="${pageContext.request.contextPath}/${userLogged.image}"
                  >
                </div>
              </div>
              <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-9 text-secondary">
                  <button type="submit" class="submit btn btn-info">Save change</button>
                </div>
              </div>
            </form>
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
  // Preview image before upload
  const imgInput = document.getElementById("image")
  const previewImage = document.getElementById("preview-img")
  imgInput.onchange = (e) => {
    const [file] = imgInput.files
    if (file) {
      previewImage.src = URL.createObjectURL(file)
    }
  }
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