<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
   <title>Sign In/Sign Up</title>
   <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/web/assets/css/authentication.css">
</head>
<body>
<div class="wrapper">
   <div class="cont s--${action}">
      <form class="form sign-in" method="post" action="${pageContext.request.contextPath}/login">
         <h2 style="font-weight: 300;">WELCOME TO MALE FASHION STORE</h2>
         <div class="input-control">
            <input style="width: 100%;" name="username" id="name" type="text" placeholder="Username" value="${username}"/>
         </div>
         <div class="input-control">
            <input style="width: 100%;" name="password" id="pass" type="password" placeholder="Password" value="${password}"/>
         </div>
         <div class="form-group text-center">
            <input style="margin: 0 8px 0 2px;" type="checkbox" tabindex="3" class="" name="remember" id="remember">
            <label for="remember">Remember Me</label>
         </div>
         <div class="form-group">
            <a href="${pageContext.request.contextPath}/web/forgotPassword" class="forgot-pass">Forget password?</a>
         </div>
         <p class="message-text">${message}</p>
         <button type="submit" class="submit">Sign In</button>
      </form>
      <div class="sub-cont">
         <div class="img">
            <div class="img__text m--up">
               <h2>You do not have account?</h2>
               <p>Register now!</p>
            </div>
            <div class="img__text m--in">
               <h2>One of us?</h2>
               <p>If you have already account, please sign in here!</p>
            </div>
            <div class="img__btn">
               <span class="m--up">Sign up</span>
               <span class="m--in">Sign in</span>
            </div>
         </div>
         <form class="form sign-up" method="post" action="${pageContext.request.contextPath}/register">
            <h2 style="font-weight: 300; margin-bottom: 10px">SIGN UP FOR A MALE FASHION ACCOUNT</h2>
            <div class="input-control">
               <input name="fullName" id="nameRe" type="text" placeholder="Fullname"/>
            </div>
            <div class="input-control">
               <input name="usernameNew" id="usernameR" type="text" placeholder="Username"/>
            </div>
            <div class="input-control">
               <input name="phone" id="phone" type="text" placeholder="Phone number"/>
            </div>
            <div class="input-control">
               <input name="email" id="email" type="email" placeholder="Email"/>
            </div>
            <div class="input-control">
               <input name="passwordNew" id="passwd" type="password"  placeholder="Password"/>
            </div>
            <div class="input-control">
               <input name="passwordNewRetype" id="passwdRetype" type="password"  placeholder="Re-enter password"/>
            </div>
            <div class="input-control radio">
                  <span>
                     <input type="radio" name="gender" id="gender-male" value="Name">
                     <label for="gender-male">Male</label>
                  </span>
               <span>
                     <input type="radio" name="gender" id="gender-female" value="Nữ">
                     <label for="gender-female">Female</label>
                  </span>
               <span>
                     <input type="radio" name="gender" id="gender-others" value="Khác">
                     <label for="gender-others">Other</label>
                  </span>
            </div>
            <c:choose>
               <c:when test="${messageRegisterFail!=null}"><p class="message-text-fail">${messageRegisterFail}</p></c:when>
               <c:otherwise><p class="message-text-success">${messageRegisterSuccess}</p></c:otherwise>
            </c:choose>
            <button type="submit" class="submit">Register</button>
         </form>
      </div>
   </div>
</div>
<script>
   window.addEventListener('load', () => {
      document.querySelector('.img__btn').addEventListener('click', function() {
         document.querySelector('.cont').classList.toggle('s--signup');
      });
   })
</script>
</body>
</html>
