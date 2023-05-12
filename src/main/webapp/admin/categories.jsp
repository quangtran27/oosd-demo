<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
  <div class="layout-container">
    <jsp:include page="${pageContext.request.contextPath}/admin/menu.jsp" />
    <!-- Layout container -->
    <div class="layout-page">
      <jsp:include page="${pageContext.request.contextPath}/admin/navbar.jsp" />
      <!-- Content wrapper -->
      <div class="content-wrapper">
        <div class="container-xxl flex-grow-1 container-p-y">
          <h4 class="py-3 mb-4">
            <a href="${pageContext.request.contextPath}/index.jsp">Managements > </a>
            <span class="fw-bold">Categories</span>
          </h4>
          <div class="card">
            <h5 class="card-header d-flex justify-content-between">
              <span>Categories</span>
              <p class="text-${message.type}" style="font-size: 16px; font-weight: 400;">${message.body}</p>
            </h5>
            <div class="table-responsive text-nowrap">
              <table class="table table-hover" style="table-layout: fixed;">
                <thead>
                <tr>
                  <th style="width: 5%;">Index</th>
                  <th style="width: 25%;">Name</th>
                  <th style="width: 10%;"></th>
                  <th style="width: 10%;"></th>
                </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                <c:forEach items="${categories}" var="category" varStatus="status">
                  <tr>
                    <td>${status.index + 1}</td>
                    <td>
                      <strong>${category.name}</strong>
                    </td>
                    <td><a href="${pageContext.request.contextPath}/admin/category/update?id=${category.id}">Change</a></td>
                    <td>
                      <form
                          onsubmit="return confirm('Are you sure to delete this item?');"
                          action="${pageContext.request.contextPath}/admin/category/delete  "
                          method="post"
                      >
                        <input type="hidden" name="id" value="${category.id}">
                        <button class="text-danger" style="background-color: transparent; border: none;">Delete</button>
                      </form>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              <div class="d-flex justify-content-center my-3">
                <a href="${pageContext.request.contextPath}/admin/category/add" type="submit" class="btn btn-primary">Add news</a>
              </div>
            </div>
          </div>
        </div>
        <jsp:include page="${pageContext.request.contextPath}/admin/footer.jsp" />
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
  // Active menu
  document.getElementById('menu-managements').classList.add('active', 'open')
  document.getElementById('menu-managements-categories').classList.add('active')
</script>
</body>
</html>
