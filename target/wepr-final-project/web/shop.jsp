<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/" var="root"/>

<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Male_Fashion Template">
  <meta name="keywords" content="Male_Fashion, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Male-Fashion | Shop</title>

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
          <h4>Shop</h4>
          <div class="breadcrumb__links">
            <a href="${pageContext.request.contextPath}/home">Home</a>
            <span>Shop</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shop Section Begin -->
<section class="shop spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <div class="shop__sidebar">
          <div class="shop__sidebar__search">
            <form action="" method="get">
              <input name="txtSearch" type="text" placeholder="Search...">
              <button type="submit"><span class="icon_search"></span></button>
            </form>
          </div>
          <div class="shop__sidebar__accordion">
            <div class="accordion" id="accordionExample">
              <form action="" id="myForm">
                <div class="card">
                  <div class="card-heading">
                    <a data-toggle="collapse" data-target="#collapseZero">Sort Price</a>
                  </div>
                  <div id="collapseZero" class="collapse show" data-parent="#accordionExample">
                    <div class="card-body">
                      <div class="shop__sidebar__price">
                        <ul>
                          <input type="radio" id="Sprice1" name="sortPrice" value="1" onchange="submitForm()" ${sortPrice == '1' ?'checked':''}>
                          <label for="Sprice1">Low to high</label><br>
                          <input type="radio" id="Sprice2" name="sortPrice" value="-1" onchange="submitForm()" ${sortPrice == '-1' ?'checked':''}>
                          <label for="Sprice2">High to low</label><br>

                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-heading">
                    <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                  </div>
                  <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                    <div class="card-body">
                      <div class="shop__sidebar__categories">
                        <ul class="nice-scroll">
                          <c:forEach items="${categories}" var="c">
                            <input type="radio" id="category" name="CategoryID" value="${c.id}" onchange="submitForm()" ${CategoryID == c.id ?'checked':''}>
                            <label for="category"> ${c.name}</label><br>
                            <%--<li><a href="?CategoryID=${c.id}">${c.name}</a></li>--%>
                          </c:forEach>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-heading">
                    <a data-toggle="collapse" data-target="#collapseTwo">Branding</a>
                  </div>
                  <div id="collapseTwo" class="collapse show" data-parent="#accordionExample">
                    <div class="card-body">
                      <div class="shop__sidebar__brand">
                        <ul>
                          <c:forEach items="${brands}" var="b">
                            <input type="radio" id="brand" name="brand" value="${b}" onchange="submitForm()" ${brand == b ?'checked':''}>
                            <label for="brand"> ${b}</label><br>
                          </c:forEach>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-heading">
                    <a data-toggle="collapse" data-target="#collapseThree">Filter Price</a>
                  </div>
                  <div id="collapseThree" class="collapse show" data-parent="#accordionExample">
                    <div class="card-body">
                      <div class="shop__sidebar__price">
                        <ul>
                          <input type="radio" id="price1" name="price" value="1" onchange="submitForm()" ${price == '1' ?'checked':''}>
                          <label for="price1">$0.00 - $100.00</label><br>
                          <input type="radio" id="price2" name="price" value="2" onchange="submitForm()" ${price == '2' ?'checked':''}>
                          <label for="price2">$100.00 - $200.00</label><br>
                          <input type="radio" id="price3" name="price" value="3" onchange="submitForm()" ${price == '3' ?'checked':''}>
                          <label for="price3">$200.00 - ...</label><br>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-heading">
                    <a data-toggle="collapse" data-target="#collapseFour">Size</a>
                  </div>
                  <div id="collapseFour" class="collapse show" data-parent="#accordionExample">
                    <div class="card-body">
                      <div class="shop__sidebar__size">
                        <c:forEach items="${sizes}" var="s">
                          <label for="${s}">${s}
                            <input type="radio" id="${s}" name="size" value="${s}" onchange="submitForm()" ${size == s ?'checked':''}>
                          </label>
                        </c:forEach>
                      </div>
                    </div>
                  </div>
                </div>
                <a href="${pageContext.request.contextPath}/shop" class="primary-btn">Delete Filter</a>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-9">
        <div class="shop__product__option">
          <div class="row">
            <div class="shop__product__option__left">
              <c:if test="${not empty message}">
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                  <div class="text-${messageType}">${message}</div>
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
              </c:if>
            </div>
          </div>
        </div>
        <div class="row">
          <c:forEach items="${products}" var="l">
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="product__item">
                <div class="product__item__pic set-bg" style="display: flex; justify-content: center" <%--data-setbg="${l.image}"--%>>
                  <a href="shop-details?id=${l.id}&CategoryID=${l.category.id}" style="text-align: center">
                    <img  style="height: 100%;" src="${pageContext.request.contextPath}/${l.image}" alt="product-image">
                  </a>
                </div>
                <div class="product__item__text">
                  <h6>${l.name}</h6>
                  <a href="shop-details?id=${l.id}&CategoryID=${l.category.id}" class="add-cart">View Product Detail</a>
                  <c:if test="${l.discount != 0}">
                    <span style="font-size: 18px; font-weight: 700;">$${l.discount}</span>
                    <span style="text-decoration: line-through; color: gray; font-size: 14px;">$${l.price}</span>
                  </c:if>
                  <c:if test="${l.discount == 0}">
                    <h5>$ ${l.price}</h5>
                  </c:if>
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <div class="product__pagination">
              <c:forEach begin="${1}" end="${numberPage}" var="i">
                <c:if test="${i}=="></c:if>
                <a ${i == page?'class="active"':""} href="?${slug}&page=${i}">${i}</a>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Shop Section End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp" />
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
  <div class="h-100 d-flex align-items-center justify-content-center">
    <div class="search-close-switch">+</div>
    <form class="search-model-form">
      <input type="text" name="txtSearch" id="search-input" placeholder="Search here.....">
    </form>
  </div>
</div>
<!-- Search End -->

<!-- Active menu -->
<script>
  document.getElementById('menu-shop').classList.add('active')
</script>


<script>
  function submitForm(){
    document.getElementById("myForm").submit();
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