<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-pwa="true">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
  <meta charset="utf-8">
  <meta name="viewport"
    content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">
  <title>Cartzilla | Account - Sign Up</title>
  <meta name="description" content="Cartzilla - Multipurpose Bootstrap E-Commerce HTML Template">
  <meta name="keywords"
    content="online shop, e-commerce, online store, market, multipurpose, product landing, cart, checkout, ui kit, light and dark mode, bootstrap, html5, css3, javascript, gallery, slider, mobile, pwa">
  <meta name="author" content="Le Quang Dung">
  <link rel="manifest" href="manifest.json">
  <link rel="icon" type="image/png" href="View/customer/assets/app-icons/icon-32x32.png" sizes="32x32">
  <script src="View/customer/assets/js/theme-switcher.js"></script>
  <link rel="preload" href="View/customer/assets/fonts/inter-variable-latin.woff2" as="font" type="font/woff2" crossorigin="">
  <link rel="preload" href="View/customer/assets/icons/cartzilla-icons.woff2" as="font" type="font/woff2" crossorigin="">
  <link rel="stylesheet" href="View/customer/assets/icons/cartzilla-icons.min.css">
  <link rel="preload" href="View/customer/assets/css/theme.min.css" as="style">
  <link rel="preload" href="View/customer/assets/css/theme.rtl.min.css" as="style">
  <link rel="stylesheet" href="View/customer/assets/css/theme.min.css" id="theme-styles">
