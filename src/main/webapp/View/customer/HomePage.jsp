<%-- 
    Document   : HomePage
    Created on : Nov 29, 2024, 11:06:13 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-pwa="true">
  <meta
    http-equiv="content-type"
    content="text/html;charset=utf-8"
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover"
    />
    <title>Cartzilla | Electronics Store</title>
    <meta
      name="description"
      content="Cartzilla - Multipurpose Bootstrap E-Commerce HTML Template"
    />
    <meta
      name="keywords"
      content="online shop, e-commerce, online store, market, multipurpose, product landing, cart, checkout, ui kit, light and dark mode, bootstrap, html5, css3, javascript, gallery, slider, mobile, pwa"
    />
    <meta name="author" content="Createx Studio" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <link rel="manifest" href="manifest.json" />
    <link
      rel="icon"
      type="image/png"
      href="View/customer/assets/app-icons/icon-32x32.png"
      sizes="32x32"
    />
    <link rel="apple-touch-icon" href="View/customer/View/customer/assets/app-icons/icon-180x180.png" />
    <script src="View/customer/assets/js/theme-switcher.js"></script>
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

    <link rel="stylesheet" href="View/customer/assets/vendor/swiper/swiper-bundle.min.css" />

    <link rel="preload" href="View/customer/assets/css/theme.min.css" as="style" />
    <link rel="preload" href="View/customer/assets/css/theme.rtl.min.css" as="style" />
    <link rel="stylesheet" href="View/customer/assets/css/theme.min.css" id="theme-styles" />

    <script src="View/customer/assets/js/customizer.min.js"></script>
  </head>

  <body>
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
        <div class="customizer-collapse collapse show" id="customizerSettings">
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
        <p class="fs-sm">
          Buy <span class="text-dark-emphasis fw-semibold">$183</span> more to
          get <span class="text-dark-emphasis fw-semibold">Free Shipping</span>
        </p>
        <div
          class="progress w-100"
          role="progressbar"
          aria-label="Free shipping progress"
          aria-valuenow="75"
          aria-valuemin="0"
          aria-valuemax="100"
          style="height: 4px"
        >
          <div
            class="progress-bar bg-warning rounded-pill"
            style="width: 75%"
          ></div>
        </div>
      </div>

      <!-- Items -->
      <div class="offcanvas-body d-flex flex-column gap-4 pt-2">
        <!-- Item -->
        <div class="d-flex align-items-center">
          <a class="flex-shrink-0" href="shop-product-general-electronics.html">
            <img
              src="View/customer/assets/img/shop/electronics/thumbs/08.png"
              width="110"
              alt="iPhone 14"
            />
          </a>
          <div class="w-100 min-w-0 ps-2 ps-sm-3">
            <h5 class="d-flex animate-underline mb-2">
              <a
                class="d-block fs-sm fw-medium text-truncate animate-target"
                href="shop-product-general-electronics.html"
                >Apple iPhone 14 128GB White</a
              >
            </h5>
            <div class="h6 pb-1 mb-2">$899.00</div>
            <div class="d-flex align-items-center justify-content-between">
              <div class="count-input rounded-2">
                <button
                  type="button"
                  class="btn btn-icon btn-sm"
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
                  class="btn btn-icon btn-sm"
                  data-increment=""
                  aria-label="Increment quantity"
                >
                  <i class="ci-plus"></i>
                </button>
              </div>
              <button
                type="button"
                class="btn-close fs-sm"
                data-bs-toggle="tooltip"
                data-bs-custom-class="tooltip-sm"
                data-bs-title="Remove"
                aria-label="Remove from cart"
              ></button>
            </div>
          </div>
        </div>

        <!-- Item -->
        <div class="d-flex align-items-center">
          <a
            class="position-relative flex-shrink-0"
            href="shop-product-general-electronics.html"
          >
            <span class="badge text-bg-danger position-absolute top-0 start-0"
              >-10%</span
            >
            <img
              src="View/customer/assets/img/shop/electronics/thumbs/09.png"
              width="110"
              alt="iPad Pro"
            />
          </a>
          <div class="w-100 min-w-0 ps-2 ps-sm-3">
            <h5 class="d-flex animate-underline mb-2">
              <a
                class="d-block fs-sm fw-medium text-truncate animate-target"
                href="shop-product-general-electronics.html"
                >Tablet Apple iPad Pro M2</a
              >
            </h5>
            <div class="h6 pb-1 mb-2">
              $989.00
              <del class="text-body-tertiary fs-xs fw-normal">$1,099.00</del>
            </div>
            <div class="d-flex align-items-center justify-content-between">
              <div class="count-input rounded-2">
                <button
                  type="button"
                  class="btn btn-icon btn-sm"
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
                  class="btn btn-icon btn-sm"
                  data-increment=""
                  aria-label="Increment quantity"
                >
                  <i class="ci-plus"></i>
                </button>
              </div>
              <button
                type="button"
                class="btn-close fs-sm"
                data-bs-toggle="tooltip"
                data-bs-custom-class="tooltip-sm"
                data-bs-title="Remove"
                aria-label="Remove from cart"
              ></button>
            </div>
          </div>
        </div>

        <!-- Item -->
        <div class="d-flex align-items-center">
          <a class="flex-shrink-0" href="shop-product-general-electronics.html">
            <img
              src="View/customer/assets/img/shop/electronics/thumbs/01.png"
              width="110"
              alt="Smart Watch"
            />
          </a>
          <div class="w-100 min-w-0 ps-2 ps-sm-3">
            <h5 class="d-flex animate-underline mb-2">
              <a
                class="d-block fs-sm fw-medium text-truncate animate-target"
                href="shop-product-general-electronics.html"
                >Smart Watch Series 7, White</a
              >
            </h5>
            <div class="h6 pb-1 mb-2">$429.00</div>
            <div class="d-flex align-items-center justify-content-between">
              <div class="count-input rounded-2">
                <button
                  type="button"
                  class="btn btn-icon btn-sm"
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
                  class="btn btn-icon btn-sm"
                  data-increment=""
                  aria-label="Increment quantity"
                >
                  <i class="ci-plus"></i>
                </button>
              </div>
              <button
                type="button"
                class="btn-close fs-sm"
                data-bs-toggle="tooltip"
                data-bs-custom-class="tooltip-sm"
                data-bs-title="Remove"
                aria-label="Remove from cart"
              ></button>
            </div>
          </div>
        </div>
      </div>

      <div class="offcanvas-header flex-column align-items-start">
        <div
          class="d-flex align-items-center justify-content-between w-100 mb-3 mb-md-4"
        >
          <span class="text-light-emphasis">Subtotal:</span>
          <span class="h6 mb-0">$2,317.00</span>
        </div>
        <div class="d-flex w-100 gap-3">
          <a class="btn btn-lg btn-secondary w-100" href="checkout-v1-cart.html"
            >View cart</a
          >
          <a
            class="btn btn-lg btn-primary w-100"
            href="checkout-v1-delivery-1.html"
            >Checkout</a
          >
        </div>
      </div>
    </div>

    <!-- Navigation bar (Page header) -->
    <header
      class="navbar navbar-expand-lg navbar-dark bg-dark d-block z-fixed p-0"
      data-sticky-navbar='{"offset": 500}'
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

            <a href="index.html" class="navbar-brand me-0">
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

              <!-- Cart button -->
              <button
                type="button"
                class="btn btn-icon btn-lg btn-secondary position-relative rounded-circle ms-2"
                data-bs-toggle="offcanvas"
                data-bs-target="#shoppingCart"
                aria-controls="shoppingCart"
                aria-label="Shopping cart"
              >
                <span
                  class="position-absolute top-0 start-100 mt-n1 ms-n3 badge text-bg-success border border-3 border-dark rounded-pill"
                  style="
                    --cz-badge-padding-y: 0.25em;
                    --cz-badge-padding-x: 0.42em;
                  "
                  >3</span
                >
                <span
                  class="position-absolute top-0 start-0 d-flex align-items-center justify-content-center w-100 h-100 rounded-circle animate-slide-end fs-lg"
                >
                  <i class="ci-shopping-cart animate-target ms-n1"></i>
                </span>
              </button>
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
                        class="nav-link dropdown-toggle active"
                        aria-current="page"
                        href="#"
                        role="button"
                        data-bs-toggle="dropdown"
                        data-bs-trigger="hover"
                        aria-expanded="false"
                        >Home</a
                      >
                      <ul class="dropdown-menu">
                        <li class="hover-effect-opacity px-2 mx-n2">
                          <a
                            class="dropdown-item d-block mb-0"
                            href="home-electronics.html"
                          >
                            <span class="fw-medium">Electronics Store</span>
                            <span class="d-block fs-xs text-body-secondary"
                              >Megamenu + Hero slider</span
                            >
                            <div
                              class="d-none d-lg-block hover-effect-target position-absolute top-0 start-100 bg-body border border-light-subtle rounded rounded-start-0 transition-none invisible opacity-0 pt-2 px-2 ms-n2"
                              style="
                                width: 212px;
                                height: calc(100% + 2px);
                                margin-top: -1px;
                              "
                            >
                              <img
                                class="position-relative z-2 d-none-dark"
                                src="View/customer/assets/img/mega-menu/demo-preview/electronics-light.jpg"
                                alt="Electronics Store"
                              />
                              <img
                                class="position-relative z-2 d-none d-block-dark"
                                src="View/customer/assets/img/mega-menu/demo-preview/electronics-dark.jpg"
                                alt="Electronics Store"
                              />
                              <span
                                class="position-absolute top-0 start-0 w-100 h-100 rounded rounded-start-0 d-none-dark"
                                style="
                                  box-shadow: 0.875rem 0.5rem 2rem -0.5rem #676f7b;
                                  opacity: 0.1;
                                "
                              ></span>
                              <span
                                class="position-absolute top-0 start-0 w-100 h-100 rounded rounded-start-0 d-none d-block-dark"
                                style="
                                  box-shadow: 0.875rem 0.5rem 1.875rem -0.5rem #080b12;
                                  opacity: 0.25;
                                "
                              ></span>
                            </div>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li
                      class="nav-item dropdown position-static me-lg-n1 me-xl-0"
                    >
                      <a
                        class="nav-link dropdown-toggle"
                        href="#"
                        role="button"
                        data-bs-toggle="dropdown"
                        data-bs-trigger="hover"
                        aria-expanded="false"
                        >Shop</a
                      >
                      <div class="dropdown-menu rounded-4 p-4">
                        <div class="d-flex flex-column flex-lg-row gap-4">
                          <div style="min-width: 190px">
                            <div class="h6 mb-2">Electronics Store</div>
                            <ul class="nav flex-column gap-2 mt-0">
                              <li class="d-flex w-100 pt-1">
                                <a
                                  class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                                  href="shop-categories-electronics.html"
                                  >Categories Page</a
                                >
                              </li>
                              <li class="d-flex w-100 pt-1">
                                <a
                                  class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                                  href="shop-catalog-electronics.html"
                                  >Catalog with Side Filters</a
                                >
                              </li>
                              <li class="d-flex w-100 pt-1">
                                <a
                                  class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                                  href="shop-product-general-electronics.html"
                                  >Product General Info</a
                                >
                              </li>
                              <li class="d-flex w-100 pt-1">
                                <a
                                  class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                                  href="shop-product-details-electronics.html"
                                  >Product Details</a
                                >
                              </li>
                              <li class="d-flex w-100 pt-1">
                                <a
                                  class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0"
                                  href="shop-product-reviews-electronics.html"
                                  >Product Reviews</a
                                >
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
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
                            >Auth Pages</a
                          >
                          <ul class="dropdown-menu">
                            <li>
                              <a
                                class="dropdown-item"
                                href="account-signin.html"
                                >Sign In</a
                              >
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="account-signup.html"
                                >Sign Up</a
                              >
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="account-password-recovery.html"
                                >Password Recovery</a
                              >
                            </li>
                          </ul>
                        </li>
                        <li>
                          <a class="dropdown-item" href="account-orders.html"
                            >Orders History</a
                          >
                        </li>
                        <li>
                          <a class="dropdown-item" href="account-wishlist.html"
                            >Wishlist</a
                          >
                        </li>
                        <li>
                          <a class="dropdown-item" href="account-payment.html"
                            >Payment Methods</a
                          >
                        </li>
                        <li>
                          <a class="dropdown-item" href="account-reviews.html"
                            >My Reviews</a
                          >
                        </li>
                        <li>
                          <a class="dropdown-item" href="account-info.html"
                            >Personal Info</a
                          >
                        </li>
                        <li>
                          <a class="dropdown-item" href="account-addresses.html"
                            >Addresses</a
                          >
                        </li>
                        <li>
                          <a
                            class="dropdown-item"
                            href="account-notifications.html"
                            >Notifications</a
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
                    <li class="nav-item me-lg-n2 me-xl-0">
                      <a class="nav-link" href="docs/installation.html">Docs</a>
                    </li>
                    <li class="nav-item me-lg-n2 me-xl-0">
                      <a class="nav-link" href="docs/typography.html"
                        >Components</a
                      >
                    </li>
                  </ul>
                  <hr class="d-lg-none my-3" />
                  <ul class="navbar-nav ms-auto">
                    <li class="nav-item dropdown me-lg-n2 me-xl-n1">
                      <a
                        class="nav-link dropdown-toggle fs-sm px-3"
                        href="#!"
                        role="button"
                        data-bs-toggle="dropdown"
                        data-bs-trigger="hover"
                        aria-expanded="false"
                        >Eng</a
                      >
                      <ul
                        class="dropdown-menu fs-sm"
                        style="
                          --cz-dropdown-min-width: 7.5rem;
                          --cz-dropdown-spacer: 0.25rem;
                        "
                      >
                        <li><a class="dropdown-item" href="#!">Français</a></li>
                        <li><a class="dropdown-item" href="#!">Deutsch</a></li>
                        <li><a class="dropdown-item" href="#!">Italiano</a></li>
                      </ul>
                    </li>
                    <li class="nav-item dropdown me-lg-n1">
                      <a
                        class="nav-link dropdown-toggle fs-sm px-3"
                        href="#!"
                        role="button"
                        data-bs-toggle="dropdown"
                        data-bs-trigger="hover"
                        aria-expanded="false"
                        >USD ($)</a
                      >
                      <ul
                        class="dropdown-menu dropdown-menu-end fs-sm"
                        style="
                          --cz-dropdown-min-width: 7rem;
                          --cz-dropdown-spacer: 0.25rem;
                        "
                      >
                        <li><a class="dropdown-item" href="#!">€ EUR</a></li>
                        <li><a class="dropdown-item" href="#!">£ UKP</a></li>
                        <li><a class="dropdown-item" href="#!">¥ JPY</a></li>
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
      <!-- Hero slider -->
      <section class="container pt-4">
        <div class="row">
          <div class="col-lg-9 offset-lg-2">
            <div class="position-relative">
              <span
                class="position-absolute top-0 start-0 w-100 h-100 rounded-5 d-none-dark rtl-flip"
                style="
                  background: linear-gradient(90deg, #accbee 0%, #e7f0fd 100%);
                "
              ></span>
              <span
                class="position-absolute top-0 start-0 w-100 h-100 rounded-5 d-none d-block-dark rtl-flip"
                style="
                  background: linear-gradient(90deg, #1b273a 0%, #1f2632 100%);
                "
              ></span>
              <div class="row justify-content-center position-relative z-2">
                <div
                  class="col-xl-5 col-xxl-4 offset-xxl-1 d-flex align-items-center mt-xl-n3"
                >
                  <!-- Text content master slider -->
                  <div
                    class="swiper px-5 pe-xl-0 ps-xxl-0 me-xl-n5"
                    data-swiper='{
                    "spaceBetween": 64,
                    "loop": true,
                    "speed": 400,
                    "controlSlider": "#sliderImages",
                    "autoplay": {
                      "delay": 5500,
                      "disableOnInteraction": false
                    },
                    "scrollbar": {
                      "el": ".swiper-scrollbar"
                    }
                  }'
                  >
                    <div class="swiper-wrapper">
                      <div
                        class="swiper-slide text-center text-xl-start pt-5 py-xl-5"
                      >
                        <p class="text-body">Deal of the week</p>
                        <h2 class="display-4 pb-2 pb-xl-4">
                          Powerful iPad Pro M2
                        </h2>
                        <a
                          class="btn btn-lg btn-primary"
                          href="shop-product-general-electronics.html"
                        >
                          Shop now
                          <i class="ci-arrow-up-right fs-lg ms-2 me-n1"></i>
                        </a>
                      </div>

                    </div>
                  </div>
                </div>
                <div class="col-9 col-sm-7 col-md-6 col-lg-5 col-xl-7">
                  <!-- Binded images (controlled slider) -->
                  <div
                    class="swiper user-select-none"
                    id="sliderImages"
                    data-swiper='{
                    "allowTouchMove": false,
                    "loop": true,
                    "effect": "fade",
                    "fadeEffect": {
                      "crossFade": true
                    }
                  }'
                  >
                    <div class="swiper-wrapper">
                      <div class="swiper-slide d-flex justify-content-end">
                        <div
                          class="ratio rtl-flip"
                          style="
                            max-width: 495px;
                            --cz-aspect-ratio: calc(537 / 495 * 100%);
                          "
                        >
                          <img
                            src="View/customer/assets/img/home/electronics/hero-slider/01.png"
                            alt="Image"
                          />
                        </div>
                      </div>
                      <div class="swiper-slide d-flex justify-content-end">
                        <div
                          class="ratio rtl-flip"
                          style="
                            max-width: 495px;
                            --cz-aspect-ratio: calc(537 / 495 * 100%);
                          "
                        >
                          <img
                            src="View/customer/assets/img/home/electronics/hero-slider/02.png"
                            alt="Image"
                          />
                        </div>
                      </div>
                      <div class="swiper-slide d-flex justify-content-end">
                        <div
                          class="ratio rtl-flip"
                          style="
                            max-width: 495px;
                            --cz-aspect-ratio: calc(537 / 495 * 100%);
                          "
                        >
                          <img
                            src="View/customer/assets/img/home/electronics/hero-slider/03.png"
                            alt="Image"
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Scrollbar -->
              <div class="row justify-content-center" data-bs-theme="dark">
                <div class="col-xxl-10">
                  <div class="position-relative mx-5 mx-xxl-0">
                    <div class="swiper-scrollbar mb-4"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="container pt-5 mt-1 mt-sm-3 mt-lg-4">
        <div class="row row-cols-2 row-cols-md-4 g-4">
          <!-- Item -->
          <div class="col">
            <div class="d-flex flex-column flex-xxl-row align-items-center">
              <div
                class="d-flex text-dark-emphasis bg-body-tertiary rounded-circle p-4 mb-3 mb-xxl-0"
              >
                <i class="ci-delivery fs-2 m-xxl-1"></i>
              </div>
              <div class="text-center text-xxl-start ps-xxl-3">
                <h3 class="h6 mb-1">Free Shipping &amp; Returns</h3>
                <p class="fs-sm mb-0">For all orders over $199.00</p>
              </div>
            </div>
          </div>

          <!-- Item -->
          <div class="col">
            <div class="d-flex flex-column flex-xxl-row align-items-center">
              <div
                class="d-flex text-dark-emphasis bg-body-tertiary rounded-circle p-4 mb-3 mb-xxl-0"
              >
                <i class="ci-credit-card fs-2 m-xxl-1"></i>
              </div>
              <div class="text-center text-xxl-start ps-xxl-3">
                <h3 class="h6 mb-1">Secure Payment</h3>
                <p class="fs-sm mb-0">We ensure secure payment</p>
              </div>
            </div>
          </div>

          <!-- Item -->
          <div class="col">
            <div class="d-flex flex-column flex-xxl-row align-items-center">
              <div
                class="d-flex text-dark-emphasis bg-body-tertiary rounded-circle p-4 mb-3 mb-xxl-0"
              >
                <i class="ci-refresh-cw fs-2 m-xxl-1"></i>
              </div>
              <div class="text-center text-xxl-start ps-xxl-3">
                <h3 class="h6 mb-1">Money Back Guarantee</h3>
                <p class="fs-sm mb-0">Returning money 30 days</p>
              </div>
            </div>
          </div>

          <!-- Item -->
          <div class="col">
            <div class="d-flex flex-column flex-xxl-row align-items-center">
              <div
                class="d-flex text-dark-emphasis bg-body-tertiary rounded-circle p-4 mb-3 mb-xxl-0"
              >
                <i class="ci-chat fs-2 m-xxl-1"></i>
              </div>
              <div class="text-center text-xxl-start ps-xxl-3">
                <h3 class="h6 mb-1">24/7 Customer Support</h3>
                <p class="fs-sm mb-0">Friendly customer support</p>
              </div>
            </div>
          </div>
        </div>
      </section>
      
      <section class="container pt-5 mt-2 mt-sm-3 mt-lg-4">
        <div
          class="d-flex align-items-center justify-content-between border-bottom pb-3 pb-md-4"
        >
          <h2 class="h3 mb-0">Products</h2>
          <div class="nav ms-3">
            <a
              class="nav-link animate-underline px-0 py-2"
              href="shop-catalog-electronics.html"
            >
              <span class="animate-target">View all</span>
              <i class="ci-chevron-right fs-base ms-1"></i>
            </a>
          </div>
        </div>

        <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 g-4 pt-4">
          <!-- Item -->
        <c:forEach var = "product" items ="${dt}">
            <div class="col">
            <div
              class="product-card animate-underline hover-effect-opacity bg-body rounded"
            >
              <div class="position-relative">
                <div
                  class="position-absolute top-0 end-0 z-2 hover-effect-target opacity-0 mt-3 me-3"
                >
                  <div class="d-flex flex-column gap-2">
                    <button
                      type="button"
                      class="btn btn-icon btn-secondary animate-pulse d-none d-lg-inline-flex"
                      aria-label="Add to Wishlist"
                    >
                      <i class="ci-heart fs-base animate-target"></i>
                    </button>
                    <button
                      type="button"
                      class="btn btn-icon btn-secondary animate-rotate d-none d-lg-inline-flex"
                      aria-label="Compare"
                    >
                      <i class="ci-refresh-cw fs-base animate-target"></i>
                    </button>
                  </div>
                </div>
                <div
                  class="dropdown d-lg-none position-absolute top-0 end-0 z-2 mt-2 me-2"
                >
                  <button
                    type="button"
                    class="btn btn-icon btn-sm btn-secondary bg-body"
                    data-bs-toggle="dropdown"
                    aria-expanded="false"
                    aria-label="More actions"
                  >
                    <i class="ci-more-vertical fs-lg"></i>
                  </button>
                  <ul
                    class="dropdown-menu dropdown-menu-end fs-xs p-2"
                    style="min-width: auto"
                  >
                    <li>
                      <a class="dropdown-item" href="#!">
                        <i class="ci-heart fs-sm ms-n1 me-2"></i>
                        Add to Wishlist
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#!">
                        <i class="ci-refresh-cw fs-sm ms-n1 me-2"></i>
                        Compare
                      </a>
                    </li>
                  </ul>
                </div>
                <a
                  class="d-block rounded-top overflow-hidden p-3 p-sm-4"
                  href="shop-product-general-electronics.html"
                >
                  <span
                    class="badge bg-danger position-absolute top-0 start-0 mt-2 ms-2 mt-lg-3 ms-lg-3"
                    >-21%</span
                  >
                  <div
                    class="ratio"
                    style="--cz-aspect-ratio: calc(240 / 258 * 100%)"
                  >
                    <img
                      src="View/customer/assets/img/shop/electronics/01.png"
                      alt="VR Glasses"
                    />
                  </div>
                </a>
              </div>
              <div class="w-100 min-w-0 px-1 pb-2 px-sm-3 pb-sm-3">
                <div class="d-flex align-items-center gap-2 mb-2">
                  <div class="d-flex gap-1 fs-xs">
                    <i class="ci-star-filled text-warning"></i>
                    <i class="ci-star-filled text-warning"></i>
                    <i class="ci-star-filled text-warning"></i>
                    <i class="ci-star-filled text-warning"></i>
                    <i class="ci-star text-body-tertiary opacity-75"></i>
                  </div>
                  <span class="text-body-tertiary fs-xs">(123)</span>
                </div>
                <h3 class="pb-1 mb-2">
                  <a
                    class="d-block fs-sm fw-medium text-truncate"
                    href="shop-product-general-electronics.html"
                  >
                    <span class="animate-target"
                      >${product.getTen()}</span
                    >
                  </a>
                </h3>
                <div class="d-flex align-items-center justify-content-between">
                  <div class="h5 lh-1 mb-0">
                    ${product.getGia()}
                    <del class="text-body-tertiary fs-sm fw-normal"
                      >${product.getGia()*0.3}</del
                    >
                  </div>
                  <button
                    type="button"
                    class="product-card-button btn btn-icon btn-secondary animate-slide-end ms-2"
                    aria-label="Add to Cart"
                  >
                    <i class="ci-shopping-cart fs-base animate-target"></i>
                  </button>
                </div>
              </div>
              <div
                class="product-card-details position-absolute top-100 start-0 w-100 bg-body rounded-bottom shadow mt-n2 p-3 pt-1"
              >
                <span
                  class="position-absolute top-0 start-0 w-100 bg-body mt-n2 py-2"
                ></span>
                <ul class="list-unstyled d-flex flex-column gap-2 m-0">
                  <li class="d-flex align-items-center">
                    <span class="fs-xs">Display:</span>
                    <span
                      class="d-block flex-grow-1 border-bottom border-dashed px-1 mt-2 mx-2"
                    ></span>
                    <span class="text-dark-emphasis fs-xs fw-medium text-end"
                      >OLED 1440x1600</span
                    >
                  </li>
                  <li class="d-flex align-items-center">
                    <span class="fs-xs">Graphics:</span>
                    <span
                      class="d-block flex-grow-1 border-bottom border-dashed px-1 mt-2 mx-2"
                    ></span>
                    <span class="text-dark-emphasis fs-xs fw-medium text-end"
                      >Adreno 540</span
                    >
                  </li>
                  <li class="d-flex align-items-center">
                    <span class="fs-xs">Sound:</span>
                    <span
                      class="d-block flex-grow-1 border-bottom border-dashed px-1 mt-2 mx-2"
                    ></span>
                    <span class="text-dark-emphasis fs-xs fw-medium text-end"
                      >2x3.5mm jack</span
                    >
                  </li>
                  <li class="d-flex align-items-center">
                    <span class="fs-xs">Input:</span>
                    <span
                      class="d-block flex-grow-1 border-bottom border-dashed px-1 mt-2 mx-2"
                    ></span>
                    <span class="text-dark-emphasis fs-xs fw-medium text-end"
                      >4 built-in cameras</span
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </c:forEach>
        </div>
      </section>

      <!-- Sale Banner (CTA) -->
      <section class="container pt-5 mt-sm-2 mt-md-3 mt-lg-4">
        <div class="row g-0">
          <div class="col-md-3 mb-n4 mb-md-0">
            <div
              class="position-relative d-flex flex-column align-items-center justify-content-center h-100 py-5"
            >
              <div
                class="position-absolute top-0 start-0 w-100 h-100 d-none d-md-block"
              >
                <span
                  class="position-absolute top-0 start-0 w-100 h-100 rounded-5 d-none-dark"
                  style="background-color: #accbee"
                ></span>
                <span
                  class="position-absolute top-0 start-0 w-100 h-100 rounded-5 d-none d-block-dark"
                  style="background-color: #1b273a"
                ></span>
              </div>
              <div
                class="position-absolute top-0 start-0 w-100 h-100 d-md-none"
              >
                <span
                  class="position-absolute top-0 start-0 w-100 h-100 rounded-top-5 d-none-dark"
                  style="
                    background: linear-gradient(
                      90deg,
                      #accbee 0%,
                      #e7f0fd 100%
                    );
                  "
                ></span>
                <span
                  class="position-absolute top-0 start-0 w-100 h-100 rounded-top-5 d-none d-block-dark"
                  style="
                    background: linear-gradient(
                      90deg,
                      #1b273a 0%,
                      #1f2632 100%
                    );
                  "
                ></span>
              </div>
              <div
                class="position-relative z-1 display-1 text-dark-emphasis text-nowrap mb-0"
              >
                20
                <span class="d-inline-block ms-n2">
                  <span class="d-block fs-1">%</span>
                  <span class="d-block fs-5">OFF</span>
                </span>
              </div>
            </div>
          </div>
          <div class="col-md-9 position-relative">
            <div
              class="position-absolute top-0 start-0 h-100 overflow-hidden rounded-pill z-2 d-none d-md-block"
              style="color: var(--cz-body-bg); margin-left: -2px"
            >
              <svg
                width="4"
                height="436"
                viewBox="0 0 4 436"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  d="M2 0L1.99998 436"
                  stroke="currentColor"
                  stroke-width="3"
                  stroke-dasharray="8 12"
                  stroke-linecap="round"
                ></path>
              </svg>
            </div>
            <div class="position-relative">
              <span
                class="position-absolute top-0 start-0 w-100 h-100 rounded-5 d-none-dark rtl-flip"
                style="
                  background: linear-gradient(90deg, #accbee 0%, #e7f0fd 100%);
                "
              ></span>
              <span
                class="position-absolute top-0 start-0 w-100 h-100 rounded-5 d-none d-block-dark rtl-flip"
                style="
                  background: linear-gradient(90deg, #1b273a 0%, #1f2632 100%);
                "
              ></span>
              <div class="row align-items-center position-relative z-2">
                <div class="col-md-6 mb-3 mb-md-0">
                  <div
                    class="text-center text-md-start py-md-5 px-4 ps-md-5 pe-md-0 me-md-n5"
                  >
                    <h3 class="text-uppercase fw-bold ps-xxl-3 pb-2 mb-1">
                      Seasonal weekly sale 2024
                    </h3>
                    <p class="text-body-emphasis ps-xxl-3 mb-0">
                      Use code
                      <span
                        class="d-inline-block fw-semibold bg-white text-dark rounded-pill py-1 px-2"
                        >Sale 2024</span
                      >
                      to get best offer
                    </p>
                  </div>
                </div>
                <div
                  class="col-md-6 d-flex justify-content-center justify-content-md-end pb-5 pb-md-0"
                >
                  <div class="me-xxl-4">
                    <img
                      src="View/customer/assets/img/home/electronics/banner/camera.png"
                      class="d-block rtl-flip"
                      width="420"
                      alt="Camera"
                    />
                    <div
                      class="d-none d-lg-block"
                      style="margin-bottom: -9%"
                    ></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="d-none d-lg-block" style="padding-bottom: 3%"></div>
      </section>

      <!-- Special offers (Carousel) -->
      <section class="container pt-5 mt-2 mt-sm-3 mt-lg-4">
        <!-- Heading + Countdown -->
        <div
          class="d-flex align-items-start align-items-md-center justify-content-between border-bottom pb-3 pb-md-4"
        >
          <div class="d-md-flex align-items-center">
            <h2 class="h3 pe-3 me-3 mb-md-0">Special offers for you</h2>

            <!-- Replace "demoDate" inside data-countdown-date attribute with the real date, ex: "10/15/2025 12:00:00" -->
            <div
              class="d-flex align-items-center"
              data-countdown-date="demoDate"
            >
              <div class="btn btn-primary pe-none px-2">
                <span data-days=""></span>
                <span>d</span>
              </div>
              <div
                class="animate-blinking text-body-tertiary fs-lg fw-medium mx-2"
              >
                :
              </div>
              <div class="btn btn-primary pe-none px-2">
                <span data-hours=""></span>
                <span>h</span>
              </div>
              <div
                class="animate-blinking text-body-tertiary fs-lg fw-medium mx-2"
              >
                :
              </div>
              <div class="btn btn-primary pe-none px-2">
                <span data-minutes=""></span>
                <span>m</span>
              </div>
            </div>
          </div>
          <div class="nav ms-3">
            <a
              class="nav-link animate-underline px-0 py-2"
              href="shop-catalog-electronics.html"
            >
              <span class="animate-target text-nowrap">View all</span>
              <i class="ci-chevron-right fs-base ms-1"></i>
            </a>
          </div>
        </div>

        <!-- Product carousel -->
        <div class="position-relative mx-md-1">
          <!-- External slider prev/next buttons visible on screens > 500px wide (sm breakpoint) -->
          <button
            type="button"
            class="offers-prev btn btn-icon btn-outline-secondary bg-body rounded-circle animate-slide-start position-absolute top-50 start-0 z-2 translate-middle-y ms-n1 d-none d-sm-inline-flex"
            aria-label="Prev"
          >
            <i class="ci-chevron-left fs-lg animate-target"></i>
          </button>
          <button
            type="button"
            class="offers-next btn btn-icon btn-outline-secondary bg-body rounded-circle animate-slide-end position-absolute top-50 end-0 z-2 translate-middle-y me-n1 d-none d-sm-inline-flex"
            aria-label="Next"
          >
            <i class="ci-chevron-right fs-lg animate-target"></i>
          </button>

          <!-- Slider -->
          <div
            class="swiper py-4 px-sm-3"
            data-swiper='{
            "slidesPerView": 2,
            "spaceBetween": 24,
            "loop": true,
            "navigation": {
              "prevEl": ".offers-prev",
              "nextEl": ".offers-next"
            },
            "breakpoints": {
              "768": {
                "slidesPerView": 3
              },
              "992": {
                "slidesPerView": 4
              }
            }
          }'
          >
            <div class="swiper-wrapper">
              <!-- Item -->
              <div class="swiper-slide">
                <div
                  class="product-card animate-underline hover-effect-opacity bg-body rounded"
                >
                  <div class="position-relative">
                    <div
                      class="position-absolute top-0 end-0 z-2 hover-effect-target opacity-0 mt-3 me-3"
                    >
                      <div class="d-flex flex-column gap-2">
                        <button
                          type="button"
                          class="btn btn-icon btn-secondary animate-pulse d-none d-lg-inline-flex"
                          aria-label="Add to Wishlist"
                        >
                          <i class="ci-heart fs-base animate-target"></i>
                        </button>
                        <button
                          type="button"
                          class="btn btn-icon btn-secondary animate-rotate d-none d-lg-inline-flex"
                          aria-label="Compare"
                        >
                          <i class="ci-refresh-cw fs-base animate-target"></i>
                        </button>
                      </div>
                    </div>
                    <div
                      class="dropdown d-lg-none position-absolute top-0 end-0 z-2 mt-2 me-2"
                    >
                      <button
                        type="button"
                        class="btn btn-icon btn-sm btn-secondary bg-body"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                        aria-label="More actions"
                      >
                        <i class="ci-more-vertical fs-lg"></i>
                      </button>
                      <ul
                        class="dropdown-menu dropdown-menu-end fs-xs p-2"
                        style="min-width: auto"
                      >
                        <li>
                          <a class="dropdown-item" href="#!">
                            <i class="ci-heart fs-sm ms-n1 me-2"></i>
                            Add to Wishlist
                          </a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="#!">
                            <i class="ci-refresh-cw fs-sm ms-n1 me-2"></i>
                            Compare
                          </a>
                        </li>
                      </ul>
                    </div>
                    <a
                      class="d-block rounded-top overflow-hidden p-3 p-sm-4"
                      href="shop-product-general-electronics.html"
                    >
                      <div
                        class="ratio"
                        style="--cz-aspect-ratio: calc(240 / 258 * 100%)"
                      >
                        <img
                          src="View/customer/assets/img/shop/electronics/09.png"
                          alt="Wireless Buds"
                        />
                      </div>
                    </a>
                  </div>
                  <div class="w-100 min-w-0 px-1 pb-2 px-sm-3 pb-sm-3">
                    <div class="d-flex align-items-center gap-2 mb-2">
                      <div class="d-flex gap-1 fs-xs">
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-half text-warning"></i>
                      </div>
                      <span class="text-body-tertiary fs-xs">(14)</span>
                    </div>
                    <h3 class="pb-1 mb-2">
                      <a
                        class="d-block fs-sm fw-medium text-truncate"
                        href="shop-product-general-electronics.html"
                      >
                        <span class="animate-target"
                          >Xiaomi Wireless Buds Pro</span
                        >
                      </a>
                    </h3>
                    <div
                      class="d-flex align-items-center justify-content-between pb-2 mb-1"
                    >
                      <div class="h5 lh-1 mb-0">
                        $129.99
                        <del class="text-body-tertiary fs-sm fw-normal"
                          >$156.00</del
                        >
                      </div>
                      <button
                        type="button"
                        class="product-card-button btn btn-icon btn-secondary animate-slide-end ms-2"
                        aria-label="Add to Cart"
                      >
                        <i class="ci-shopping-cart fs-base animate-target"></i>
                      </button>
                    </div>
                    <div
                      class="progress mb-2"
                      role="progressbar"
                      aria-label="Available in stock"
                      aria-valuenow="25"
                      aria-valuemin="0"
                      aria-valuemax="100"
                      style="height: 4px"
                    >
                      <div
                        class="progress-bar rounded-pill"
                        style="width: 25%"
                      ></div>
                    </div>
                    <div class="text-body-secondary fs-sm">
                      Available:
                      <span class="text-dark-emphasis fw-medium">112</span>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Item -->
              <div class="swiper-slide">
                <div
                  class="product-card animate-underline hover-effect-opacity bg-body rounded"
                >
                  <div class="position-relative">
                    <div
                      class="position-absolute top-0 end-0 z-2 hover-effect-target opacity-0 mt-3 me-3"
                    >
                      <div class="d-flex flex-column gap-2">
                        <button
                          type="button"
                          class="btn btn-icon btn-secondary animate-pulse d-none d-lg-inline-flex"
                          aria-label="Add to Wishlist"
                        >
                          <i class="ci-heart fs-base animate-target"></i>
                        </button>
                        <button
                          type="button"
                          class="btn btn-icon btn-secondary animate-rotate d-none d-lg-inline-flex"
                          aria-label="Compare"
                        >
                          <i class="ci-refresh-cw fs-base animate-target"></i>
                        </button>
                      </div>
                    </div>
                    <div
                      class="dropdown d-lg-none position-absolute top-0 end-0 z-2 mt-2 me-2"
                    >
                      <button
                        type="button"
                        class="btn btn-icon btn-sm btn-secondary bg-body"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                        aria-label="More actions"
                      >
                        <i class="ci-more-vertical fs-lg"></i>
                      </button>
                      <ul
                        class="dropdown-menu dropdown-menu-end fs-xs p-2"
                        style="min-width: auto"
                      >
                        <li>
                          <a class="dropdown-item" href="#!">
                            <i class="ci-heart fs-sm ms-n1 me-2"></i>
                            Add to Wishlist
                          </a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="#!">
                            <i class="ci-refresh-cw fs-sm ms-n1 me-2"></i>
                            Compare
                          </a>
                        </li>
                      </ul>
                    </div>
                    <a
                      class="d-block rounded-top overflow-hidden p-3 p-sm-4"
                      href="shop-product-general-electronics.html"
                    >
                      <div
                        class="ratio"
                        style="--cz-aspect-ratio: calc(240 / 258 * 100%)"
                      >
                        <img
                          src="View/customer/assets/img/shop/electronics/03.png"
                          alt="Smart Watch"
                        />
                      </div>
                    </a>
                  </div>
                  <div class="w-100 min-w-0 px-1 pb-2 px-sm-3 pb-sm-3">
                    <div class="d-flex align-items-center gap-2 mb-2">
                      <div class="d-flex gap-1 fs-xs">
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                      </div>
                      <span class="text-body-tertiary fs-xs">(138)</span>
                    </div>
                    <h3 class="pb-1 mb-2">
                      <a
                        class="d-block fs-sm fw-medium text-truncate"
                        href="shop-product-general-electronics.html"
                      >
                        <span class="animate-target"
                          >Smart Watch Series 7, White</span
                        >
                      </a>
                    </h3>
                    <div
                      class="d-flex align-items-center justify-content-between pb-2 mb-1"
                    >
                      <div class="h5 lh-1 mb-0">
                        $429.00
                        <del class="text-body-tertiary fs-sm fw-normal"
                          >$486.00</del
                        >
                      </div>
                      <button
                        type="button"
                        class="product-card-button btn btn-icon btn-secondary animate-slide-end ms-2"
                        aria-label="Add to Cart"
                      >
                        <i class="ci-shopping-cart fs-base animate-target"></i>
                      </button>
                    </div>
                    <div
                      class="progress mb-2"
                      role="progressbar"
                      aria-label="Available in stock"
                      aria-valuenow="50"
                      aria-valuemin="0"
                      aria-valuemax="100"
                      style="height: 4px"
                    >
                      <div
                        class="progress-bar rounded-pill"
                        style="width: 50%"
                      ></div>
                    </div>
                    <div class="text-body-secondary fs-sm">
                      Available:
                      <span class="text-dark-emphasis fw-medium">45</span>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Item -->
              <div class="swiper-slide">
                <div
                  class="product-card animate-underline hover-effect-opacity bg-body rounded"
                >
                  <div class="position-relative">
                    <div
                      class="position-absolute top-0 end-0 z-2 hover-effect-target opacity-0 mt-3 me-3"
                    >
                      <div class="d-flex flex-column gap-2">
                        <button
                          type="button"
                          class="btn btn-icon btn-secondary animate-pulse d-none d-lg-inline-flex"
                          aria-label="Add to Wishlist"
                        >
                          <i class="ci-heart fs-base animate-target"></i>
                        </button>
                        <button
                          type="button"
                          class="btn btn-icon btn-secondary animate-rotate d-none d-lg-inline-flex"
                          aria-label="Compare"
                        >
                          <i class="ci-refresh-cw fs-base animate-target"></i>
                        </button>
                      </div>
                    </div>
                    <div
                      class="dropdown d-lg-none position-absolute top-0 end-0 z-2 mt-2 me-2"
                    >
                      <button
                        type="button"
                        class="btn btn-icon btn-sm btn-secondary bg-body"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                        aria-label="More actions"
                      >
                        <i class="ci-more-vertical fs-lg"></i>
                      </button>
                      <ul
                        class="dropdown-menu dropdown-menu-end fs-xs p-2"
                        style="min-width: auto"
                      >
                        <li>
                          <a class="dropdown-item" href="#!">
                            <i class="ci-heart fs-sm ms-n1 me-2"></i>
                            Add to Wishlist
                          </a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="#!">
                            <i class="ci-refresh-cw fs-sm ms-n1 me-2"></i>
                            Compare
                          </a>
                        </li>
                      </ul>
                    </div>
                    <a
                      class="d-block rounded-top overflow-hidden p-3 p-sm-4"
                      href="shop-product-general-electronics.html"
                    >
                      <div
                        class="ratio"
                        style="--cz-aspect-ratio: calc(240 / 258 * 100%)"
                      >
                        <img
                          src="View/customer/assets/img/shop/electronics/11.png"
                          alt="Nikon Camera"
                        />
                      </div>
                    </a>
                  </div>
                  <div class="w-100 min-w-0 px-1 pb-2 px-sm-3 pb-sm-3">
                    <div class="d-flex align-items-center gap-2 mb-2">
                      <div class="d-flex gap-1 fs-xs">
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star text-body-tertiary opacity-75"></i>
                      </div>
                      <span class="text-body-tertiary fs-xs">(64)</span>
                    </div>
                    <h3 class="pb-1 mb-2">
                      <a
                        class="d-block fs-sm fw-medium text-truncate"
                        href="shop-product-general-electronics.html"
                      >
                        <span class="animate-target"
                          >VRB01 Camera Nikon Max</span
                        >
                      </a>
                    </h3>
                    <div
                      class="d-flex align-items-center justify-content-between pb-2 mb-1"
                    >
                      <div class="h5 lh-1 mb-0">
                        $652.00
                        <del class="text-body-tertiary fs-sm fw-normal"
                          >$785.00</del
                        >
                      </div>
                      <button
                        type="button"
                        class="product-card-button btn btn-icon btn-secondary animate-slide-end ms-2"
                        aria-label="Add to Cart"
                      >
                        <i class="ci-shopping-cart fs-base animate-target"></i>
                      </button>
                    </div>
                    <div
                      class="progress mb-2"
                      role="progressbar"
                      aria-label="Available in stock"
                      aria-valuenow="75"
                      aria-valuemin="0"
                      aria-valuemax="100"
                      style="height: 4px"
                    >
                      <div
                        class="progress-bar rounded-pill"
                        style="width: 75%"
                      ></div>
                    </div>
                    <div class="text-body-secondary fs-sm">
                      Available:
                      <span class="text-dark-emphasis fw-medium">13</span>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Item -->
              <div class="swiper-slide">
                <div
                  class="product-card animate-underline hover-effect-opacity bg-body rounded"
                >
                  <div class="position-relative">
                    <div
                      class="position-absolute top-0 end-0 z-2 hover-effect-target opacity-0 mt-3 me-3"
                    >
                      <div class="d-flex flex-column gap-2">
                        <button
                          type="button"
                          class="btn btn-icon btn-secondary animate-pulse d-none d-lg-inline-flex"
                          aria-label="Add to Wishlist"
                        >
                          <i class="ci-heart fs-base animate-target"></i>
                        </button>
                        <button
                          type="button"
                          class="btn btn-icon btn-secondary animate-rotate d-none d-lg-inline-flex"
                          aria-label="Compare"
                        >
                          <i class="ci-refresh-cw fs-base animate-target"></i>
                        </button>
                      </div>
                    </div>
                    <div
                      class="dropdown d-lg-none position-absolute top-0 end-0 z-2 mt-2 me-2"
                    >
                      <button
                        type="button"
                        class="btn btn-icon btn-sm btn-secondary bg-body"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                        aria-label="More actions"
                      >
                        <i class="ci-more-vertical fs-lg"></i>
                      </button>
                      <ul
                        class="dropdown-menu dropdown-menu-end fs-xs p-2"
                        style="min-width: auto"
                      >
                        <li>
                          <a class="dropdown-item" href="#!">
                            <i class="ci-heart fs-sm ms-n1 me-2"></i>
                            Add to Wishlist
                          </a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="#!">
                            <i class="ci-refresh-cw fs-sm ms-n1 me-2"></i>
                            Compare
                          </a>
                        </li>
                      </ul>
                    </div>
                    <a
                      class="d-block rounded-top overflow-hidden p-3 p-sm-4"
                      href="shop-product-general-electronics.html"
                    >
                      <div
                        class="ratio"
                        style="--cz-aspect-ratio: calc(240 / 258 * 100%)"
                      >
                        <img
                          src="View/customer/assets/img/shop/electronics/10.png"
                          alt="iPhone 14"
                        />
                      </div>
                    </a>
                  </div>
                  <div class="w-100 min-w-0 px-1 pb-2 px-sm-3 pb-sm-3">
                    <div class="d-flex align-items-center gap-2 mb-2">
                      <div class="d-flex gap-1 fs-xs">
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-half text-warning"></i>
                        <i class="ci-star text-body-tertiary opacity-75"></i>
                      </div>
                      <span class="text-body-tertiary fs-xs">(51)</span>
                    </div>
                    <h3 class="pb-1 mb-2">
                      <a
                        class="d-block fs-sm fw-medium text-truncate"
                        href="shop-product-general-electronics.html"
                      >
                        <span class="animate-target"
                          >Apple iPhone 14 128GB Blue</span
                        >
                      </a>
                    </h3>
                    <div
                      class="d-flex align-items-center justify-content-between pb-2 mb-1"
                    >
                      <div class="h5 lh-1 mb-0">
                        $652.00
                        <del class="text-body-tertiary fs-sm fw-normal"
                          >$785.00</del
                        >
                      </div>
                      <button
                        type="button"
                        class="product-card-button btn btn-icon btn-secondary animate-slide-end ms-2"
                        aria-label="Add to Cart"
                      >
                        <i class="ci-shopping-cart fs-base animate-target"></i>
                      </button>
                    </div>
                    <div
                      class="progress mb-2"
                      role="progressbar"
                      aria-label="Available in stock"
                      aria-valuenow="25"
                      aria-valuemin="0"
                      aria-valuemax="100"
                      style="height: 4px"
                    >
                      <div
                        class="progress-bar rounded-pill"
                        style="width: 25%"
                      ></div>
                    </div>
                    <div class="text-body-secondary fs-sm">
                      Available:
                      <span class="text-dark-emphasis fw-medium">7</span>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Item -->
              <div class="swiper-slide">
                <div
                  class="product-card animate-underline hover-effect-opacity bg-body rounded"
                >
                  <div class="position-relative">
                    <div
                      class="position-absolute top-0 end-0 z-2 hover-effect-target opacity-0 mt-3 me-3"
                    >
                      <div class="d-flex flex-column gap-2">
                        <button
                          type="button"
                          class="btn btn-icon btn-secondary animate-pulse d-none d-lg-inline-flex"
                          aria-label="Add to Wishlist"
                        >
                          <i class="ci-heart fs-base animate-target"></i>
                        </button>
                        <button
                          type="button"
                          class="btn btn-icon btn-secondary animate-rotate d-none d-lg-inline-flex"
                          aria-label="Compare"
                        >
                          <i class="ci-refresh-cw fs-base animate-target"></i>
                        </button>
                      </div>
                    </div>
                    <div
                      class="dropdown d-lg-none position-absolute top-0 end-0 z-2 mt-2 me-2"
                    >
                      <button
                        type="button"
                        class="btn btn-icon btn-sm btn-secondary bg-body"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                        aria-label="More actions"
                      >
                        <i class="ci-more-vertical fs-lg"></i>
                      </button>
                      <ul
                        class="dropdown-menu dropdown-menu-end fs-xs p-2"
                        style="min-width: auto"
                      >
                        <li>
                          <a class="dropdown-item" href="#!">
                            <i class="ci-heart fs-sm ms-n1 me-2"></i>
                            Add to Wishlist
                          </a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="#!">
                            <i class="ci-refresh-cw fs-sm ms-n1 me-2"></i>
                            Compare
                          </a>
                        </li>
                      </ul>
                    </div>
                    <a
                      class="d-block rounded-top overflow-hidden p-3 p-sm-4"
                      href="shop-product-general-electronics.html"
                    >
                      <div
                        class="ratio"
                        style="--cz-aspect-ratio: calc(240 / 258 * 100%)"
                      >
                        <img
                          src="View/customer/assets/img/shop/electronics/01.png"
                          alt="VR Glasses"
                        />
                      </div>
                    </a>
                  </div>
                  <div class="w-100 min-w-0 px-1 pb-2 px-sm-3 pb-sm-3">
                    <div class="d-flex align-items-center gap-2 mb-2">
                      <div class="d-flex gap-1 fs-xs">
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-filled text-warning"></i>
                        <i class="ci-star-half text-warning"></i>
                      </div>
                      <span class="text-body-tertiary fs-xs">(19)</span>
                    </div>
                    <h3 class="pb-1 mb-2">
                      <a
                        class="d-block fs-sm fw-medium text-truncate"
                        href="shop-product-general-electronics.html"
                      >
                        <span class="animate-target"
                          >VRB01 Virtual Reality Glasses</span
                        >
                      </a>
                    </h3>
                    <div
                      class="d-flex align-items-center justify-content-between pb-2 mb-1"
                    >
                      <div class="h5 lh-1 mb-0">
                        $340.99
                        <del class="text-body-tertiary fs-sm fw-normal"
                          >$430.00</del
                        >
                      </div>
                      <button
                        type="button"
                        class="product-card-button btn btn-icon btn-secondary animate-slide-end ms-2"
                        aria-label="Add to Cart"
                      >
                        <i class="ci-shopping-cart fs-base animate-target"></i>
                      </button>
                    </div>
                    <div
                      class="progress mb-2"
                      role="progressbar"
                      aria-label="Available in stock"
                      aria-valuenow="33"
                      aria-valuemin="0"
                      aria-valuemax="100"
                      style="height: 4px"
                    >
                      <div
                        class="progress-bar rounded-pill"
                        style="width: 33%"
                      ></div>
                    </div>
                    <div class="text-body-secondary fs-sm">
                      Available:
                      <span class="text-dark-emphasis fw-medium">16</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- External slider prev/next buttons visible on screens < 500px wide (sm breakpoint) -->
          <div
            class="d-flex justify-content-center gap-2 mt-n2 mb-3 pb-1 d-sm-none"
          >
            <button
              type="button"
              class="offers-prev btn btn-icon btn-outline-secondary bg-body rounded-circle animate-slide-start me-1"
              aria-label="Prev"
            >
              <i class="ci-chevron-left fs-lg animate-target"></i>
            </button>
            <button
              type="button"
              class="offers-next btn btn-icon btn-outline-secondary bg-body rounded-circle animate-slide-end"
              aria-label="Next"
            >
              <i class="ci-chevron-right fs-lg animate-target"></i>
            </button>
          </div>
        </div>
      </section>

      <!-- Brands -->
      <section
        class="container pt-4 pt-md-5 pb-5 mt-sm-2 mb-2 mb-sm-3 mb-md-4 mb-lg-5"
      >
        <div
          class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-lg-6 g-3 g-md-4 g-lg-3 g-xl-4"
        >
          <div class="col">
            <a
              class="btn btn-outline-secondary w-100 rounded-4 p-3"
              href="shop-catalog-electronics.html"
            >
              <img
                src="View/customer/assets/img/shop/electronics/brands/apple-light-mode.svg"
                class="d-none-dark"
                alt="Apple"
              />
              <img
                src="View/customer/assets/img/shop/electronics/brands/apple-dark-mode.svg"
                class="d-none d-block-dark"
                alt="Apple"
              />
            </a>
          </div>
          <div class="col">
            <a
              class="btn btn-outline-secondary w-100 rounded-4 p-3"
              href="shop-catalog-electronics.html"
            >
              <img
                src="View/customer/assets/img/shop/electronics/brands/motorola-light-mode.svg"
                class="d-none-dark"
                alt="Apple"
              />
              <img
                src="View/customer/assets/img/shop/electronics/brands/motorola-dark-mode.svg"
                class="d-none d-block-dark"
                alt="Apple"
              />
            </a>
          </div>
          <div class="col">
            <a
              class="btn btn-outline-secondary w-100 rounded-4 p-3"
              href="shop-catalog-electronics.html"
            >
              <img
                src="View/customer/assets/img/shop/electronics/brands/canon-light-mode.svg"
                class="d-none-dark"
                alt="Apple"
              />
              <img
                src="View/customer/assets/img/shop/electronics/brands/canon-dark-mode.svg"
                class="d-none d-block-dark"
                alt="Apple"
              />
            </a>
          </div>
          <div class="col">
            <a
              class="btn btn-outline-secondary w-100 rounded-4 p-3"
              href="shop-catalog-electronics.html"
            >
              <img
                src="View/customer/assets/img/shop/electronics/brands/samsung-light-mode.svg"
                class="d-none-dark"
                alt="Apple"
              />
              <img
                src="View/customer/assets/img/shop/electronics/brands/samsung-dark-mode.svg"
                class="d-none d-block-dark"
                alt="Apple"
              />
            </a>
          </div>
          <div class="col">
            <a
              class="btn btn-outline-secondary w-100 rounded-4 p-3"
              href="shop-catalog-electronics.html"
            >
              <img
                src="View/customer/assets/img/shop/electronics/brands/sony-light-mode.svg"
                class="d-none-dark"
                alt="Apple"
              />
              <img
                src="View/customer/assets/img/shop/electronics/brands/sony-dark-mode.svg"
                class="d-none d-block-dark"
                alt="Apple"
              />
            </a>
          </div>
          <div class="col">
            <a
              class="btn btn-outline-secondary w-100 h-100 rounded-4 p-3"
              href="shop-categories-electronics.html"
            >
              All brands
              <i class="ci-plus-circle fs-base ms-2"></i>
            </a>
          </div>
        </div>
      </section>

      <!-- Subscription form + Vlog -->
      <section class="bg-body-tertiary py-5">
        <div class="container pt-sm-2 pt-md-3 pt-lg-4 pt-xl-5">
          <div class="row">
            <div class="col-md-6 col-lg-5 mb-5 mb-md-0">
              <h2 class="h4 mb-2">Sign up to our newsletter</h2>
              <p class="text-body pb-2 pb-ms-3">
                Receive our latest updates about our products &amp; promotions
              </p>
              <form
                class="d-flex needs-validation pb-1 pb-sm-2 pb-md-3 pb-lg-0 mb-4 mb-lg-5"
                novalidate=""
              >
                <div class="position-relative w-100 me-2">
                  <input
                    type="email"
                    class="form-control form-control-lg"
                    placeholder="Your email"
                    required=""
                  />
                </div>
                <button type="submit" class="btn btn-lg btn-primary">
                  Subscribe
                </button>
              </form>
              <div class="d-flex gap-3">
                <a
                  class="btn btn-icon btn-secondary rounded-circle"
                  href="#!"
                  aria-label="Instagram"
                >
                  <i class="ci-instagram fs-base"></i>
                </a>
                <a
                  class="btn btn-icon btn-secondary rounded-circle"
                  href="#!"
                  aria-label="Facebook"
                >
                  <i class="ci-facebook fs-base"></i>
                </a>
                <a
                  class="btn btn-icon btn-secondary rounded-circle"
                  href="#!"
                  aria-label="YouTube"
                >
                  <i class="ci-youtube fs-base"></i>
                </a>
                <a
                  class="btn btn-icon btn-secondary rounded-circle"
                  href="#!"
                  aria-label="Telegram"
                >
                  <i class="ci-telegram fs-base"></i>
                </a>
              </div>
            </div>
            <div class="col-md-6 col-lg-5 col-xl-4 offset-lg-1 offset-xl-2">
              <ul
                class="list-unstyled d-flex flex-column gap-4 ps-md-4 ps-lg-0 mb-3"
              >
                <li
                  class="nav flex-nowrap align-items-center position-relative"
                >
                  <img
                    src="View/customer/assets/img/home/electronics/vlog/01.jpg"
                    class="rounded"
                    width="140"
                    alt="Video cover"
                  />
                  <div class="ps-3">
                    <div class="fs-xs text-body-secondary lh-sm mb-2">6:16</div>
                    <a
                      class="nav-link fs-sm hover-effect-underline stretched-link p-0"
                      href="#!"
                      >5 New Cool Gadgets You Must See on Cartzilla - Cheap
                      Budget</a
                    >
                  </div>
                </li>
                <li
                  class="nav flex-nowrap align-items-center position-relative"
                >
                  <img
                    src="View/customer/assets/img/home/electronics/vlog/02.jpg"
                    class="rounded"
                    width="140"
                    alt="Video cover"
                  />
                  <div class="ps-3">
                    <div class="fs-xs text-body-secondary lh-sm mb-2">
                      10:20
                    </div>
                    <a
                      class="nav-link fs-sm hover-effect-underline stretched-link p-0"
                      href="#!"
                      >5 Super Useful Gadgets on Cartzilla You Must Have in
                      2023</a
                    >
                  </div>
                </li>
                <li
                  class="nav flex-nowrap align-items-center position-relative"
                >
                  <img
                    src="View/customer/assets/img/home/electronics/vlog/03.jpg"
                    class="rounded"
                    width="140"
                    alt="Video cover"
                  />
                  <div class="ps-3">
                    <div class="fs-xs text-body-secondary lh-sm mb-2">8:40</div>
                    <a
                      class="nav-link fs-sm hover-effect-underline stretched-link p-0"
                      href="#!"
                      >Top 5 New Amazing Gadgets on Cartzilla You Must See</a
                    >
                  </div>
                </li>
              </ul>
              <div class="nav ps-md-4 ps-lg-0">
                <a
                  class="btn nav-link animate-underline text-decoration-none px-0"
                  href="#!"
                >
                  <span class="animate-target">View all</span>
                  <i class="ci-chevron-right fs-base ms-1"></i>
                </a>
              </div>
            </div>
          </div>
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
                  href="index.html"
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
    <script src="View/customer/assets/vendor/timezz/timezz.js"></script>

    <!-- Bootstrap + Theme scripts -->
    <script src="View/customer/assets/js/theme.min.js"></script>
  </body>
  <!-- Mirrored from cartzilla.createx.studio/home-electronics.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 06 Sep 2024 06:27:25 GMT -->
</html>
