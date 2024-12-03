<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-pwa="true">
  <!-- Mirrored from cartzilla.createx.studio/checkout-v1-cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 06 Sep 2024 06:29:44 GMT -->
  <!-- Added by HTTrack --><meta
    http-equiv="content-type"
    content="text/html;charset=utf-8"
  /><!-- /Added by HTTrack -->
  <head>
    <meta charset="utf-8" />

    <!-- Viewport -->
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover"
    />

    <!-- SEO Meta Tags -->
    <title>Cartzilla | Checkout v.1 - Shopping Cart</title>
    <meta
      name="description"
      content="Cartzilla - Multipurpose Bootstrap E-Commerce HTML Template"
    />
    <meta
      name="keywords"
      content="online shop, e-commerce, online store, market, multipurpose, product landing, cart, checkout, ui kit, light and dark mode, bootstrap, html5, css3, javascript, gallery, slider, mobile, pwa"
    />
    <meta name="author" content="Createx Studio" />

    <!-- Webmanifest + Favicon / App icons -->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <link rel="manifest" href="manifest.json" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <link
      rel="icon"
      type="image/png"
      href="View/customer/assets/app-icons/icon-32x32.png"
      sizes="32x32"
    />
    <link rel="apple-touch-icon" href="View/customer/assets/app-icons/icon-180x180.png" />

    <!-- Theme switcher (color modes) -->
    <script src="View/customer/assets/js/theme-switcher.js"></script>

    <!-- Preloaded local web font (Inter) -->
    <link
      rel="preload"
      href="View/customer/assets/fonts/inter-variable-latin.woff2"
      as="font"
      type="font/woff2"
      crossorigin=""
    />

    <!-- Font icons -->
    <link
      rel="preload"
      href="View/customer/assets/icons/cartzilla-icons.woff2"
      as="font"
      type="font/woff2"
      crossorigin=""
    />
    <link rel="stylesheet" href="View/customer/assets/icons/cartzilla-icons.min.css" />

    <!-- Vendor styles -->
    <link rel="stylesheet" href="View/customer/assets/vendor/swiper/swiper-bundle.min.css" />

    <!-- Bootstrap + Theme styles -->
    <link rel="preload" href="View/customer/assets/css/theme.min.css" as="style" />
    <link rel="preload" href="View/customer/assets/css/theme.rtl.min.css" as="style" />
    <link rel="stylesheet" href="View/customer/assets/css/theme.min.css" id="theme-styles" />

    <!-- Customizer -->
    <script src="View/customer/assets/js/customizer.min.js"></script>
  </head>

  <!-- Body -->
  <body>
    <!-- Customizer offcanvas -->
    <div class="offcanvas offcanvas-end" id="customizer" tabindex="-1">
      <div class="offcanvas-header border-bottom">
        <h4 class="h5 offcanvas-title">Customize theme</h4>
        <button
          class="btn-close"
          type="button"
          data-bs-dismiss="offcanvas"
          aria-label="Close"
        ></button>
      </div>
      <div class="offcanvas-body">
        <!-- Customizer settings -->
        <div class="customizer-collapse collapse show" id="customizerSettings">
          <!-- Colors -->
          <div class="pb-4 mb-2">
            <div class="d-flex align-items-center mb-3">
              <i class="ci-paint text-body-tertiary fs-5 me-2"></i>
              <h5 class="fs-lg mb-0">Colors</h5>
            </div>
            <div class="row row-cols-2 g-3" id="theme-colors">
              <div class="col">
                <h6 class="fs-sm mb-2">Primary</h6>
                <div
                  class="color-swatch d-flex border rounded gap-3 p-2"
                  id="theme-primary"
                  data-color-labels='["theme-primary", "primary", "primary-rgb"]'
                >
                  <input
                    type="text"
                    class="form-control bg-transparent border-0 rounded-0 p-1"
                    value="#f55266"
                  />
                  <label
                    for="primary"
                    class="ratio ratio-1x1 flex-shrink-0 w-100 cursor-pointer rounded-circle"
                    style="max-width: 38px; background-color: #f55266"
                  ></label>
                  <input
                    type="color"
                    class="visually-hidden"
                    id="primary"
                    value="#f55266"
                  />
                </div>
              </div>
              <div class="col">
                <h6 class="fs-sm mb-2">Success</h6>
                <div
                  class="color-swatch d-flex border rounded gap-3 p-2"
                  id="theme-success"
                  data-color-labels='["theme-success", "success", "success-rgb"]'
                >
                  <input
                    type="text"
                    class="form-control bg-transparent border-0 rounded-0 p-1"
                    value="#33b36b"
                  />
                  <label
                    for="success"
                    class="ratio ratio-1x1 flex-shrink-0 w-100 cursor-pointer rounded-circle"
                    style="max-width: 38px; background-color: #33b36b"
                  ></label>
                  <input
                    type="color"
                    class="visually-hidden"
                    id="success"
                    value="#33b36b"
                  />
                </div>
              </div>
              <div class="col">
                <h6 class="fs-sm mb-2">Warning</h6>
                <div
                  class="color-swatch d-flex border rounded gap-3 p-2"
                  id="theme-warning"
                  data-color-labels='["theme-warning", "warning", "warning-rgb"]'
                >
                  <input
                    type="text"
                    class="form-control bg-transparent border-0 rounded-0 p-1"
                    value="#fc9231"
                  />
                  <label
                    for="warning"
                    class="ratio ratio-1x1 flex-shrink-0 w-100 cursor-pointer rounded-circle"
                    style="max-width: 38px; background-color: #fc9231"
                  ></label>
                  <input
                    type="color"
                    class="visually-hidden"
                    id="warning"
                    value="#fc9231"
                  />
                </div>
              </div>
              <div class="col">
                <h6 class="fs-sm mb-2">Danger</h6>
                <div
                  class="color-swatch d-flex border rounded gap-2 p-2"
                  id="theme-danger"
                  data-color-labels='["theme-danger", "danger", "danger-rgb"]'
                >
                  <input
                    type="text"
                    class="form-control bg-transparent border-0 rounded-0 p-1"
                    value="#f03d3d"
                  />
                  <label
                    for="danger"
                    class="ratio ratio-1x1 flex-shrink-0 w-100 cursor-pointer rounded-circle"
                    style="max-width: 38px; background-color: #f03d3d"
                  ></label>
                  <input
                    type="color"
                    class="visually-hidden"
                    id="danger"
                    value="#f03d3d"
                  />
                </div>
              </div>
              <div class="col">
                <h6 class="fs-sm mb-2">Info</h6>
                <div
                  class="color-swatch d-flex border rounded gap-2 p-2"
                  id="theme-info"
                  data-color-labels='["theme-info", "info", "info-rgb"]'
                >
                  <input
                    type="text"
                    class="form-control bg-transparent border-0 rounded-0 p-1"
                    value="#2f6ed5"
                  />
                  <label
                    for="info"
                    class="ratio ratio-1x1 flex-shrink-0 w-100 cursor-pointer rounded-circle"
                    style="max-width: 38px; background-color: #2f6ed5"
                  ></label>
                  <input
                    type="color"
                    class="visually-hidden"
                    id="info"
                    value="#2f6ed5"
                  />
                </div>
              </div>
            </div>
          </div>

          <!-- Direction -->
          <div class="pb-4 mb-2">
            <div class="d-flex align-items-center pb-1 mb-2">
              <i
                class="ci-sort text-body-tertiary fs-lg me-2"
                style="transform: rotate(90deg)"
              ></i>
              <h5 class="fs-lg mb-0">Direction</h5>
            </div>
            <div
              class="d-flex align-items-center justify-content-between border rounded p-3"
            >
              <div class="me-3">
                <h6 class="mb-1">RTL</h6>
                <p class="fs-sm mb-0">Change text direction</p>
              </div>
              <div class="form-check form-switch m-0">
                <input
                  type="checkbox"
                  class="form-check-input"
                  role="switch"
                  id="rtl-switch"
                />
              </div>
            </div>
            <div class="alert alert-info p-2 mt-2 mb-0">
              <div class="d-flex text-body-emphasis fs-xs py-1 pe-1">
                <i
                  class="ci-info text-info fs-lg mb-2 mb-sm-0"
                  style="margin-top: 0.125rem"
                ></i>
                <div class="ps-2">
                  To switch the text direction of your webpage from LTR to RTL,
                  please consult the detailed instructions provided in the
                  relevant section of our documentation.
                </div>
              </div>
            </div>
          </div>

          <!-- Border width -->
          <div class="pb-4 mb-2">
            <div class="d-flex align-items-center pb-1 mb-2">
              <i class="ci-menu text-body-tertiary fs-lg me-2"></i>
              <h5 class="fs-lg mb-0">Border width, px</h5>
            </div>
            <div
              class="slider-input d-flex align-items-center gap-3 border rounded p-3"
              id="border-input"
            >
              <input
                type="range"
                class="form-range"
                min="0"
                max="10"
                step="1"
                value="1"
              />
              <input
                type="number"
                class="form-control"
                id="border-width"
                min="0"
                max="10"
                value="1"
                style="max-width: 5.5rem"
              />
            </div>
          </div>

          <!-- Rounding -->
          <div class="d-flex align-items-center pb-1 mb-2">
            <i class="ci-maximize text-body-tertiary fs-lg me-2"></i>
            <h5 class="fs-lg mb-0">Rounding, rem</h5>
          </div>
          <div
            class="slider-input d-flex align-items-center gap-3 border rounded p-3"
          >
            <input
              type="range"
              class="form-range"
              min="0"
              max="5"
              step=".05"
              value="0.5"
            />
            <input
              type="number"
              class="form-control"
              id="border-radius"
              min="0"
              max="5"
              step=".05"
              value="0.5"
              style="max-width: 5.5rem"
            />
          </div>
        </div>

        <!-- Customizer code -->
        <div class="customizer-collapse collapse" id="customizerCode">
          <div class="nav mb-3">
            <a
              class="nav-link animate-underline fs-base p-0"
              href=".html"
              data-bs-toggle="collapse"
              aria-expanded="true"
              aria-controls="customizerSettings customizerCode"
            >
              <i class="ci-chevron-left fs-lg ms-n1 me-1"></i>
              <span class="animate-target">Back to settings</span>
            </a>
          </div>
          <p class="fs-sm pb-1">
            To apply the provided styles to your webpage, enclose them within a
            <code>&lt;style&gt;</code> tag and insert this tag into the
            <code>&lt;head&gt;</code> section of your HTML document after the
            following link to the main stylesheet:<br /><code
              >&lt;link href="View/customer/assets/css/theme.min.css"&gt;</code
            >
          </p>
          <div
            class="position-relative bg-body-tertiary rounded overflow-hidden pt-3"
          >
            <div class="position-absolute top-0 start-0 w-100 p-3">
              <button
                type="button"
                class="btn btn-sm btn-outline-dark w-100"
                data-copy-text-from="#generated-styles"
                data-done-label="Code copied"
              >
                <i class="ci-copy fs-sm me-1"></i>
                Copy code
              </button>
            </div>
            <pre
              class="text-wrap bg-transparent border-0 fs-xs text-body-emphasis p-4 pt-5"
              id="generated-styles"
            ></pre>
          </div>
        </div>
      </div>

      <!-- Offcanvas footer (Action buttons) -->
      <div
        class="offcanvas-header border-top gap-3 d-none"
        id="customizer-btns"
      >
        <button
          type="button"
          class="btn btn-lg btn-secondary w-100 fs-sm"
          id="customizer-reset"
        >
          <i class="ci-trash fs-lg me-2 ms-n1"></i>
          Reset
        </button>
        <button
          class="btn btn-lg btn-primary hiding-collapse-toggle w-100 fs-sm collapsed"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target=".customizer-collapse"
          aria-expanded="false"
          aria-controls="customizerSettings customizerCode"
        >
          <i class="ci-code fs-lg me-2 ms-n1"></i>
          Show code
        </button>
      </div>
    </div>

    <!-- Authentication offcanvas -->
    <div
      class="offcanvas offcanvas-end pb-sm-2 px-sm-2"
      id="authForm"
      tabindex="-1"
      aria-labelledby="authFormLabel"
      style="width: 500px"
    >
      <div class="offcanvas-header flex-column align-items-start py-3 pt-lg-4">
        <div
          class="d-flex align-items-center justify-content-between w-100 mb-3 mb-lg-4"
        >
          <h4 class="offcanvas-title" id="authFormLabel">Login to continue</h4>
          <button
            type="button"
            class="btn-close"
            data-bs-dismiss="offcanvas"
            aria-label="Close"
          ></button>
        </div>
        <ul class="nav nav-underline" role="tablist">
          <li class="nav-item" role="presentation">
            <button
              type="button"
              class="nav-link"
              id="login-tab"
              data-bs-toggle="tab"
              data-bs-target="#login-tab-pane"
              role="tab"
              aria-controls="login-tab-pane"
              aria-selected="false"
            >
              Login
            </button>
          </li>
          <li class="nav-item" role="presentation">
            <button
              type="button"
              class="nav-link active"
              id="register-tab"
              data-bs-toggle="tab"
              data-bs-target="#register-tab-pane"
              role="tab"
              aria-controls="register-tab-pane"
              aria-selected="true"
            >
              Register
            </button>
          </li>
        </ul>
      </div>
      <div class="offcanvas-body tab-content pt-2">
        <!-- Login form -->
        <div
          class="tab-pane fade"
          id="login-tab-pane"
          role="tabpanel"
          aria-labelledby="login-tab"
        >
          <form class="needs-validation" novalidate="">
            <div class="position-relative mb-4">
              <label for="login-email" class="form-label">Email</label>
              <input
                type="email"
                class="form-control form-control-lg"
                id="login-email"
                required=""
              />
              <div class="invalid-tooltip bg-transparent py-0">
                Enter a valid email address!
              </div>
            </div>
            <div class="mb-4">
              <label for="login-password" class="form-label">Password</label>
              <div class="password-toggle">
                <input
                  type="password"
                  class="form-control form-control-lg"
                  id="login-password"
                  required=""
                />
                <div class="invalid-tooltip bg-transparent py-0">
                  Password is incorrect!
                </div>
                <label
                  class="password-toggle-button fs-lg"
                  aria-label="Show/hide password"
                >
                  <input type="checkbox" class="btn-check" />
                </label>
              </div>
            </div>
            <div class="d-flex align-items-center justify-content-between mb-4">
              <div class="form-check me-2">
                <input
                  type="checkbox"
                  class="form-check-input"
                  id="remember-30"
                />
                <label for="remember-30" class="form-check-label"
                  >Remember for 30 days</label
                >
              </div>
              <div class="nav">
                <a
                  class="nav-link animate-underline p-0"
                  href="account-password-recovery.html"
                >
                  <span class="animate-target">Forgot password?</span>
                </a>
              </div>
            </div>
            <button type="submit" class="btn btn-lg btn-primary w-100">
              Login to your account
              <i class="ci-chevron-right fs-lg ms-1 me-n1"></i>
            </button>
          </form>
        </div>

        <!-- Register form -->
        <div
          class="tab-pane fade show active"
          id="register-tab-pane"
          role="tabpanel"
          aria-labelledby="register-tab"
        >
          <form class="needs-validation" novalidate="">
            <div class="position-relative mb-4">
              <label for="register-email" class="form-label">Email</label>
              <input
                type="email"
                class="form-control form-control-lg"
                id="register-email"
                required=""
              />
              <div class="invalid-tooltip bg-transparent py-0">
                Enter a valid email address!
              </div>
            </div>
            <div class="mb-4">
              <label for="register-password" class="form-label">Password</label>
              <div class="password-toggle">
                <input
                  type="password"
                  class="form-control form-control-lg"
                  id="register-password"
                  minlength="8"
                  placeholder="Minimum 8 characters"
                  required=""
                />
                <div class="invalid-tooltip bg-transparent py-0">
                  Password does not meet the required criteria!
                </div>
                <label
                  class="password-toggle-button fs-lg"
                  aria-label="Show/hide password"
                >
                  <input type="checkbox" class="btn-check" />
                </label>
              </div>
            </div>
            <div class="d-flex flex-column gap-2 mb-4">
              <div class="form-check">
                <input
                  type="checkbox"
                  class="form-check-input"
                  id="save-pass"
                />
                <label for="save-pass" class="form-check-label"
                  >Save the password</label
                >
              </div>
              <div class="form-check">
                <input
                  type="checkbox"
                  class="form-check-input"
                  id="privacy"
                  required=""
                />
                <label for="privacy" class="form-check-label"
                  >I have read and accept the
                  <a class="text-dark-emphasis" href="#!"
                    >Privacy Policy</a
                  ></label
                >
              </div>
            </div>
            <button type="submit" class="btn btn-lg btn-primary w-100">
              Create an account
              <i class="ci-chevron-right fs-lg ms-1 me-n1"></i>
            </button>
            <div class="pt-5">
              <h6>Cartzilla account benefits</h6>
              <ul class="list-unstyled d-flex flex-column gap-2 fs-sm mb-0">
                <li class="d-flex align-items-center pb-1">
                  <div
                    class="d-flex align-items-center justify-content-center bg-body-tertiary rounded-circle p-2"
                  >
                    <i class="ci-mail fs-base text-dark-emphasis m-1"></i>
                  </div>
                  <div class="ps-2 ms-1">
                    Subscribe to your favorite products
                  </div>
                </li>
                <li class="d-flex align-items-center pb-1">
                  <div
                    class="d-flex align-items-center justify-content-center bg-body-tertiary rounded-circle p-2"
                  >
                    <i class="ci-settings fs-base text-dark-emphasis m-1"></i>
                  </div>
                  <div class="ps-2 ms-1">
                    View and manage your orders and withlist
                  </div>
                </li>
                <li class="d-flex align-items-center pb-1">
                  <div
                    class="d-flex align-items-center justify-content-center bg-body-tertiary rounded-circle p-2"
                  >
                    <i class="ci-gift fs-base text-dark-emphasis m-1"></i>
                  </div>
                  <div class="ps-2 ms-1">Earn rewards for future purchases</div>
                </li>
                <li class="d-flex align-items-center pb-1">
                  <div
                    class="d-flex align-items-center justify-content-center bg-body-tertiary rounded-circle p-2"
                  >
                    <i class="ci-percent fs-base text-dark-emphasis m-1"></i>
                  </div>
                  <div class="ps-2 ms-1">
                    Receive exclusive offers and discounts
                  </div>
                </li>
                <li class="d-flex align-items-center pb-1">
                  <div
                    class="d-flex align-items-center justify-content-center bg-body-tertiary rounded-circle p-2"
                  >
                    <i class="ci-heart fs-base text-dark-emphasis m-1"></i>
                  </div>
                  <div class="ps-2 ms-1">Create multiple wishlists</div>
                </li>
              </ul>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!-- Shopping cart offcanvas -->
    <div
      class="offcanvas offcanvas-end pb-sm-2 px-sm-2"
      id="shoppingCart"
      tabindex="-1"
      aria-labelledby="shoppingCartLabel"
      style="width: 500px"
    >
      <!-- Header -->
      <div class="offcanvas-header flex-column align-items-start py-3 pt-lg-4">
        <div
          class="d-flex align-items-center justify-content-between w-100 mb-3 mb-lg-4"
        >
          <h4 class="offcanvas-title" id="shoppingCartLabel">Shopping cart</h4>
          <button
            type="button"
            class="btn-close"
            data-bs-dismiss="offcanvas"
            aria-label="Close"
          ></button>
        </div>
      </div>
    </div>

    <!-- Navigation bar (Page header) -->
    <header
      class="navbar navbar-expand-lg navbar-dark bg-dark d-block z-fixed p-0"
      data-sticky-navbar='{"offset": 200}'
    >
      <div class="container d-block py-1 py-lg-3" data-bs-theme="dark">
        <div class="navbar-stuck-hide pt-1"></div>
        <div class="row flex-nowrap align-items-center g-0">
          <div class="col col-lg-3 d-flex align-items-center">
            <!-- Mobile offcanvas menu toggler (Hamburger) -->
            <button
              type="button"
              class="navbar-toggler me-4 me-lg-0"
              data-bs-toggle="offcanvas"
              data-bs-target="#navbarNav"
              aria-controls="navbarNav"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar brand (Logo) -->
            <a href="home-electronics.html" class="navbar-brand me-0">
              <span class="d-none d-sm-flex flex-shrink-0 text-primary me-2">
                <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36">
                  <path
                    d="M36 18.01c0 8.097-5.355 14.949-12.705 17.2a18.12 18.12 0 0 1-5.315.79C9.622 36 2.608 30.313.573 22.611.257 21.407.059 20.162 0 18.879v-1.758c.02-.395.059-.79.099-1.185.099-.908.277-1.817.514-2.686C2.687 5.628 9.682 0 18 0c5.572 0 10.551 2.528 13.871 6.517 1.502 1.797 2.648 3.91 3.359 6.201.494 1.659.771 3.436.771 5.292z"
                    fill="currentColor"
                  ></path>
                  <g fill="#fff">
                    <path
                      d="M17.466 21.624c-.514 0-.988-.316-1.146-.829-.198-.632.138-1.303.771-1.501l7.666-2.469-1.205-8.254-13.317 4.621a1.19 1.19 0 0 1-1.521-.75 1.19 1.19 0 0 1 .751-1.521l13.89-4.818c.553-.197 1.166-.138 1.64.158a1.82 1.82 0 0 1 .85 1.284l1.344 9.183c.138.987-.494 1.994-1.482 2.33l-7.864 2.528-.375.04zm7.31.138c-.178-.632-.85-1.007-1.482-.81l-5.177 1.58c-2.331.79-3.28.02-3.418-.099l-6.56-8.412a4.25 4.25 0 0 0-4.406-1.758l-3.122.987c-.237.889-.415 1.777-.514 2.686l4.228-1.363a1.84 1.84 0 0 1 1.857.81l6.659 8.551c.751.948 2.015 1.323 3.359 1.323.909 0 1.857-.178 2.687-.474l5.078-1.54c.632-.178 1.008-.829.81-1.481z"
                    ></path>
                    <use href="#czlogo"></use>
                    <use href="#czlogo" x="8.516" y="-2.172"></use>
                  </g>
                  <defs>
                    <path
                      id="czlogo"
                      d="M18.689 28.654a1.94 1.94 0 0 1-1.936 1.935 1.94 1.94 0 0 1-1.936-1.935 1.94 1.94 0 0 1 1.936-1.935 1.94 1.94 0 0 1 1.936 1.935z"
                    ></path>
                  </defs>
                </svg>
              </span>
              Cartzilla
            </a>
          </div>
          <div
            class="col col-lg-9 d-flex align-items-center justify-content-end"
          >
            <!-- Search visible on screens > 991px wide (lg breakpoint) -->
            <div
              class="position-relative flex-fill d-none d-lg-block pe-4 pe-xl-5"
            >
              <i
                class="ci-search position-absolute top-50 translate-middle-y d-flex fs-lg text-white ms-3"
              ></i>
              <input
                type="search"
                class="form-control form-control-lg form-icon-start border-white rounded-pill"
                placeholder="Search the products"
              />
            </div>

            <!-- Sale link visible on screens > 1200px wide (xl breakpoint) -->
            <a
              class="d-none d-xl-flex align-items-center text-decoration-none animate-shake navbar-stuck-hide me-3 me-xl-4 me-xxl-5"
              href="shop-catalog-electronics.html"
            >
              <div
                class="btn btn-icon btn-lg fs-lg text-primary bg-body-secondary bg-opacity-75 pe-none rounded-circle"
              >
                <i class="ci-percent animate-target"></i>
              </div>
              <div class="ps-2 text-nowrap">
                <div class="fs-xs text-body">Only this month</div>
                <div class="fw-medium text-white">Super Sale 20%</div>
              </div>
            </a>

            <!-- Button group -->
            <div class="d-flex align-items-center">
              <!-- Navbar stuck nav toggler -->
              <button
                type="button"
                class="navbar-toggler d-none navbar-stuck-show me-3"
                data-bs-toggle="collapse"
                data-bs-target="#stuckNav"
                aria-controls="stuckNav"
                aria-expanded="false"
                aria-label="Toggle navigation in navbar stuck state"
              >
                <span class="navbar-toggler-icon"></span>
              </button>

              <!-- Theme switcher (light/dark/auto) -->
              <div class="dropdown">
                <button
                  type="button"
                  class="theme-switcher btn btn-icon btn-lg btn-outline-secondary fs-lg border-0 rounded-circle animate-scale"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                  aria-label="Toggle theme (light)"
                >
                  <span class="theme-icon-active d-flex animate-target">
                    <i class="ci-sun"></i>
                  </span>
                </button>
                <ul class="dropdown-menu" style="--cz-dropdown-min-width: 9rem">
                  <li>
                    <button
                      type="button"
                      class="dropdown-item active"
                      data-bs-theme-value="light"
                      aria-pressed="true"
                    >
                      <span class="theme-icon d-flex fs-base me-2">
                        <i class="ci-sun"></i>
                      </span>
                      <span class="theme-label">Light</span>
                      <i class="item-active-indicator ci-check ms-auto"></i>
                    </button>
                  </li>
                  <li>
                    <button
                      type="button"
                      class="dropdown-item"
                      data-bs-theme-value="dark"
                      aria-pressed="false"
                    >
                      <span class="theme-icon d-flex fs-base me-2">
                        <i class="ci-moon"></i>
                      </span>
                      <span class="theme-label">Dark</span>
                      <i class="item-active-indicator ci-check ms-auto"></i>
                    </button>
                  </li>
                  <li>
                    <button
                      type="button"
                      class="dropdown-item"
                      data-bs-theme-value="auto"
                      aria-pressed="false"
                    >
                      <span class="theme-icon d-flex fs-base me-2">
                        <i class="ci-auto"></i>
                      </span>
                      <span class="theme-label">Auto</span>
                      <i class="item-active-indicator ci-check ms-auto"></i>
                    </button>
                  </li>
                </ul>
              </div>

              <!-- Search toggle button visible on screens < 992px wide (lg breakpoint) -->
              <button
                type="button"
                class="btn btn-icon btn-lg fs-xl btn-outline-secondary border-0 rounded-circle animate-shake d-lg-none"
                data-bs-toggle="collapse"
                data-bs-target="#searchBar"
                aria-expanded="false"
                aria-controls="searchBar"
                aria-label="Toggle search bar"
              >
                <i class="ci-search animate-target"></i>
              </button>

              <!-- Account button visible on screens > 768px wide (md breakpoint) -->
              <a
                class="btn btn-icon btn-lg fs-lg btn-outline-secondary border-0 rounded-circle animate-shake d-none d-md-inline-flex"
                href="account-signin.html"
              >
                <i class="ci-user animate-target"></i>
                <span class="visually-hidden">Account</span>
              </a>

              <!-- Wishlist button visible on screens > 768px wide (md breakpoint) -->
              <a
                class="btn btn-icon btn-lg fs-lg btn-outline-secondary border-0 rounded-circle animate-pulse d-none d-md-inline-flex"
                href="account-wishlist.html"
              >
                <i class="ci-heart animate-target"></i>
                <span class="visually-hidden">Wishlist</span>
              </a>
            </div>
          </div>
        </div>
        <div class="navbar-stuck-hide pb-1"></div>
      </div>

      <!-- Search visible on screens < 992px wide (lg breakpoint). It is hidden inside collapse by default -->
      <div
        class="collapse position-absolute top-100 z-2 w-100 bg-dark d-lg-none"
        id="searchBar"
      >
        <div class="container position-relative my-3" data-bs-theme="dark">
          <i
            class="ci-search position-absolute top-50 translate-middle-y d-flex fs-lg text-white ms-3"
          ></i>
          <input
            type="search"
            class="form-control form-icon-start border-white rounded-pill"
            placeholder="Search the products"
            data-autofocus="collapse"
          />
        </div>
      </div>

      <!-- Main navigation that turns into offcanvas on screens < 992px wide (lg breakpoint) -->
      <div class="collapse navbar-stuck-hide" id="stuckNav">
        <nav
          class="offcanvas offcanvas-start"
          id="navbarNav"
          tabindex="-1"
          aria-labelledby="navbarNavLabel"
        >
          <div class="offcanvas-header py-3">
            <h5 class="offcanvas-title" id="navbarNavLabel">
              Browse Cartzilla
            </h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="offcanvas"
              aria-label="Close"
            ></button>
          </div>
          <div class="offcanvas-body py-3 py-lg-0">
            <div class="container px-0 px-lg-3">
              <div class="row">
                <!-- Navbar nav -->
                <div class="col-lg-9 d-lg-flex pt-3 pt-lg-0 ps-lg-0">
                  <ul class="navbar-nav position-relative">
                    <li class="nav-item dropdown me-lg-n1 me-xl-0">
                      <a
                        class="nav-link  active"
                        aria-current="page"
                        href="#"
                        role="button"
                        data-bs-toggle="dropdown"
                        data-bs-trigger="hover"
                        aria-expanded="false"
                        >Home</a
                      >
                    </li>
                    <li
                      class="nav-item dropdown position-static me-lg-n1 me-xl-0"
                    >
                      <a
                        class="nav-link "
                        href="#"
                        role="button"
                        data-bs-toggle="dropdown"
                        data-bs-trigger="hover"
                        aria-expanded="false"
                        >Shop</a
                      >
                    </li>
                    <li class="nav-item dropdown me-lg-n1 me-xl-0">
                      <a
                        class="nav-link dropdown-toggle"
                        href="#"
                        role="button"
                        data-bs-toggle="dropdown"
                        data-bs-trigger="hover"
                        data-bs-auto-close="outside"
                        aria-expanded="false"
                        >Account</a
                      >
                      <ul class="dropdown-menu">
                        <li class="dropend">
                          <a
                            class="dropdown-item dropdown-toggle"
                            href="#!"
                            role="button"
                            data-bs-toggle="dropdown"
                            data-bs-trigger="hover"
                            aria-expanded="false"
                            >Quản lý Tài Khoản</a
                          >
                          <ul class="dropdown-menu">
                            <li>
                              <a
                                class="dropdown-item"
                                href="<%= request.getContextPath() %>/login"
                                >Đăng nhập</a
                              >
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="<%= request.getContextPath() %>/register"
                                >Đăng kí</a
                              >
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="<%= request.getContextPath() %>/forgot-password"
                                >Quên mật khẩu</a
                              >
                            </li>
                          </ul>
                        </li>
                        <li>
                          <a class="dropdown-item" href="/Project-Finals/account-order">Lịch sử đơn hàng</a>
                          
                        </li>
                        <li>
                          <a class="dropdown-item" href="cart?action=viewCart&khachHangID=${gh.getKhachHang().getId()}"
                            >Giỏ hàng</a
                          >
                        </li>
                        <li>
                          <a class="dropdown-item" href="/Project-Finals/account-review"
                            >Đánh giá của tôi</a
                          >
                        </li>
                        <li>
                          <a class="dropdown-item" href="/Project-Finals/account-info"
                            >thông tin tài khoản</a
                          >
                        </li>
                        
                      </ul>
                    </li>
                    <li class="nav-item dropdown me-lg-n1 me-xl-0">
                      <a
                        class="nav-link dropdown-toggle"
                        href="#"
                        role="button"
                        data-bs-toggle="dropdown"
                        data-bs-trigger="hover"
                        data-bs-auto-close="outside"
                        aria-expanded="false"
                        >Pages</a
                      >
                      <ul class="dropdown-menu">
                        <li class="dropend">
                          <a
                            class="dropdown-item dropdown-toggle"
                            href="#!"
                            role="button"
                            data-bs-toggle="dropdown"
                            data-bs-trigger="hover"
                            aria-expanded="false"
                            >About</a
                          >
                          <ul class="dropdown-menu">
                            <li>
                              <a class="dropdown-item" href="about-v1.html"
                                >About v.1</a
                              >
                            </li>
                          </ul>
                        </li>
                        <li class="dropend">
                          <a
                            class="dropdown-item dropdown-toggle"
                            href="#!"
                            role="button"
                            data-bs-toggle="dropdown"
                            data-bs-trigger="hover"
                            aria-expanded="false"
                            >Blog</a
                          >
                          <ul class="dropdown-menu">
                            <li>
                              <a class="dropdown-item" href="blog-grid-v1.html"
                                >Grid View v.1</a
                              >
                            </li>
                          </ul>
                        </li>
                        <li class="dropend">
                          <a
                            class="dropdown-item dropdown-toggle"
                            href="#!"
                            role="button"
                            data-bs-toggle="dropdown"
                            data-bs-trigger="hover"
                            aria-expanded="false"
                            >Contact</a
                          >
                          <ul class="dropdown-menu">
                            <li>
                              <a class="dropdown-item" href="contact-v2.html"
                                >Contact v.2</a
                              >
                            </li>
                          </ul>
                        </li>
                        <li class="dropend">
                          <a
                            class="dropdown-item dropdown-toggle"
                            href="#!"
                            role="button"
                            data-bs-toggle="dropdown"
                            data-bs-trigger="hover"
                            aria-expanded="false"
                            >Help Center</a
                          >
                          <ul class="dropdown-menu">
                            <li>
                              <a
                                class="dropdown-item"
                                href="help-topics-v1.html"
                                >Help Topics v.1</a
                              >
                            </li>
                          </ul>
                        </li>
                        <li class="dropend">
                          <a
                            class="dropdown-item dropdown-toggle"
                            href="#!"
                            role="button"
                            data-bs-toggle="dropdown"
                            data-bs-trigger="hover"
                            aria-expanded="false"
                            >404 Error</a
                          >
                          <ul class="dropdown-menu">
                            <li>
                              <a
                                class="dropdown-item"
                                href="404-electronics.html"
                                >404 Electronics</a
                              >
                            </li>
                          </ul>
                        </li>
                        <li>
                          <a
                            class="dropdown-item"
                            href="terms-and-conditions.html"
                            >Terms &amp; Conditions</a
                          >
                        </li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="offcanvas-header border-top px-0 py-3 mt-3 d-md-none">
            <div class="nav nav-justified w-100">
              <a class="nav-link border-end" href="account-signin.html">
                <i class="ci-user fs-lg opacity-60 me-2"></i>
                Account
              </a>
              <a class="nav-link" href="account-wishlist.html">
                <i class="ci-heart fs-lg opacity-60 me-2"></i>
                Wishlist
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>

    <!-- Page content -->
    <main class="content-wrapper">
      <!-- Breadcrumb -->
      <nav class="container pt-3 my-3 my-md-4" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath}/">Trang chủ</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">Cart</li>
        </ol>
      </nav>

      <!-- Items in the cart + Order summary -->
      <section class="container pb-5 mb-2 mb-md-3 mb-lg-4 mb-xl-5">
        <h1 class="h3 mb-4">Shopping cart</h1>
        <c:if test="${not empty sessionScope.errorMessage}">
            <div style="color: red; font-weight: bold;">
                ${sessionScope.errorMessage}
            </div>
            <c:remove var="errorMessage" scope="session"/>
        </c:if>

        <c:if test="${not empty sessionScope.message}">
            <div style="color: green; font-weight: bold;">
                ${sessionScope.message}
            </div>
            <c:remove var="message" scope="session"/>
        </c:if>
        <div class="row">
          <!-- Items list -->
          <div class="col-lg-8">
            <div class="pe-lg-2 pe-xl-3 me-xl-3">
              <!-- Table of items -->
              <table class="table position-relative z-2 mb-4">
                <thead>
                  <tr>
                    <th scope="col" class="fs-sm fw-normal py-3 ps-0">
                      <span class="text-body">Sản phẩm</span>
                    </th>
                    <th
                      scope="col"
                      class="text-body fs-sm fw-normal py-3 d-none d-xl-table-cell"
                    >
                      <span class="text-body">Giá</span>
                    </th>
                    <th
                      scope="col"
                      class="text-body fs-sm fw-normal py-3 d-none d-md-table-cell"
                    >
                      <span class="text-body">Số lượng</span>
                    </th>
                    <th
                      scope="col"
                      class="text-body fs-sm fw-normal py-3 d-none d-md-table-cell"
                    >
                      <span class="text-body">Tổng tiền</span>
                    </th>
                    <th scope="col" class="py-0 px-0">
                      <div class="nav justify-content-end">
                        <button
                          type="button"
                          class="nav-link d-inline-block text-decoration-underline text-nowrap py-3 px-0"
                        >
                          Xóa sản phẩm
                        </button>
                      </div>
                    </th>
                  </tr>
                </thead>
                <tbody class="align-middle">
                    <c:forEach var="item" items="${gh.getItems()}">
                        <tr>
                            <form action="cart" method="post">
                                <input type="hidden" name="action" value="update">
                                <input type="hidden" name="productId" value="${item.getDienThoai().getId()}">
                                <input type="hidden" name="idGioHang" value="${gh.getIdGioHang()}">
                                <td class="py-3 ps-0">
                                  <div class="d-flex align-items-center">
                                    <a
                                      class="flex-shrink-0"
                                      href="shop-product-general-electronics.html"
                                    >
                                      <img
                                        src="${item.getDienThoai().getHinhAnh()}"
                                        width="110"
                                        alt="${item.getDienThoai().getTen()}"
                                      />
                                    </a>
                                    <div class="w-100 min-w-0 ps-2 ps-xl-3">
                                      <h5 class="d-flex animate-underline mb-2">
                                        <a
                                          class="d-block fs-sm fw-medium text-truncate animate-target"
                                          href=""
                                          >${item.getDienThoai().getTen()}</a
                                        >
                                      </h5>
                                      <ul class="list-unstyled gap-1 fs-xs mb-0">
                                        <li>
                                          <span class="text-body-secondary">Color:</span>
                                          <span class="text-dark-emphasis fw-medium"
                                            >${item.getDienThoai().getMauSac()}</span
                                          >
                                        </li>
                                        <li>
                                          <span class="text-body-secondary">Model:</span>
                                          <span class="text-dark-emphasis fw-medium"
                                            >${item.getDienThoai().getRom()}GB</span
                                          >
                                        </li>
                                        <li class="d-xl-none">
                                          <span class="text-body-secondary">Price:</span>
                                          <span class="text-dark-emphasis fw-medium"
                                            >${item.getDienThoai().getGia()}</span
                                          >
                                        </li>
                                      </ul>
                                      <div class="count-input rounded-2 d-md-none mt-3">
                                        <button
                                          type="button"
                                          class="btn btn-sm btn-icon"
                                          data-decrement=""
                                          aria-label="Decrement quantity"
                                        >
                                          <i class="ci-minus"></i>
                                        </button>
                                        <input
                                          type="number"
                                          class="form-control form-control-sm"
                                          value="1"
                                          readonly=""
                                        />
                                        <button
                                          type="button"
                                          class="btn btn-sm btn-icon"
                                          data-increment=""
                                          aria-label="Increment quantity"
                                        >
                                          <i class="ci-plus"></i>
                                        </button>
                                      </div>
                                    </div>
                                  </div>
                                </td>
                                <td class="h6 py-3 d-none d-xl-table-cell"><fmt:formatNumber value="${item.getDienThoai().getGia()}" type="number" /></td>
                                <td class="py-3 d-none d-md-table-cell">
                                  <div class="count-input">
                                    <input
                                      type="text"
                                      name="quantity"
                                      class="form-control"
                                      value="${item.getSoLuong()}"
                                      id="quantity-${item.getDienThoai().getId()}"
                                      />
                                    </button>
                                  </div>
                                  </div>
                                </td>
                                <td class="h6 py-3 d-none d-md-table-cell id="total-${item.getDienThoai().getId()}">
                                    <fmt:formatNumber value="${item.getDienThoai().getGia()*item.getSoLuong()}" type="number" />
                                </td>
                                <td class="text-center py-3">
                                    <input type="checkbox" name="selectedItems" value="${item.getGioHang().getIdGioHang()}:${item.getDienThoai().getId()}">
                                </td>
                                <td class="text-end py-3 px-0">
                                   <button
                                    type="submit"
                                    class="btn btn-icon fs-sm"
                                    data-bs-toggle="tooltip"
                                    data-bs-custom-class="tooltip-sm"
                                    data-bs-title="Edit"
                                    aria-label="Edit item"
                                  >
                                    <i class="bi bi-pencil"></i>    
                                    </button>
                                   
                                </td>
                            </form>
                                <td class="text-end py-3 px-0">
                                    <button
                                      type="button"
                                      class="btn-close fs-sm"
                                      type="button" 
                                      class="btn-close fs-sm" 
                                      data-bs-toggle="modal" 
                                      data-bs-target="#deleteModal_${item.getDienThoai().getId()}"
                                      >
                                    </button>
                                </td>
                        </tr>
                    </c:forEach>
                    <c:forEach var = "item" items ="${gh.getItems()}">
                        <div class="modal fade" id="deleteModal_${item.getDienThoai().getId()}" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="deleteModalLabel">Xác nhận xóa</h5>
                                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                  Bạn có chắc chắn muốn xóa sản phẩm này không?
                                </div>
                                <form id = "ItemForm_${item.getDienThoai().getId()}" action="cart" method="post">
                                    <input type="hidden" name="action" value="remove">
                                    <input type="hidden" name="productId" value="${item.getDienThoai().getId()}">
                                    <input type="hidden" name="idGioHang" value="${gh.getIdGioHang()}">
                                    <div class="modal-footer">
                                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                                      <button type="button" class="btn btn-danger" onclick="document.getElementById('ItemForm_${item.getDienThoai().getId()}').submit();">Xóa</button>
                                    </div>
                                </form>
                              </div>
                            </div>
                        </div>
                    </c:forEach>
                </tbody>
              </table>

              <div class="nav position-relative z-2 mb-4 mb-lg-0">
                <a
                  class="nav-link animate-underline px-0"
                  href="${pageContext.request.contextPath}/"
                >
                  <i class="ci-chevron-left fs-lg me-1"></i>
                  <span class="animate-target">Continue shopping</span>
                </a>
              </div>
            </div>
          </div>

          <!-- Order summary (sticky sidebar) -->
          <aside class="col-lg-4" style="margin-top: -100px">
            <div class="position-sticky top-0" style="padding-top: 100px">
              <div class="bg-body-tertiary rounded-5 p-4 mb-3">
                <div class="p-sm-2 p-lg-0 p-xl-2">
                  <ul class="list-unstyled fs-sm gap-3 mb-0">
                  </ul>
                  <div class="border-top pt-4 mt-4">
                    <a
                        class="btn btn-lg btn-primary w-100"
                        href="javascript:void(0);" 
                        id="checkoutButton"
                    >
                      Tiến hành thanh toán
                      <i class="ci-chevron-right fs-lg ms-1 me-n1"></i>
                    </a>
                    <script>
                        document.getElementById("checkoutButton").addEventListener("click", function() {
                            // Lấy tất cả các checkbox đã chọn
                            var selectedItems = [];
                            var checkboxes = document.querySelectorAll("input[name='selectedItems']:checked");

                            // Lặp qua tất cả các checkbox đã chọn và thu thập giá trị của chúng
                            checkboxes.forEach(function(checkbox) {
                                selectedItems.push(checkbox.value);
                            });

                            // Nếu có sản phẩm được chọn
                            if (selectedItems.length > 0) {
                                var checkoutUrl = "checkout?selectedItems=" + selectedItems.join(",");
                                window.location.href = checkoutUrl; // Chuyển hướng đến trang thanh toán
                            } else {
                                alert("Vui lòng chọn ít nhất một sản phẩm để thanh toán.");
                            }
                        });
                    </script>
                  </div>
                </div>
              </div>
            </div>
          </aside>
        </div>
      </section>
    </main>

    <!-- Page footer -->
    <footer class="footer position-relative bg-dark">
      <span
        class="position-absolute top-0 start-0 w-100 h-100 bg-body d-none d-block-dark"
      ></span>
      <div
        class="container position-relative z-1 pt-sm-2 pt-md-3 pt-lg-4"
        data-bs-theme="dark"
      >
        <!-- Columns with links that are turned into accordion on screens < 500px wide (sm breakpoint) -->
        <div class="accordion py-5" id="footerLinks">
          <div class="row">
            <div
              class="col-md-4 d-sm-flex flex-md-column align-items-center align-items-md-start pb-3 mb-sm-4"
            >
              <h4 class="mb-sm-0 mb-md-4 me-4">
                <a
                  class="text-dark-emphasis text-decoration-none"
                  href="home-electronics.html"
                  >Cartzilla</a
                >
              </h4>
              <p
                class="text-body fs-sm text-sm-end text-md-start mb-sm-0 mb-md-3 ms-0 ms-sm-auto ms-md-0 me-4"
              >
                Got questions? Contact us 24/7
              </p>
              <div class="dropdown" style="max-width: 250px">
                <button
                  type="button"
                  class="btn btn-light dropdown-toggle justify-content-between w-100 d-none-dark"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  Help and consultation
                </button>
                <button
                  type="button"
                  class="btn btn-secondary dropdown-toggle justify-content-between w-100 d-none d-flex-dark"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  Help and consultation
                </button>
                <ul class="dropdown-menu">
                  <li>
                    <a class="dropdown-item" href="#!">Help center &amp; FAQ</a>
                  </li>
                  <li><a class="dropdown-item" href="#!">Support chat</a></li>
                  <li>
                    <a class="dropdown-item" href="#!">Open support ticket</a>
                  </li>
                  <li><a class="dropdown-item" href="#!">Call center</a></li>
                </ul>
              </div>
            </div>
            <div class="col-md-8">
              <div class="row row-cols-1 row-cols-sm-3 gx-3 gx-md-4">
                <div class="accordion-item col border-0">
                  <h6 class="accordion-header" id="companyHeading">
                    <span class="text-dark-emphasis d-none d-sm-block"
                      >Company</span
                    >
                    <button
                      type="button"
                      class="accordion-button collapsed py-3 d-sm-none"
                      data-bs-toggle="collapse"
                      data-bs-target="#companyLinks"
                      aria-expanded="false"
                      aria-controls="companyLinks"
                    >
                      Company
                    </button>
                  </h6>
                  <div
                    class="accordion-collapse collapse d-sm-block"
                    id="companyLinks"
                    aria-labelledby="companyHeading"
                    data-bs-parent="#footerLinks"
                  >
                    <ul class="nav flex-column gap-2 pt-sm-3 pb-3 mt-n1 mb-1">
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >About company</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Our team</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Careers</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Contact us</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >News</a
                        >
                      </li>
                    </ul>
                  </div>
                  <hr class="d-sm-none my-0" />
                </div>
                <div class="accordion-item col border-0">
                  <h6 class="accordion-header" id="accountHeading">
                    <span class="text-dark-emphasis d-none d-sm-block"
                      >Account</span
                    >
                    <button
                      type="button"
                      class="accordion-button collapsed py-3 d-sm-none"
                      data-bs-toggle="collapse"
                      data-bs-target="#accountLinks"
                      aria-expanded="false"
                      aria-controls="accountLinks"
                    >
                      Account
                    </button>
                  </h6>
                  <div
                    class="accordion-collapse collapse d-sm-block"
                    id="accountLinks"
                    aria-labelledby="accountHeading"
                    data-bs-parent="#footerLinks"
                  >
                    <ul class="nav flex-column gap-2 pt-sm-3 pb-3 mt-n1 mb-1">
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Your account</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Shipping rates &amp; policies</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Refunds &amp; replacements</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Delivery info</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Order tracking</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Taxes &amp; fees</a
                        >
                      </li>
                    </ul>
                  </div>
                  <hr class="d-sm-none my-0" />
                </div>
                <div class="accordion-item col border-0">
                  <h6 class="accordion-header" id="customerHeading">
                    <span class="text-dark-emphasis d-none d-sm-block"
                      >Customer service</span
                    >
                    <button
                      type="button"
                      class="accordion-button collapsed py-3 d-sm-none"
                      data-bs-toggle="collapse"
                      data-bs-target="#customerLinks"
                      aria-expanded="false"
                      aria-controls="customerLinks"
                    >
                      Customer service
                    </button>
                  </h6>
                  <div
                    class="accordion-collapse collapse d-sm-block"
                    id="customerLinks"
                    aria-labelledby="customerHeading"
                    data-bs-parent="#footerLinks"
                  >
                    <ul class="nav flex-column gap-2 pt-sm-3 pb-3 mt-n1 mb-1">
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Payment methods</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Money back guarantee</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Product returns</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Support center</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Shipping</a
                        >
                      </li>
                      <li class="d-flex w-100 pt-1">
                        <a
                          class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                          href="#!"
                          >Terms &amp; conditions</a
                        >
                      </li>
                    </ul>
                  </div>
                  <hr class="d-sm-none my-0" />
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Category / tag links -->
        <div
          class="d-flex flex-column gap-3 pb-3 pb-md-4 pb-lg-5 mt-n2 mt-sm-n4 mt-lg-0 mb-4"
        >
          <ul class="nav align-items-center text-body-tertiary gap-2">
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Computers</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Smartphones</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >TV, Video</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Speakers</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Cameras</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Printers</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Video Games</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Headphones</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Wearable</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >HDD/SSD</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Smart Home</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Apple Devices</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Tablets</a
              >
            </li>
          </ul>
          <ul class="nav align-items-center text-body-tertiary gap-2">
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Monitors</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Scanners</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Servers</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Heating and Cooling</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >E-readers</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Data Storage</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Networking</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Power Strips</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Plugs and Outlets</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Detectors and Sensors</a
              >
            </li>
            <li class="px-1">/</li>
            <li class="animate-underline">
              <a class="nav-link fw-normal p-0 animate-target" href="#!"
                >Accessories</a
              >
            </li>
          </ul>
        </div>

        <!-- Copyright + Payment methods -->
        <div class="d-md-flex align-items-center border-top py-4">
          <div
            class="d-flex gap-2 gap-sm-3 justify-content-center ms-md-auto mb-4 mb-md-0 order-md-2"
          >
            <div>
              <img
                src="View/customer/assets/img/payment-methods/visa-dark-mode.svg"
                alt="Visa"
              />
            </div>
            <div>
              <img
                src="View/customer/assets/img/payment-methods/mastercard.svg"
                alt="Mastercard"
              />
            </div>
            <div>
              <img
                src="View/customer/assets/img/payment-methods/paypal-dark-mode.svg"
                alt="PayPal"
              />
            </div>
            <div>
              <img
                src="View/customer/assets/img/payment-methods/google-pay-dark-mode.svg"
                alt="Google Pay"
              />
            </div>
            <div>
              <img
                src="View/customer/assets/img/payment-methods/apple-pay-dark-mode.svg"
                alt="Apple Pay"
              />
            </div>
          </div>
          <p
            class="text-body fs-xs text-center text-md-start mb-0 me-4 order-md-1"
          >
            © All rights reserved. Made by
            <span class="animate-underline"
              ><a
                class="animate-target text-dark-emphasis fw-medium text-decoration-none"
                href="https://createx.studio/"
                target="_blank"
                rel="noreferrer"
                >Createx Studio</a
              ></span
            >
          </p>
        </div>
      </div>
    </footer>

    <!-- Back to top button -->
    <div
      class="floating-buttons position-fixed top-50 end-0 z-sticky me-3 me-xl-4 pb-4"
    >
      <a
        class="btn-scroll-top btn btn-sm bg-body border-0 rounded-pill shadow animate-slide-end"
        href="#top"
      >
        Top
        <i class="ci-arrow-right fs-base ms-1 me-n1 animate-target"></i>
        <span
          class="position-absolute top-0 start-0 w-100 h-100 border rounded-pill z-0"
        ></span>
        <svg
          class="position-absolute top-0 start-0 w-100 h-100 z-1"
          viewBox="0 0 62 32"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <rect
            x=".75"
            y=".75"
            width="60.5"
            height="30.5"
            rx="15.25"
            stroke="currentColor"
            stroke-width="1.5"
            stroke-miterlimit="10"
          ></rect>
        </svg>
      </a>
      <a
        class="btn btn-sm btn-outline-secondary text-uppercase bg-body rounded-pill shadow animate-rotate ms-2 me-n5"
        href="#customizer"
        style="font-size: 0.625rem; letter-spacing: 0.05rem"
        data-bs-toggle="offcanvas"
        role="button"
        aria-controls="customizer"
      >
        Customize<i class="ci-settings fs-base ms-1 me-n2 animate-target"></i>
      </a>
    </div>

    <!-- Vendor scripts -->
    <script src="View/customer/assets/vendor/swiper/swiper-bundle.min.js"></script>

    <!-- Bootstrap + Theme scripts -->
    <script src="View/customer/assets/js/theme.min.js"></script>
  </body>
</html>