</head>
<main class="content-wrapper w-100 px-3 ps-lg-5 pe-lg-4 mx-auto" style="max-width: 1920px">
  <div class="d-lg-flex">
    <div class="d-flex flex-column min-vh-100 w-100 py-4 mx-auto me-lg-5" style="max-width: 416px">
      <header class="navbar px-0 pb-4 mt-n2 mt-sm-0 mb-2 mb-md-3 mb-lg-4">
        <a href="index.html" class="navbar-brand pt-0">
          <span class="d-flex flex-shrink-0 text-primary me-2">
            <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36">
              <path
                d="M36 18.01c0 8.097-5.355 14.949-12.705 17.2a18.12 18.12 0 0 1-5.315.79C9.622 36 2.608 30.313.573 22.611.257 21.407.059 20.162 0 18.879v-1.758c.02-.395.059-.79.099-1.185.099-.908.277-1.817.514-2.686C2.687 5.628 9.682 0 18 0c5.572 0 10.551 2.528 13.871 6.517 1.502 1.797 2.648 3.91 3.359 6.201.494 1.659.771 3.436.771 5.292z"
                fill="currentColor"></path>
              <g fill="#fff">
                <path
                  d="M17.466 21.624c-.514 0-.988-.316-1.146-.829-.198-.632.138-1.303.771-1.501l7.666-2.469-1.205-8.254-13.317 4.621a1.19 1.19 0 0 1-1.521-.75 1.19 1.19 0 0 1 .751-1.521l13.89-4.818c.553-.197 1.166-.138 1.64.158a1.82 1.82 0 0 1 .85 1.284l1.344 9.183c.138.987-.494 1.994-1.482 2.33l-7.864 2.528-.375.04zm7.31.138c-.178-.632-.85-1.007-1.482-.81l-5.177 1.58c-2.331.79-3.28.02-3.418-.099l-6.56-8.412a4.25 4.25 0 0 0-4.406-1.758l-3.122.987c-.237.889-.415 1.777-.514 2.686l4.228-1.363a1.84 1.84 0 0 1 1.857.81l6.659 8.551c.751.948 2.015 1.323 3.359 1.323.909 0 1.857-.178 2.687-.474l5.078-1.54c.632-.178 1.008-.829.81-1.481z">
                </path>
                <use href="#czlogo"></use>
                <use href="#czlogo" x="8.516" y="-2.172"></use>
              </g>
              <defs>
                <path id="czlogo"
                  d="M18.689 28.654a1.94 1.94 0 0 1-1.936 1.935 1.94 1.94 0 0 1-1.936-1.935 1.94 1.94 0 0 1 1.936-1.935 1.94 1.94 0 0 1 1.936 1.935z">
                </path>
              </defs>
            </svg>
          </span>
          Cartzilla
        </a>
      </header>

      <h1 class="h2 mt-auto">Create an account</h1>
      <div class="nav fs-sm mb-3 mb-lg-4">
        I already have an account
        <a class="nav-link text-decoration-underline p-0 ms-2" href="/Project-Finals/login">Sign in</a>
      </div>
      <div class="nav fs-sm mb-4 d-lg-none">
        <span class="me-2">Uncertain about creating an account?</span>
        <a class="nav-link text-decoration-underline p-0" href="#benefits" data-bs-toggle="offcanvas"
          aria-controls="benefits">Explore the Benefits</a>
      </div>
      <div class="form-group">
          <h6 style="color:red">${error}</h6>
          <h6 style="color:green">${success}</h6>
      </div>
      
      <!-- Form Đăng ký ở đây -->
      <form action="/Project-Finals/register" method="POST">
        <div class="position-relative mb-4">
          <label for="fullName" class="form-label">Name</label>
          <input id="fullName" name="fullName" type="text" class="form-control form-control-lg" 
                 placeholder="Name" required>
        </div>
        <div class="position-relative mb-4">
          <label for="email" class="form-label">Email</label>
          <input id="email" name="email" type="email" class="form-control form-control-lg" 
                 placeholder="Email" required>
        </div>
        <div class="position-relative mb-4">
          <label for="phone" class="form-label">Phone</label>
          <input id="phone" name="phone" type="text" class="form-control form-control-lg" 
                 placeholder="Phone" required>
        </div>
        <div class="position-relative mb-4">
          <label for="address=" class="form-label">Address</label>
          <input id="address" name="address" type="text" class="form-control form-control-lg" 
                 placeholder="Address" required>
        </div>
        <div class="position-relative mb-4">
          <label for="dob=" class="form-label">Date Of Birth</label>
          <input id="dob" name="dob" type="date" class="form-control form-control-lg" 
                 placeholder="Date Of Birth" required>
        </div>
        <div class="position-relative mb-4">
          <label for="password=" class="form-label">Password</label>
          <input id="password" name="password" type="password" class="form-control form-control-lg" 
                 placeholder="Password" required>
        </div>
        <div class="position-relative mb-4">
          <label for="retypePassword=" class="form-label">Retype Password </label>
          <input id="retypePassword" name="retypePassword" type="password" class="form-control form-control-lg" 
                 placeholder="Retype Password" required>
        </div>  
        
        <button type="submit" class="btn btn-lg btn-primary w-100">Create an account
          <i class="ci-chevron-right fs-lg ms-1 me-n1"></i>
        </button>
      </form>
      <div class="d-flex align-items-center my-4">
        <hr class="w-100 m-0">
        <span class="text-body-emphasis fw-medium text-nowrap mx-4">or continue with</span>
        <hr class="w-100 m-0">
      </div>
      <div class="d-flex flex-column flex-sm-row gap-3 pb-4 mb-3 mb-lg-4">
        <button type="button" class="btn btn-lg btn-outline-secondary w-100 px-2">
          <i class="ci-google ms-1 me-1"></i>
          Google
        </button>
        <button type="button" class="btn btn-lg btn-outline-secondary w-100 px-2">
          <i class="ci-facebook ms-1 me-1"></i>
          Facebook
        </button>
      </div>

      <footer class="mt-auto">
        <p class="fs-xs mb-0">
          © All rights reserved. Made by <span class="animate-underline"><a
              class="animate-target text-dark-emphasis text-decoration-none"
              href="https://www.facebook.com/dung.lequang.92102/" target="_blank" rel="noreferrer">Le Quang
              Dung</a></span>
        </p>
      </footer>
    </div>

    <div class="offcanvas-lg offcanvas-end w-100 py-lg-4 ms-auto" id="benefits" style="max-width: 1034px">
      <div class="offcanvas-header justify-content-end position-relative z-2 p-3">
        <button type="button"
          class="btn btn-icon btn-outline-dark text-dark border-dark bg-transparent rounded-circle d-none-dark"
          data-bs-dismiss="offcanvas" data-bs-target="#benefits" aria-label="Close">
          <i class="ci-close fs-lg"></i>
        </button>
        <button type="button"
          class="btn btn-icon btn-outline-dark text-light border-light bg-transparent rounded-circle d-none d-inline-flex-dark"
          data-bs-dismiss="offcanvas" data-bs-target="#benefits" aria-label="Close">
          <i class="ci-close fs-lg"></i>
        </button>
      </div>
      <div class="position-absolute top-0 start-0 w-100 h-100 d-lg-none">
        <span class="position-absolute top-0 start-0 w-100 h-100 d-none-dark"
          style="background: linear-gradient(-90deg, #accbee 0%, #e7f0fd 100%)"></span>
        <span class="position-absolute top-0 start-0 w-100 h-100 d-none d-block-dark"
          style="background: linear-gradient(-90deg, #1b273a 0%, #1f2632 100%)"></span>
      </div>
      <div
        class="offcanvas-body position-relative z-2 d-lg-flex flex-column align-items-center justify-content-center h-100 pt-2 px-3 p-lg-0">
        <div class="position-absolute top-0 start-0 w-100 h-100 d-none d-lg-block">
          <span class="position-absolute top-0 start-0 w-100 h-100 rounded-5 d-none-dark"
            style="background: linear-gradient(-90deg, #accbee 0%, #e7f0fd 100%)"></span>
          <span class="position-absolute top-0 start-0 w-100 h-100 rounded-5 d-none d-block-dark"
            style="background: linear-gradient(-90deg, #1b273a 0%, #1f2632 100%)"></span>
        </div>
        <div class="position-relative z-2 w-100 text-center px-md-2 p-lg-5">
          <h2 class="h4 pb-3">Cartzilla account benefits</h2>
          <div class="mx-auto" style="max-width: 790px">
            <div class="row row-cols-1 row-cols-sm-2 g-3 g-md-4 g-lg-3 g-xl-4">
              <div class="col">
                <div class="card h-100 bg-transparent border-0">
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white bg-opacity-25 border border-white border-opacity-50 rounded-4 d-none-dark"></span>
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white border rounded-4 d-none d-block-dark"
                    style="--cz-bg-opacity: .05"></span>
                  <div class="card-body position-relative z-2">
                    <div class="d-inline-flex position-relative text-info p-3">
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-white rounded-pill d-none-dark"></span>
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-body-secondary rounded-pill d-none d-block-dark"></span>
                      <i class="ci-mail position-relative z-2 fs-4 m-1"></i>
                    </div>
                    <h3 class="h6 pt-2 my-2">Subscribe to your favorite products</h3>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100 bg-transparent border-0">
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white bg-opacity-25 border border-white border-opacity-50 rounded-4 d-none-dark"></span>
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white border rounded-4 d-none d-block-dark"
                    style="--cz-bg-opacity: .05"></span>
                  <div class="card-body position-relative z-2">
                    <div class="d-inline-flex position-relative text-info p-3">
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-white rounded-pill d-none-dark"></span>
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-body-secondary rounded-pill d-none d-block-dark"></span>
                      <i class="ci-settings position-relative z-2 fs-4 m-1"></i>
                    </div>
                    <h3 class="h6 pt-2 my-2">View and manage your orders and wishlist</h3>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100 bg-transparent border-0">
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white bg-opacity-25 border border-white border-opacity-50 rounded-4 d-none-dark"></span>
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white border rounded-4 d-none d-block-dark"
                    style="--cz-bg-opacity: .05"></span>
                  <div class="card-body position-relative z-2">
                    <div class="d-inline-flex position-relative text-info p-3">
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-white rounded-pill d-none-dark"></span>
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-body-secondary rounded-pill d-none d-block-dark"></span>
                      <i class="ci-gift position-relative z-2 fs-4 m-1"></i>
                    </div>
                    <h3 class="h6 pt-2 my-2">Earn rewards for future purchases</h3>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100 bg-transparent border-0">
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white bg-opacity-25 border border-white border-opacity-50 rounded-4 d-none-dark"></span>
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white border rounded-4 d-none d-block-dark"
                    style="--cz-bg-opacity: .05"></span>
                  <div class="card-body position-relative z-2">
                    <div class="d-inline-flex position-relative text-info p-3">
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-white rounded-pill d-none-dark"></span>
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-body-secondary rounded-pill d-none d-block-dark"></span>
                      <i class="ci-percent position-relative z-2 fs-4 m-1"></i>
                    </div>
                    <h3 class="h6 pt-2 my-2">Receive exclusive offers and discounts</h3>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100 bg-transparent border-0">
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white bg-opacity-25 border border-white border-opacity-50 rounded-4 d-none-dark"></span>
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white border rounded-4 d-none d-block-dark"
                    style="--cz-bg-opacity: .05"></span>
                  <div class="card-body position-relative z-2">
                    <div class="d-inline-flex position-relative text-info p-3">
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-white rounded-pill d-none-dark"></span>
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-body-secondary rounded-pill d-none d-block-dark"></span>
                      <i class="ci-heart position-relative z-2 fs-4 m-1"></i>
                    </div>
                    <h3 class="h6 pt-2 my-2">Create multiple wishlists</h3>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100 bg-transparent border-0">
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white bg-opacity-25 border border-white border-opacity-50 rounded-4 d-none-dark"></span>
                  <span
                    class="position-absolute top-0 start-0 w-100 h-100 bg-white border rounded-4 d-none d-block-dark"
                    style="--cz-bg-opacity: .05"></span>
                  <div class="card-body position-relative z-2">
                    <div class="d-inline-flex position-relative text-info p-3">
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-white rounded-pill d-none-dark"></span>
                      <span
                        class="position-absolute top-0 start-0 w-100 h-100 bg-body-secondary rounded-pill d-none d-block-dark"></span>
                      <i class="ci-pie-chart position-relative z-2 fs-4 m-1"></i>
                    </div>
                    <h3 class="h6 pt-2 my-2">Pay for purchases by installments</h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>
<script src="View/customer/assets/js/theme.min.js"></script>
</body>

</html>