<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
  <title>Managements | Orders</title>
  <link rel="icon" type="image/x-icon" href="./assets/img/favicon/favicon.ico" />
  <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="./assets/vendor/fonts/boxicons.css" />
  <link rel="stylesheet" href="./assets/vendor/css/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="./assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="./assets/css/demo.css" />
  <link rel="stylesheet" href="./assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
  <link rel="stylesheet" href="./assets/vendor/libs/apex-charts/apex-charts.css" />
  <script src="./assets/vendor/js/helpers.js"></script>
  <script src="./assets/js/config.js"></script>
</head>
<body>
<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
  <div class="layout-container">
    <jsp:include page="./menu.jsp" />
    <!-- Layout container -->
    <div class="layout-page">
      <jsp:include page="./navbar.jsp" />
      <!-- Content wrapper -->
      <div class="content-wrapper">
        <!-- Content -->
        <div class="container-xxl flex-grow-1 container-p-y">
          <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Managements/Account/</span> Details</h4>
          <!-- Basic Layout & Basic with Icons -->
          <div class="row">
            <!-- Basic Layout -->
            <div class="col-xxl">
              <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                  <h5 class="mb-0">Update Account Details</h5>
                  <a href="./account" class="btn btn-outline-primary">Back</a>
                </div>
                <div class="card-body">
                  <form action="EditUser" method="post">
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label">username</label>
                      <div class="col-sm-10">
                        <span class="form-control">${user.username}</span>
                        <input type="hidden"  name="username" value=${user.username}>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label">password</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="password" id="account-password" value="${user.password}" placeholder="Password"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label">Customer</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="name" id="account-name" value="${user.name}" placeholder="Name"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label"  for="order-phone">PHONE</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="phone" id="order-phone" value="${user.phone}" placeholder="Phone"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="order-address">Address</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="address" id="order-address" value="${user.address}" placeholder="Address"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <c:if test="${message != null && !message.isEmpty()}">
                        <div class="col-sm-12 d-flex justify-content-end my-3">
                          <p class="text-${messageType}">${message}</p>
                        </div>
                      </c:if>
                    </div>
                    <div class="row justify-content-end">
                      <div class="col-sm-10" style="text-align: end;">
                        <button type="submit" class="btn btn-primary" ><a>SAVE</a></button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- / Content -->

        <jsp:include page="./footer.jsp" />

        <div class="content-backdrop fade"></div>
      </div>
      <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->
  </div>

  <!-- Overlay -->
  <div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->

<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="./assets/vendor/libs/jquery/jquery.js"></script>
<script src="./assets/vendor/libs/popper/popper.js"></script>
<script src="./assets/vendor/js/bootstrap.js"></script>
<script src="./assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="./assets/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->

<!-- Main JS -->
<script src="./assets/js/main.js"></script>

<script>
  // Active Menu Item
  document.getElementById('menu-managements').classList.add('active', 'open')
  document.getElementById('menu-managements-account').classList.add('active')
</script>
<script>
  function red(){
    window.location.replace('/admin');
  }
</script>
</body>
</html>

