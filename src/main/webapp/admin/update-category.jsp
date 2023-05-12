<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
  <title>Managements | Categories</title>
  <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/admin/assets/img/favicon/favicon.ico" />
  <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/vendor/fonts/boxicons.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/vendor/css/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/demo.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/vendor/libs/apex-charts/apex-charts.css" />
  <script src="${pageContext.request.contextPath}/admin/assets/vendor/js/helpers.js"></script>
  <script src="${pageContext.request.contextPath}/admin/assets/js/config.js"></script>
</head>
<body>
<div class="layout-wrapper layout-content-navbar">
  <div class="layout-container">
    <jsp:include page="${pageContext.request.contextPath}/admin/menu.jsp" />

    <div class="layout-page">
      <jsp:include page="${pageContext.request.contextPath}/admin/navbar.jsp" />
      <div class="content-wrapper">

        <div class="container-xxl flex-grow-1 container-p-y">
          <h4 class="py-3 mb-4">
            <a href="${pageContext.request.contextPath}/admin">Managements > </a>
            <a href="${pageContext.request.contextPath}/admin/category">Categories ></a>
            <span class="fw-bold">Details</span>
          </h4>

          <div class="row">
            <div class="col-xxl">
              <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                  <h5 class="mb-0">Update Category Details</h5>
                  <a
                      href="${pageContext.request.contextPath}/admin/category"
                      class="btn btn-outline-primary"
                  >
                    Back
                  </a>
                </div>
                <div class="card-body">
                  <form
                      method="post"
                      action="${pageContext.request.contextPath}/admin/category/${action}"
                  >
                    <div class="row mb-3">
                      <input type="hidden" name="id" value="${category.id}">
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="category-name">Name</label>
                      <div class="col-sm-10">
                        <input
                            class="form-control"
                            id="category-name"
                            name="name"
                            placeholder="Category name"
                            required
                            type="text"
                            value="${category.name}"
                        />
                      </div>
                    </div>
                    <div class="row justify-content-end">
                      <div class="col-sm-10" style="text-align: end;">
                        <button type="submit" class="btn btn-primary">SAVE</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- / Content -->
        <jsp:include page="${pageContext.request.contextPath}/admin/footer.jsp" />
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
<script src="${pageContext.request.contextPath}/admin/assets/vendor/libs/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/vendor/libs/popper/popper.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/vendor/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/vendor/js/menu.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/js/main.js"></script>

<script>
  // Active menu item
  document.getElementById('menu-managements').classList.add('active', 'open')
  document.getElementById('menu-managements-categories').classList.add('active')
</script>
</body>
</html>
