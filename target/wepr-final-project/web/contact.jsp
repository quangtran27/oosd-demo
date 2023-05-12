<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="description" content="Male_Fashion Template">
   <meta name="keywords" content="Male_Fashion, unica, creative, html">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Male-Fashion | Contact</title>

   <!-- Google Font -->
   <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap" rel="stylesheet">

   <!-- Css Styles -->
   <link rel="stylesheet" href="./assets/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="./assets/css/font-awesome.min.css" type="text/css">
   <link rel="stylesheet" href="./assets/css/elegant-icons.css" type="text/css">
   <link rel="stylesheet" href="./assets/css/magnific-popup.css" type="text/css">
   <link rel="stylesheet" href="./assets/css/nice-select.css" type="text/css">
   <link rel="stylesheet" href="./assets/css/owl.carousel.min.css" type="text/css">
   <link rel="stylesheet" href="./assets/css/slicknav.min.css" type="text/css">
   <link rel="stylesheet" href="./assets/css/style.css" type="text/css">
</head>
<body>
<jsp:include page="header.jsp" />
<!-- Map Begin -->
<div class="map" style="height: 400px;">
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.484300945954!2d106.76973361442862!3d10.850721392271105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752763f23816ab%3A0x282f711441b6916f!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgcGjhuqFtIEvhu7kgdGh14bqtdCBUcC4gSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2s!4v1670425947904!5m2!1svi!2s" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
<!-- Map End -->

<section class="contact spad">
   <div class="container">
      <div class="row">
         <div class="col-lg-6 col-md-6">
            <div class="contact__text">
               <div class="section-title">
                  <span>Information</span>
                  <h2>Contact Us</h2>
                  <p>Group 5 - Web Programming <strong>Mrs.Tho</strong></p>
               </div>
               <ul>
                  <li>
                     <h4>Trần Văn Quảng</h4>
                     <p>Leader<br /><a  href="tel:0336699075">0336699075</a></p>
                  </li>
                  <li>
                     <h4>Huỳnh Tiến Dĩ</h4>
                     <p>Member<br /></p>
                  </li>
                  <li>
                     <h4>Trần Công Minh</h4>
                     <p>Member<br /></p>
                  </li>
                  <li>
                     <h4>Nguyễn Huỳnh Khoa</h4>
                     <p>Member<br /></p>
                  </li>
               </ul>
            </div>
         </div>
         <div class="col-lg-6 col-md-6">
            <div class="contact__form">
               <form action="#">
                  <div class="row">
                     <div class="col-lg-6">
                        <input type="text" placeholder="Name">
                     </div>
                     <div class="col-lg-6">
                        <input type="text" placeholder="Email">
                     </div>
                     <div class="col-lg-12">
                        <textarea placeholder="Message"></textarea>
                        <button type="submit" class="site-btn">Send Message</button>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</section>
<jsp:include page="footer.jsp" />
<script>
   document.getElementById('menu-contact').classList.add('active')
</script>

<!-- Js Plugins -->
<script src="./assets/js/jquery-3.3.1.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<script src="./assets/js/jquery.nice-select.min.js"></script>
<script src="./assets/js/jquery.nicescroll.min.js"></script>
<script src="./assets/js/jquery.magnific-popup.min.js"></script>
<script src="./assets/js/jquery.countdown.min.js"></script>
<script src="./assets/js/jquery.slicknav.js"></script>
<script src="./assets/js/mixitup.min.js"></script>
<script src="./assets/js/owl.carousel.min.js"></script>
<script src="./assets/js/main.js"></script>
</body>

</html>