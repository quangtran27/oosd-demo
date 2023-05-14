<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
          <h4 class="py-3 mb-4">
            <a href="${pageContext.request.contextPath}/admin">Managements > </a>
            <a href="${pageContext.request.contextPath}/admin/product">Products > </a>
            <span class="fw-bold">Details</span>
          </h4>

          <!-- Basic Layout & Basic with Icons -->
          <div class="row">
            <!-- Basic Layout -->
            <div class="col-xxl">
              <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                  <h5 class="mb-0">Update Product Details</h5>
                  <a href="${pageContext.request.contextPath}/admin/products" class="btn btn-outline-primary">Back</a>
                </div>
                <div class="card-body">
                  <form
                      method="post"
                      action="${pageContext.request.contextPath}/admin/products/${action}"
                      enctype="multipart/form-data"
                  >
                    <div class="row mb-3">
                      <div class="col-sm-10">
                        <input class="form-control" id="id" name="id" placeholder="ID" type="hidden" value="${product.id}"/>
                      </div>
                    </div>
                    <c:if test="${action == 'update'}">
                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label" for="available">Status</label>
                        <div class="col-sm-10">
                          <select required type="number" name ="available" class="form-control" id="available">
                            <option value="1" ${product.available == true ? "selected" : ""}>Available</option>
                            <option value="0" ${product.available == false ? "selected" : ""}>Cessation of business</option>
                          </select>
                        </div>
                      </div>
                    </c:if>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="category-id">Category</label>
                      <div class="col-sm-10">
                        <select required id="category-id" name="category-id" class="form-select">
                          <c:forEach var="category" items="${categories}">
                            <option ${product.category.id == category.id ? "selected" : ""} value="${category.id}">
                                ${category.name}
                            </option>
                          </c:forEach>
                        </select>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="name">Name</label>
                      <div class="col-sm-10">
                        <input required type="text" name="name" class="form-control" id="name" placeholder="Name" value="${product.name}"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="image">Images</label>
                      <div class="col-sm-10">
                        <input
                            accept="image/png, image/gif, image/jpeg"
                            class="form-control"
                            id="image"
                            name="image"
                            type="file"
                        ${action == "add" ? "required" : ""}
                        />
                        <img
                            alt="Preview Product Image"
                            class="img-thumbnail mt-3"
                            id="preview-img"
                            style="width: 200px;"
                            src="${pageContext.request.contextPath}/${product.image}"
                        >
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="category-description">Description</label>
                      <div class="col-sm-10">
                        <textarea
                            aria-describedby="basic-icon-default-message2"
                            class="form-control"
                            id="category-description"
                            name="description"
                            placeholder="Enter description"
                            required
                        >${product.description}</textarea>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="price">Price</label>
                      <div class="col-sm-10">
                        <input required type="number" name ="price" class="form-control" id="price" placeholder="Price" value="${product.price}"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="discount">Sale Price</label>
                      <div class="col-sm-10">
                        <input required type="number" name ="salePrice" class="form-control" id="discount" placeholder="Discount" value="${product.discount}"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="quantity">Quantity</label>
                      <div class="col-sm-10">
                        <input required type="number" name ="quantity" class="form-control" id="quantity" placeholder="Quantity" value="${product.quantity}"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="size">Size</label>
                      <div class="col-sm-10">
                        <input type="text" name ="size" class="form-control" id="size" placeholder="Size" value="${product.size}"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="color">Color</label>
                      <div class="col-sm-10">
                        <input required type="text" name ="color" class="form-control" id="color" placeholder="Color" value="${product.color}"/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <label class="col-sm-2 col-form-label" for="brand">Brand</label>
                      <div class="col-sm-10">
                        <input required type="text" name ="brand" class="form-control" id="brand" placeholder="Brand" value="${product.brand}"/>
                      </div>
                      <c:if test="${message != null}">
                        <div class="col-sm-12 d-flex justify-content-end my-3">
                          <p class="text-${messageType}">${message}</p>
                        </div>
                      </c:if>
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
<!-- build:js assets/vendor/js/core.js -->
<script src="${pageContext.request.contextPath}/admin/assets/vendor/libs/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/vendor/libs/popper/popper.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/vendor/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="${pageContext.request.contextPath}/admin/assets/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->

<!-- Main JS -->
<script src="${pageContext.request.contextPath}/admin/assets/js/main.js"></script>

<script>
  // Active Menu Item
  document.getElementById('menu-managements').classList.add('active', 'open')
  document.getElementById('menu-managements-products').classList.add('active')

  // Press Enter to submit form
  document.getElementById('brand').addEventListener('keyup', (e) => {
    if (e.key === 'Enter') {
      e.preventDefault()
      document.querySelector('button[type="submit"]').click()
    }
  })

  // Load default img if error
  let img = document.getElementById('preview-img')
  img.addEventListener('error', (ev) => {
    img.setAttribute('src', "/admin/assets/img/default-product-img.png")
  })

  // Preview image before upload
  const imgInput = document.getElementById("image")
  const previewImage = document.getElementById("preview-img")
  imgInput.onchange = (evt) => {
    const [file] = imgInput.files
    if (file) {
      previewImage.src = URL.createObjectURL(file)
    }
  }
</script>
</body>
</html>