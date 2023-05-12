<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
	<title>Admin</title>
	<link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet"/>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/vendor/fonts/boxicons.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/vendor/css/core.css" class="template-customizer-core-css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/demo.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/vendor/libs/apex-charts/apex-charts.css" />
	<script src="${pageContext.request.contextPath}/admin/assets/vendor/js/helpers.js"></script>
	<script src="${pageContext.request.contextPath}/admin/assets/js/config.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/login-custom.css">
	<style>
		body{
			background-image: url("https://www.lebloo.com/wp-content/uploads/2020/09/4186340-1400x788.jpg");
			background-size: cover;
		}
	</style>
</head>
<body>
<!-- Content -->
<div class="container-xxl">
	<div class="authentication-wrapper authentication-basic container-p-y" style="padding-bottom: 6.5rem !important;">
		<div class="authentication-inner">
			<div class="card" style="width: 35%;margin: 20% auto;">
				<div class="card-body">
					<!-- Logo -->
					<div class="c-logo">
						<img src="${pageContext.request.contextPath}/admin/assets/img/logo.png" alt="">
					</div>
					<form class="mb-3" action="login-admin" method="post">
						<!-- Username -->
						<div class="mb-3">
							<input type="text" id="email" class="form-control" name="username" placeholder="Username" autofocus/>
						</div>
						<!-- Password -->
						<div class="mb-3">
							<input type="password" id="password" class="form-control" name="password" placeholder="Password" autocomplete="off"/>
						</div>
						<p class="text-danger">${message}</p>
						<div class="mb-3">
							<button class="btn btn-primary d-grid w-100" type="submit">Sign in</button>
						</div>
					</form>
					<div class="mb-4"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Core JS -->
	<script src="${pageContext.request.contextPath}/admin/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/admin/assets/vendor/libs/popper/popper.js"></script>
	<script src="${pageContext.request.contextPath}/admin/assets/vendor/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/admin/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="${pageContext.request.contextPath}/admin/assets/vendor/js/menu.js"></script>
	<script src="${pageContext.request.contextPath}/admin/assets/js/main.js"></script>
</div>
</body>
</html>
