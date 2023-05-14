<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
  <title>Managements | Products</title>
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
  <style>
     th {
        padding: 10px !important;
     }
     td {
        padding: 10px !important;
     }
     tr td:nth-child(3) {
        overflow: hidden;
        text-overflow: ellipsis;
     }
  </style>
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
        <div class="container-xxl flex-grow-1 container-p-y">
          <h4 class="py-3 mb-4">
            <a href="${pageContext.request.contextPath}/admin">Managements > </a>
            <span class="fw-bold">Products</span>
          </h4>
          <div class="card">
            <h5 class="card-header">Products</h5>
            <div class="table-responsive text-nowrap">
              <table class="table table-hover" style="table-layout: fixed;">
                <thead>
                <tr>
                  <th style="width: 6%">Index</th>
                  <th style="width: 10%">Category</th>
                  <th style="width: 20%">Name</th>
                  <th style="width: 5%">Size</th>
                  <th style="width: 8%">Color</th>
                  <th style="width: 10%">Brand</th>
                  <th style="width: 5%">Qty</th>
                  <th style="width: 12%">Price</th>
                  <th style="width: 8%">Sale Price</th>
                  <th style="width: 8%">Available</th>
                  <th style="width: 8%"></th>
                  <th style="width: 8%"></th>
                </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                <c:forEach items="${products}" var="product" varStatus="status">
                  <tr>
                    <td>${status.index + 1}</td>
                    <td>${product.category.name}</td>
                    <td><strong>${product.name}</strong></td>
                    <td>${product.size}</td>
                    <td>${product.color}</td>
                    <td>${product.brand}</td>
                    <td>${product.quantity}</td>
                    <td>${product.price}</td>
                    <td>${product.salePrice}</td>
                    <td>${product.available}</td>
                    <td>
                      <a href="<%request.getContextPath();%>/admin/product/update?id=${product.id}">Change</a>
                    </td>
                    <td>
                      <form
                          onsubmit="return confirm('Are you sure to delete this item?');"
                          action="<%request.getContextPath();%>/admin/product/delete"
                          method="post"
                      >
                        <input type="hidden" name="id" value="${product.id}">
                        <button
                            class="text-danger"
                            style="background-color: transparent; border: none;"
                        >
                          Delete
                        </button>
                      </form>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              <div class="d-flex justify-content-center my-3">
                <a href="${pageContext.request.contextPath}/admin/products/add" type="submit" class="btn btn-primary">Add new</a>
              </div>
            </div>
          </div>
        </div>

        <jsp:include page="./footer.jsp" />
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
<!-- end-build -->

<!-- Main JS -->
<script src="./assets/js/main.js"></script>

<!-- Page JS -->
<!-- Active Menu Item -->
<script>
  document.getElementById('menu-managements').classList.add('active', 'open')
  document.getElementById('menu-managements-products').classList.add('active')
</script>
</body>
</html>
