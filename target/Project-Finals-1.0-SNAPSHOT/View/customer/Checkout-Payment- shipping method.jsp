<%-- 
    Document   : Checkout-Payment- shipping method
    Created on : Dec 2, 2024, 7:29:30 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html><html lang="en" data-bs-theme="light" data-pwa="true">
    <!-- Mirrored from cartzilla.createx.studio/checkout-v1-delivery-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 06 Sep 2024 06:29:44 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
    <head>
        <meta charset="utf-8">

        <!-- Viewport -->
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">

        <!-- SEO Meta Tags -->
        <title>Cartzilla | Checkout v.1 - Delivery Info Step 2</title>
        <meta name="description" content="Cartzilla - Multipurpose Bootstrap E-Commerce HTML Template">
        <meta name="keywords" content="online shop, e-commerce, online store, market, multipurpose, product landing, cart, checkout, ui kit, light and dark mode, bootstrap, html5, css3, javascript, gallery, slider, mobile, pwa">
        <meta name="author" content="Createx Studio">

        <!-- Webmanifest + Favicon / App icons -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link rel="manifest" href="manifest.json">
        <link rel="icon" type="image/png" href="View/customer/assets/app-icons/icon-32x32.png" sizes="32x32">
        <link rel="apple-touch-icon" href="View/customer/assets/app-icons/icon-180x180.png">

        <!-- Theme switcher (color modes) -->
        <script src="View/customer/assets/js/theme-switcher.js"></script>

        <!-- Preloaded local web font (Inter) -->
        <link rel="preload" href="View/customer/assets/fonts/inter-variable-latin.woff2" as="font" type="font/woff2" crossorigin="">

        <!-- Font icons -->
        <link rel="preload" href="View/customer/assets/icons/cartzilla-icons.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="stylesheet" href="View/customer/assets/icons/cartzilla-icons.min.css">

        <!-- Vendor styles -->
        <link rel="stylesheet" href="View/customer/assets/vendor/swiper/swiper-bundle.min.css">
        <link rel="stylesheet" href="View/customer/assets/vendor/choices.js/choices.min.css">

        <!-- Bootstrap + Theme styles -->
        <link rel="preload" href="View/customer/assets/css/theme.min.css" as="style">
        <link rel="preload" href="View/customer/assets/css/theme.rtl.min.css" as="style">
        <link rel="stylesheet" href="View/customer/assets/css/theme.min.css" id="theme-styles">

        <!-- Customizer -->
        <script src="View/customer/assets/js/customizer.min.js"></script>
    </head>


    <!-- Body -->
    <body>

        <!-- Customizer offcanvas -->
        <div class="offcanvas offcanvas-end" id="customizer" tabindex="-1">
            <div class="offcanvas-header border-bottom">
                <h4 class="h5 offcanvas-title">Customize theme</h4>
                <button class="btn-close" type="button" data-bs-dismiss="offcanvas" aria-label="Close"></button>
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
                                <div class="color-swatch d-flex border rounded gap-3 p-2" id="theme-primary" data-color-labels="[&quot;theme-primary&quot;, &quot;primary&quot;, &quot;primary-rgb&quot;]">
                                    <input type="text" class="form-control bg-transparent border-0 rounded-0 p-1" value="#f55266">
                                    <label for="primary" class="ratio ratio-1x1 flex-shrink-0 w-100 cursor-pointer rounded-circle" style="max-width: 38px; background-color: #f55266"></label>
                                    <input type="color" class="visually-hidden" id="primary" value="#f55266">
                                </div>
                            </div>
                            <div class="col">
                                <h6 class="fs-sm mb-2">Success</h6>
                                <div class="color-swatch d-flex border rounded gap-3 p-2" id="theme-success" data-color-labels="[&quot;theme-success&quot;, &quot;success&quot;, &quot;success-rgb&quot;]">
                                    <input type="text" class="form-control bg-transparent border-0 rounded-0 p-1" value="#33b36b">
                                    <label for="success" class="ratio ratio-1x1 flex-shrink-0 w-100 cursor-pointer rounded-circle" style="max-width: 38px; background-color: #33b36b"></label>
                                    <input type="color" class="visually-hidden" id="success" value="#33b36b">
                                </div>
                            </div>
                            <div class="col">
                                <h6 class="fs-sm mb-2">Warning</h6>
                                <div class="color-swatch d-flex border rounded gap-3 p-2" id="theme-warning" data-color-labels="[&quot;theme-warning&quot;, &quot;warning&quot;, &quot;warning-rgb&quot;]">
                                    <input type="text" class="form-control bg-transparent border-0 rounded-0 p-1" value="#fc9231">
                                    <label for="warning" class="ratio ratio-1x1 flex-shrink-0 w-100 cursor-pointer rounded-circle" style="max-width: 38px; background-color: #fc9231"></label>
                                    <input type="color" class="visually-hidden" id="warning" value="#fc9231">
                                </div>
                            </div>
                            <div class="col">
                                <h6 class="fs-sm mb-2">Danger</h6>
                                <div class="color-swatch d-flex border rounded gap-2 p-2" id="theme-danger" data-color-labels="[&quot;theme-danger&quot;, &quot;danger&quot;, &quot;danger-rgb&quot;]">
                                    <input type="text" class="form-control bg-transparent border-0 rounded-0 p-1" value="#f03d3d">
                                    <label for="danger" class="ratio ratio-1x1 flex-shrink-0 w-100 cursor-pointer rounded-circle" style="max-width: 38px; background-color: #f03d3d"></label>
                                    <input type="color" class="visually-hidden" id="danger" value="#f03d3d">
                                </div>
                            </div>
                            <div class="col">
                                <h6 class="fs-sm mb-2">Info</h6>
                                <div class="color-swatch d-flex border rounded gap-2 p-2" id="theme-info" data-color-labels="[&quot;theme-info&quot;, &quot;info&quot;, &quot;info-rgb&quot;]">
                                    <input type="text" class="form-control bg-transparent border-0 rounded-0 p-1" value="#2f6ed5">
                                    <label for="info" class="ratio ratio-1x1 flex-shrink-0 w-100 cursor-pointer rounded-circle" style="max-width: 38px; background-color: #2f6ed5"></label>
                                    <input type="color" class="visually-hidden" id="info" value="#2f6ed5">
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Direction -->
                    <div class="pb-4 mb-2">
                        <div class="d-flex align-items-center pb-1 mb-2">
                            <i class="ci-sort text-body-tertiary fs-lg me-2" style="transform: rotate(90deg)"></i>
                            <h5 class="fs-lg mb-0">Direction</h5>
                        </div>
                        <div class="d-flex align-items-center justify-content-between border rounded p-3">
                            <div class="me-3">
                                <h6 class="mb-1">RTL</h6>
                                <p class="fs-sm mb-0">Change text direction</p>
                            </div>
                            <div class="form-check form-switch m-0">
                                <input type="checkbox" class="form-check-input" role="switch" id="rtl-switch">
                            </div>
                        </div>
                        <div class="alert alert-info p-2 mt-2 mb-0">
                            <div class="d-flex text-body-emphasis fs-xs py-1 pe-1">
                                <i class="ci-info text-info fs-lg mb-2 mb-sm-0" style="margin-top: .125rem"></i>
                                <div class="ps-2">To switch the text direction of your webpage from LTR to RTL, please consult the detailed instructions provided in the relevant section of our documentation.</div>
                            </div>
                        </div>
                    </div>

                    <!-- Border width -->
                    <div class="pb-4 mb-2">
                        <div class="d-flex align-items-center pb-1 mb-2">
                            <i class="ci-menu text-body-tertiary fs-lg me-2"></i>
                            <h5 class="fs-lg mb-0">Border width, px</h5>
                        </div>
                        <div class="slider-input d-flex align-items-center gap-3 border rounded p-3" id="border-input">
                            <input type="range" class="form-range" min="0" max="10" step="1" value="1">
                            <input type="number" class="form-control" id="border-width" min="0" max="10" value="1" style="max-width: 5.5rem">
                        </div>
                    </div>

                    <!-- Rounding -->
                    <div class="d-flex align-items-center pb-1 mb-2">
                        <i class="ci-maximize text-body-tertiary fs-lg me-2"></i>
                        <h5 class="fs-lg mb-0">Rounding, rem</h5>
                    </div>
                    <div class="slider-input d-flex align-items-center gap-3 border rounded p-3">
                        <input type="range" class="form-range" min="0" max="5" step=".05" value="0.5">
                        <input type="number" class="form-control" id="border-radius" min="0" max="5" step=".05" value="0.5" style="max-width: 5.5rem">
                    </div>
                </div>

                <!-- Customizer code -->
                <div class="customizer-collapse collapse" id="customizerCode">
                    <div class="nav mb-3">
                        <a class="nav-link animate-underline fs-base p-0" href=".html" data-bs-toggle="collapse" aria-expanded="true" aria-controls="customizerSettings customizerCode">
                            <i class="ci-chevron-left fs-lg ms-n1 me-1"></i>
                            <span class="animate-target">Back to settings</span>
                        </a>
                    </div>
                    <p class="fs-sm pb-1">To apply the provided styles to your webpage, enclose them within a <code>&lt;style&gt;</code> tag and insert this tag into the <code>&lt;head&gt;</code> section of your HTML document after the following link to the main stylesheet:<br><code>&lt;link href="View/customer/assets/css/theme.min.css"&gt;</code></p>
                    <div class="position-relative bg-body-tertiary rounded overflow-hidden pt-3">
                        <div class="position-absolute top-0 start-0 w-100 p-3">
                            <button type="button" class="btn btn-sm btn-outline-dark w-100" data-copy-text-from="#generated-styles" data-done-label="Code copied">
                                <i class="ci-copy fs-sm me-1"></i>
                                Copy code
                            </button>
                        </div>
                        <pre class="text-wrap bg-transparent border-0 fs-xs text-body-emphasis p-4 pt-5" id="generated-styles"></pre>
                    </div>
                </div>
            </div>

            <!-- Offcanvas footer (Action buttons) -->
            <div class="offcanvas-header border-top gap-3 d-none" id="customizer-btns">
                <button type="button" class="btn btn-lg btn-secondary w-100 fs-sm" id="customizer-reset">
                    <i class="ci-trash fs-lg me-2 ms-n1"></i>
                    Reset
                </button>
                <button class="btn btn-lg btn-primary hiding-collapse-toggle w-100 fs-sm collapsed" type="button" data-bs-toggle="collapse" data-bs-target=".customizer-collapse" aria-expanded="false" aria-controls="customizerSettings customizerCode">
                    <i class="ci-code fs-lg me-2 ms-n1"></i>
                    Show code
                </button>
            </div>
        </div>


        <!-- Order preview offcanvas -->
        <div class="offcanvas offcanvas-end pb-sm-2 px-sm-2" id="orderPreview" tabindex="-1" aria-labelledby="orderPreviewLabel" style="width: 500px">
            <div class="offcanvas-header py-3 pt-lg-4">
                <h4 class="offcanvas-title" id="orderPreviewLabel">Your order</h4>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body d-flex flex-column gap-3 py-2">

                <c:forEach var = "item"  items="${items}">
                    <div class="d-flex align-items-center">
                        <a class="flex-shrink-0" href="shop-product-general-electronics.html">
                            <img src="${item.getDienThoai().getHinhAnh()}" width="110" alt="${item.getDienThoai().getTen()}">
                        </a>
                        <div class="w-100 min-w-0 ps-2 ps-sm-3">
                            <h5 class="d-flex animate-underline mb-2">
                                <a class="d-block fs-sm fw-medium text-truncate animate-target" href="shop-product-general-electronics.html">${item.getDienThoai().getTen()}</a>
                            </h5>
                            <div class="h6 mb-0">${item.getDienThoai().getGia()}</div>
                            <div class="fs-xs pt-2">Qty: ${item.getSoLuong()}</div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>


        <!-- Shopping cart offcanvas -->
        <div class="offcanvas offcanvas-end pb-sm-2 px-sm-2" id="shoppingCart" tabindex="-1" aria-labelledby="shoppingCartLabel" style="width: 500px">

            <!-- Header -->
            <div class="offcanvas-header flex-column align-items-start py-3 pt-lg-4">
                <div class="d-flex align-items-center justify-content-between w-100 mb-3 mb-lg-4">
                    <h4 class="offcanvas-title" id="shoppingCartLabel">Shopping cart</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <p class="fs-sm">Buy <span class="text-dark-emphasis fw-semibold">$183</span> more to get <span class="text-dark-emphasis fw-semibold">Free Shipping</span></p>
                <div class="progress w-100" role="progressbar" aria-label="Free shipping progress" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="height: 4px">
                    <div class="progress-bar bg-warning rounded-pill" style="width: 75%"></div>
                </div>
            </div>

            <!-- Items -->
            <div class="offcanvas-body d-flex flex-column gap-4 pt-2">

                <!-- Item -->
                <div class="d-flex align-items-center">
                    <a class="flex-shrink-0" href="shop-product-general-electronics.html">
                        <img src="View/customer/assets/img/shop/electronics/thumbs/08.png" width="110" alt="iPhone 14">
                    </a>
                    <div class="w-100 min-w-0 ps-2 ps-sm-3">
                        <h5 class="d-flex animate-underline mb-2">
                            <a class="d-block fs-sm fw-medium text-truncate animate-target" href="shop-product-general-electronics.html">Apple iPhone 14 128GB White</a>
                        </h5>
                        <div class="h6 pb-1 mb-2">$899.00</div>
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="count-input rounded-2">
                                <button type="button" class="btn btn-icon btn-sm" data-decrement="" aria-label="Decrement quantity">
                                    <i class="ci-minus"></i>
                                </button>
                                <input type="number" class="form-control form-control-sm" value="1" readonly="">
                                <button type="button" class="btn btn-icon btn-sm" data-increment="" aria-label="Increment quantity">
                                    <i class="ci-plus"></i>
                                </button>
                            </div>
                            <button type="button" class="btn-close fs-sm" data-bs-toggle="tooltip" data-bs-custom-class="tooltip-sm" data-bs-title="Remove" aria-label="Remove from cart"></button>
                        </div>
                    </div>
                </div>

                <!-- Item -->
                <div class="d-flex align-items-center">
                    <a class="position-relative flex-shrink-0" href="shop-product-general-electronics.html">
                        <span class="badge text-bg-danger position-absolute top-0 start-0">-10%</span>
                        <img src="View/customer/assets/img/shop/electronics/thumbs/09.png" width="110" alt="iPad Pro">
                    </a>
                    <div class="w-100 min-w-0 ps-2 ps-sm-3">
                        <h5 class="d-flex animate-underline mb-2">
                            <a class="d-block fs-sm fw-medium text-truncate animate-target" href="shop-product-general-electronics.html">Tablet Apple iPad Pro M2</a>
                        </h5>
                        <div class="h6 pb-1 mb-2">$989.00 <del class="text-body-tertiary fs-xs fw-normal">$1,099.00</del></div>
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="count-input rounded-2">
                                <button type="button" class="btn btn-icon btn-sm" data-decrement="" aria-label="Decrement quantity">
                                    <i class="ci-minus"></i>
                                </button>
                                <input type="number" class="form-control form-control-sm" value="1" readonly="">
                                <button type="button" class="btn btn-icon btn-sm" data-increment="" aria-label="Increment quantity">
                                    <i class="ci-plus"></i>
                                </button>
                            </div>
                            <button type="button" class="btn-close fs-sm" data-bs-toggle="tooltip" data-bs-custom-class="tooltip-sm" data-bs-title="Remove" aria-label="Remove from cart"></button>
                        </div>
                    </div>
                </div>

                <!-- Item -->
                <div class="d-flex align-items-center">
                    <a class="flex-shrink-0" href="shop-product-general-electronics.html">
                        <img src="View/customer/assets/img/shop/electronics/thumbs/01.png" width="110" alt="Smart Watch">
                    </a>
                    <div class="w-100 min-w-0 ps-2 ps-sm-3">
                        <h5 class="d-flex animate-underline mb-2">
                            <a class="d-block fs-sm fw-medium text-truncate animate-target" href="shop-product-general-electronics.html">Smart Watch Series 7, White</a>
                        </h5>
                        <div class="h6 pb-1 mb-2">$429.00</div>
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="count-input rounded-2">
                                <button type="button" class="btn btn-icon btn-sm" data-decrement="" aria-label="Decrement quantity">
                                    <i class="ci-minus"></i>
                                </button>
                                <input type="number" class="form-control form-control-sm" value="1" readonly="">
                                <button type="button" class="btn btn-icon btn-sm" data-increment="" aria-label="Increment quantity">
                                    <i class="ci-plus"></i>
                                </button>
                            </div>
                            <button type="button" class="btn-close fs-sm" data-bs-toggle="tooltip" data-bs-custom-class="tooltip-sm" data-bs-title="Remove" aria-label="Remove from cart"></button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <div class="offcanvas-header flex-column align-items-start">
                <div class="d-flex align-items-center justify-content-between w-100 mb-3 mb-md-4">
                    <span class="text-light-emphasis">Subtotal:</span>
                    <span class="h6 mb-0">$2,317.00</span>
                </div>
                <div class="d-flex w-100 gap-3">
                    <a class="btn btn-lg btn-secondary w-100" href="checkout-v1-cart.html">View cart</a>
                    <a class="btn btn-lg btn-primary w-100" href="checkout-v1-delivery-1.html">Checkout</a>
                </div>
            </div>
        </div>


        <!-- Navigation bar (Page header) -->
        <header class="navbar navbar-expand-lg navbar-dark bg-dark d-block z-fixed p-0" data-sticky-navbar="{&quot;offset&quot;: 200}">
            <div class="container d-block py-1 py-lg-3" data-bs-theme="dark">
                <div class="navbar-stuck-hide pt-1"></div>
                <div class="row flex-nowrap align-items-center g-0">
                    <div class="col col-lg-3 d-flex align-items-center">

                        <!-- Mobile offcanvas menu toggler (Hamburger) -->
                        <button type="button" class="navbar-toggler me-4 me-lg-0" data-bs-toggle="offcanvas" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <!-- Navbar brand (Logo) -->
                        <a href="home-electronics.html" class="navbar-brand me-0">
                            <span class="d-none d-sm-flex flex-shrink-0 text-primary me-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36"><path d="M36 18.01c0 8.097-5.355 14.949-12.705 17.2a18.12 18.12 0 0 1-5.315.79C9.622 36 2.608 30.313.573 22.611.257 21.407.059 20.162 0 18.879v-1.758c.02-.395.059-.79.099-1.185.099-.908.277-1.817.514-2.686C2.687 5.628 9.682 0 18 0c5.572 0 10.551 2.528 13.871 6.517 1.502 1.797 2.648 3.91 3.359 6.201.494 1.659.771 3.436.771 5.292z" fill="currentColor"></path><g fill="#fff"><path d="M17.466 21.624c-.514 0-.988-.316-1.146-.829-.198-.632.138-1.303.771-1.501l7.666-2.469-1.205-8.254-13.317 4.621a1.19 1.19 0 0 1-1.521-.75 1.19 1.19 0 0 1 .751-1.521l13.89-4.818c.553-.197 1.166-.138 1.64.158a1.82 1.82 0 0 1 .85 1.284l1.344 9.183c.138.987-.494 1.994-1.482 2.33l-7.864 2.528-.375.04zm7.31.138c-.178-.632-.85-1.007-1.482-.81l-5.177 1.58c-2.331.79-3.28.02-3.418-.099l-6.56-8.412a4.25 4.25 0 0 0-4.406-1.758l-3.122.987c-.237.889-.415 1.777-.514 2.686l4.228-1.363a1.84 1.84 0 0 1 1.857.81l6.659 8.551c.751.948 2.015 1.323 3.359 1.323.909 0 1.857-.178 2.687-.474l5.078-1.54c.632-.178 1.008-.829.81-1.481z"></path><use href="#czlogo"></use><use href="#czlogo" x="8.516" y="-2.172"></use></g><defs><path id="czlogo" d="M18.689 28.654a1.94 1.94 0 0 1-1.936 1.935 1.94 1.94 0 0 1-1.936-1.935 1.94 1.94 0 0 1 1.936-1.935 1.94 1.94 0 0 1 1.936 1.935z"></path></defs></svg>
                            </span>
                            Cartzilla
                        </a>
                    </div>
                    <div class="col col-lg-9 d-flex align-items-center justify-content-end">

                        <!-- Search visible on screens > 991px wide (lg breakpoint) -->
                        <div class="position-relative flex-fill d-none d-lg-block pe-4 pe-xl-5">
                            <i class="ci-search position-absolute top-50 translate-middle-y d-flex fs-lg text-white ms-3"></i>
                            <input type="search" class="form-control form-control-lg form-icon-start border-white rounded-pill" placeholder="Search the products">
                        </div>

                        <!-- Sale link visible on screens > 1200px wide (xl breakpoint) -->
                        <a class="d-none d-xl-flex align-items-center text-decoration-none animate-shake navbar-stuck-hide me-3 me-xl-4 me-xxl-5" href="shop-catalog-electronics.html">
                            <div class="btn btn-icon btn-lg fs-lg text-primary bg-body-secondary bg-opacity-75 pe-none rounded-circle">
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
                            <button type="button" class="navbar-toggler d-none navbar-stuck-show me-3" data-bs-toggle="collapse" data-bs-target="#stuckNav" aria-controls="stuckNav" aria-expanded="false" aria-label="Toggle navigation in navbar stuck state">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <!-- Theme switcher (light/dark/auto) -->
                            <div class="dropdown">
                                <button type="button" class="theme-switcher btn btn-icon btn-lg btn-outline-secondary fs-lg border-0 rounded-circle animate-scale" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Toggle theme (light)">
                                    <span class="theme-icon-active d-flex animate-target">
                                        <i class="ci-sun"></i>
                                    </span>
                                </button>
                                <ul class="dropdown-menu" style="--cz-dropdown-min-width: 9rem">
                                    <li>
                                        <button type="button" class="dropdown-item active" data-bs-theme-value="light" aria-pressed="true">
                                            <span class="theme-icon d-flex fs-base me-2">
                                                <i class="ci-sun"></i>
                                            </span>
                                            <span class="theme-label">Light</span>
                                            <i class="item-active-indicator ci-check ms-auto"></i>
                                        </button>
                                    </li>
                                    <li>
                                        <button type="button" class="dropdown-item" data-bs-theme-value="dark" aria-pressed="false">
                                            <span class="theme-icon d-flex fs-base me-2">
                                                <i class="ci-moon"></i>
                                            </span>
                                            <span class="theme-label">Dark</span>
                                            <i class="item-active-indicator ci-check ms-auto"></i>
                                        </button>
                                    </li>
                                    <li>
                                        <button type="button" class="dropdown-item" data-bs-theme-value="auto" aria-pressed="false">
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
                            <button type="button" class="btn btn-icon btn-lg fs-xl btn-outline-secondary border-0 rounded-circle animate-shake d-lg-none" data-bs-toggle="collapse" data-bs-target="#searchBar" aria-expanded="false" aria-controls="searchBar" aria-label="Toggle search bar">
                                <i class="ci-search animate-target"></i>
                            </button>

                            <!-- Account button visible on screens > 768px wide (md breakpoint) -->
                            <a class="btn btn-icon btn-lg fs-lg btn-outline-secondary border-0 rounded-circle animate-shake d-none d-md-inline-flex" href="account-signin.html">
                                <i class="ci-user animate-target"></i>
                                <span class="visually-hidden">Account</span>
                            </a>

                            <!-- Wishlist button visible on screens > 768px wide (md breakpoint) -->
                            <a class="btn btn-icon btn-lg fs-lg btn-outline-secondary border-0 rounded-circle animate-pulse d-none d-md-inline-flex" href="account-wishlist.html">
                                <i class="ci-heart animate-target"></i>
                                <span class="visually-hidden">Wishlist</span>
                            </a>

                            <!-- Cart button -->
                            <button type="button" class="btn btn-icon btn-lg btn-secondary position-relative rounded-circle ms-2" data-bs-toggle="offcanvas" data-bs-target="#shoppingCart" aria-controls="shoppingCart" aria-label="Shopping cart">
                                <span class="position-absolute top-0 start-100 mt-n1 ms-n3 badge text-bg-success border border-3 border-dark rounded-pill" style="--cz-badge-padding-y: .25em; --cz-badge-padding-x: .42em">3</span>
                                <span class="position-absolute top-0 start-0 d-flex align-items-center justify-content-center w-100 h-100 rounded-circle animate-slide-end fs-lg">
                                    <i class="ci-shopping-cart animate-target ms-n1"></i>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="navbar-stuck-hide pb-1"></div>
            </div>

            <!-- Search visible on screens < 992px wide (lg breakpoint). It is hidden inside collapse by default -->
            <div class="collapse position-absolute top-100 z-2 w-100 bg-dark d-lg-none" id="searchBar">
                <div class="container position-relative my-3" data-bs-theme="dark">
                    <i class="ci-search position-absolute top-50 translate-middle-y d-flex fs-lg text-white ms-3"></i>
                    <input type="search" class="form-control form-icon-start border-white rounded-pill" placeholder="Search the products" data-autofocus="collapse">
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
                                                                href="<%= request.getContextPath()%>/login"
                                                                >Đăng nhập</a
                                                            >
                                                        </li>
                                                        <li>
                                                            <a
                                                                class="dropdown-item"
                                                                href="<%= request.getContextPath()%>/register"
                                                                >Đăng kí</a
                                                            >
                                                        </li>
                                                        <li>
                                                            <a
                                                                class="dropdown-item"
                                                                href="<%= request.getContextPath()%>/forgot-password"
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
                                                class="nav-link "
                                                href="/Project-Finals/blog"
                                                role="button"
                                                data-bs-toggle="dropdown"
                                                data-bs-trigger="hover"
                                                data-bs-auto-close="outside"
                                                aria-expanded="false"
                                                >Blog</a
                                            >
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
            <div class="container py-5">
                <div class="row pt-1 pt-sm-3 pt-lg-4 pb-2 pb-md-3 pb-lg-4 pb-xl-5">
                    <div class="col-lg-8 col-xl-7 mb-5 mb-lg-0">
                        <form action="checkout-payment" method="post" >
                            <div class="d-flex flex-column gap-5 pe-lg-4 pe-xl-0">
                                <div class="d-flex align-items-start">
                                    <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle fs-sm fw-semibold lh-1 flex-shrink-0" style="width: 2rem; height: 2rem; margin-top: -.125rem">1</div>
                                    <div class="flex-grow-0 flex-shrink-0 ps-3 ps-md-4" style="width: calc(100% - 2rem)">
                                        <h1 class="h5 mb-md-4">Thông tin giao hàng</h1>
                                        <div class="ms-n5 ms-sm-0">
                                            <h3 class="h6 border-bottom pb-4 mb-0">Chọn phương thức vận chuyển</h3>
                                                <script>
                                                    function handleRadioSelection() {
                                                        var shippingMethod = document.querySelector('input[name="shipping-method"]:checked');
                                                        if (shippingMethod) {
                                                            var selectedValue = shippingMethod.value;
                                                            var totalText = document.getElementById("total").textContent;
                                                            var total = parseFloat(totalText.replace(/,/g, ''));
                                                            var shippingFee = parseFloat(document.getElementById("shipFee").textContent);

                                                            // Thực hiện hành động dựa trên giá trị được chọn
                                                            if (selectedValue === "pickup") {
                                                                document.getElementById("shipFee").textContent = 0;
                                                                if (shippingFee !== 0) {
                                                                    var totalWithShipping = total - 200000;
                                                                    var formattedTotalWithShipping = totalWithShipping.toLocaleString();
                                                                    document.getElementById("total").textContent = formattedTotalWithShipping;
                                                                }
                                                            } else {
                                                                var totalWithShipping = total + 200000;
                                                                var formattedTotalWithShipping = totalWithShipping.toLocaleString();
                                                                document.getElementById("shipFee").textContent = 200000;
                                                                document.getElementById("total").textContent = formattedTotalWithShipping;
                                                            }
                                                        }
                                                    }

                                                </script>
                                                <div class="mb-lg-4" id="shippingMethod" role="list">
                                                    <div class="border-bottom">
                                                        <div class="form-check mb-0" role="listitem" data-bs-toggle="collapse" data-bs-target="#pickup" aria-expanded="false" aria-controls="pickup">
                                                            <label class="form-check-label d-flex align-items-center text-dark-emphasis fw-semibold py-4">
                                                                <input type="radio" class="form-check-input fs-base me-2 me-sm-3" 
                                                                       name="shipping-method" value="pickup" onclick="handleRadioSelection()">
                                                                Nhận hàng tại cửa hàng
                                                                <span class="fw-normal ms-auto">Free</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="border-bottom">
                                                        <div class="form-check mb-0" role="listitem" data-bs-toggle="collapse" data-bs-target="#shipping" aria-expanded="false" aria-controls="shipping">
                                                            <label class="form-check-label d-flex align-items-center text-dark-emphasis fw-semibold py-4">
                                                                <input type="radio" class="form-check-input fs-base me-2 me-sm-3" 
                                                                       name="shipping-method" value="shipping" onclick="handleRadioSelection()">
                                                                Vận chuyển
                                                                <span class="fw-normal ms-auto"><fmt:formatNumber value="200000" type="number" /></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-start">
                                                    <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle fs-sm fw-semibold lh-1 flex-shrink-0" style="width: 2rem; height: 2rem; margin-top: -.125rem">2</div>
                                                    <div class="w-100 ps-3 ps-md-4">
                                                            <div class="row row-cols-1 row-cols-sm-2 g-3 g-sm-4 mb-4">
                                                                <div class="col">
                                                                    <label for="shipping-fn" class="form-label">Tên người nhận<span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control form-control-lg" name="shipping-name" id="shipping-fn" required="">
                                                                </div>
                                                                <div class="col">
                                                                    <label for="shipping-email" class="form-label">Địa chỉ<span class="text-danger">*</span></label>
                                                                    <input type="email" class="form-control form-control-lg" name="shipping-address id="shipping-email" required="">
                                                                </div>
                                                                <div class="col">
                                                                    <label for="shipping-mobile" class="form-label">Số điện thoại</label>
                                                                    <input type="text" class="form-control form-control-lg" name="shipping-phone" id="shipping-mobile">
                                                                </div>
                                                            </div>
                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-start">
                                <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle fs-sm fw-semibold lh-1 flex-shrink-0" style="width: 2rem; height: 2rem; margin-top: -.125rem">3</div>
                                <div class="w-100 ps-3 ps-md-4">
                                    <h2 class="h5 mb-0">Payment</h2>
                                    <div class="mb-4" id="paymentMethod" role="list">

                                        <!-- Cash on delivery -->
                                        <div class="mt-4">
                                            <div class="form-check mb-0" role="listitem" data-bs-toggle="collapse" data-bs-target="#cash" aria-expanded="false" aria-controls="cash">
                                                <label class="form-check-label w-100 text-dark-emphasis fw-semibold">
                                                    <input type="radio" class="form-check-input fs-base me-2 me-sm-3" name="payment-method-money" checked="">
                                                    Thanh toán khi nhận hàng
                                                </label>
                                            </div>
                                        </div> 

                                    </div>

                                    <!-- Add promo code button -->
                                    <!-- Additional comments -->
                                    <textarea class="form-control form-control-lg mb-4" rows="3" placeholder="Additional comments"></textarea>

                                    <div class="form-check mb-lg-4">
                                        <input type="checkbox" class="form-check-input" id="accept-terms">
                                        <label for="accept-terms" class="form-check-label nav align-items-center">
                                            Tôi đồng ý
                                            <a class="nav-link text-decoration-underline fw-normal ms-1 p-0" href="terms-and-conditions.html">Điều khoản và điều kiện</a>
                                        </label>
                                    </div>
                                    <button type="submit" class="btn btn-lg btn-primary w-100 d-none d-lg-flex">
                                        Thanh toán
                                    </button>
                                </div>
                                </div>
                        </form>
                    </div>


                    <aside class="col-lg-4 offset-xl-1" style="margin-top: -100px">
                        <div class="position-sticky top-0" style="padding-top: 100px">
                            <div class="bg-body-tertiary rounded-5 p-4 mb-3">
                                <div class="p-sm-2 p-lg-0 p-xl-2">
                                    <div class="border-bottom pb-4 mb-4">
                                        <div class="d-flex align-items-center justify-content-between mb-4">
                                            <h5 class="mb-0">Order summary</h5>
                                        </div>
                                        <a class="d-flex align-items-center gap-2 text-decoration-none" href="#orderPreview" data-bs-toggle="offcanvas">
                                            <c:forEach var = "item"  items="${items}">
                                                <div class="ratio ratio-1x1" style="max-width: 64px">
                                                    <img src="${item.getDienThoai().getHinhAnh()}" class="d-block p-1" alt="${item.getDienThoai().getTen()}">
                                                </div>
                                            </c:forEach>
                                            <i class="ci-chevron-right text-body fs-xl p-0 ms-auto"></i>
                                        </a>
                                    </div>
                                    <c:set var="total" value="0" />
                                    <ul class="list-unstyled fs-sm gap-3 mb-0">
                                        <c:set var="totalAmount" value="0" />

                                        <li class="d-flex justify-content-between">
                                            Tổng cộng (${items.size()} items):
                                            <c:forEach var = "item"  items="${items}">
                                                <c:set var="totalAmount" value="${totalAmount + item.getDienThoai().getGia()*item.getSoLuong()}" />
                                            </c:forEach>
                                            <span class="text-dark-emphasis fw-medium"><fmt:formatNumber value="${totalAmount}" type="number" /></span>
                                        </li>
                                        <li class="d-flex justify-content-between">
                                            Tiết kiệm:
                                            <c:set var="save" value="0" />
                                            <span class="text-danger fw-medium"><fmt:formatNumber value="${save}" type="number" /></span>
                                        </li>
                                        <li class="d-flex justify-content-between">
                                            Thuế đã thu:
                                            <c:set var="commission" value="${totalAmount * 0.05}" />
                                            <c:set var="total" value="${totalAmount-commission}" />
                                            <span class="text-dark-emphasis fw-medium"><fmt:formatNumber value="${commission}" type="number" /></span>
                                        </li>
                                        <li class="d-flex justify-content-between">
                                            Shipping:
                                            <span class="text-dark-emphasis fw-medium" id="shipFee">0</span>
                                        </li>
                                    </ul>
                                    <div class="border-top pt-4 mt-4">
                                        <div class="d-flex justify-content-between mb-3">
                                            <span class="fs-sm">Tổng:</span>
                                            <span class="h5 mb-0" id="total"><fmt:formatNumber value="${total}" type="number" /></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </main>


        <!-- Page footer -->
        <footer class="footer position-relative bg-dark border-top">
            <span class="position-absolute top-0 start-0 w-100 h-100 bg-body d-none d-block-dark"></span>
            <div class="container position-relative z-1 pt-sm-2 pt-md-3 pt-lg-4" data-bs-theme="dark">

                <!-- Columns with links that are turned into accordion on screens < 500px wide (sm breakpoint) -->
                <div class="accordion py-5" id="footerLinks">
                    <div class="row">
                        <div class="col-md-4 d-sm-flex flex-md-column align-items-center align-items-md-start pb-3 mb-sm-4">
                            <h4 class="mb-sm-0 mb-md-4 me-4">
                                <a class="text-dark-emphasis text-decoration-none" href="home-electronics.html">Cartzilla</a>
                            </h4>
                            <p class="text-body fs-sm text-sm-end text-md-start mb-sm-0 mb-md-3 ms-0 ms-sm-auto ms-md-0 me-4">Got questions? Contact us 24/7</p>
                            <div class="dropdown" style="max-width: 250px">
                                <button type="button" class="btn btn-light dropdown-toggle justify-content-between w-100 d-none-dark" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Help and consultation
                                </button>
                                <button type="button" class="btn btn-secondary dropdown-toggle justify-content-between w-100 d-none d-flex-dark" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Help and consultation
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#!">Help center &amp; FAQ</a></li>
                                    <li><a class="dropdown-item" href="#!">Support chat</a></li>
                                    <li><a class="dropdown-item" href="#!">Open support ticket</a></li>
                                    <li><a class="dropdown-item" href="#!">Call center</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="row row-cols-1 row-cols-sm-3 gx-3 gx-md-4">
                                <div class="accordion-item col border-0">
                                    <h6 class="accordion-header" id="companyHeading">
                                        <span class="text-dark-emphasis d-none d-sm-block">Company</span>
                                        <button type="button" class="accordion-button collapsed py-3 d-sm-none" data-bs-toggle="collapse" data-bs-target="#companyLinks" aria-expanded="false" aria-controls="companyLinks">Company</button>
                                    </h6>
                                    <div class="accordion-collapse collapse d-sm-block" id="companyLinks" aria-labelledby="companyHeading" data-bs-parent="#footerLinks">
                                        <ul class="nav flex-column gap-2 pt-sm-3 pb-3 mt-n1 mb-1">
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">About company</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Our team</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Careers</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Contact us</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">News</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <hr class="d-sm-none my-0">
                                </div>
                                <div class="accordion-item col border-0">
                                    <h6 class="accordion-header" id="accountHeading">
                                        <span class="text-dark-emphasis d-none d-sm-block">Account</span>
                                        <button type="button" class="accordion-button collapsed py-3 d-sm-none" data-bs-toggle="collapse" data-bs-target="#accountLinks" aria-expanded="false" aria-controls="accountLinks">Account</button>
                                    </h6>
                                    <div class="accordion-collapse collapse d-sm-block" id="accountLinks" aria-labelledby="accountHeading" data-bs-parent="#footerLinks">
                                        <ul class="nav flex-column gap-2 pt-sm-3 pb-3 mt-n1 mb-1">
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Your account</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Shipping rates &amp; policies</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Refunds &amp; replacements</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Delivery info</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Order tracking</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Taxes &amp; fees</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <hr class="d-sm-none my-0">
                                </div>

                            </div>
                        </div>
                    </div>
                </div>


                <!-- Copyright + Payment methods -->
                <div class="d-md-flex align-items-center border-top py-4">
                    <div class="d-flex gap-2 gap-sm-3 justify-content-center ms-md-auto mb-4 mb-md-0 order-md-2">
                        <div>
                            <img src="View/customer/assets/img/payment-methods/visa-dark-mode.svg" alt="Visa">
                        </div>
                        <div>
                            <img src="View/customer/assets/img/payment-methods/mastercard.svg" alt="Mastercard">
                        </div>
                        <div>
                            <img src="View/customer/assets/img/payment-methods/paypal-dark-mode.svg" alt="PayPal">
                        </div>
                        <div>
                            <img src="View/customer/assets/img/payment-methods/google-pay-dark-mode.svg" alt="Google Pay">
                        </div>
                        <div>
                            <img src="View/customer/assets/img/payment-methods/apple-pay-dark-mode.svg" alt="Apple Pay">
                        </div>
                    </div>
                    <p class="text-body fs-xs text-center text-md-start mb-0 me-4 order-md-1">© All rights reserved. Made by <span class="animate-underline"><a class="animate-target text-dark-emphasis fw-medium text-decoration-none" href="https://createx.studio/" target="_blank" rel="noreferrer">Createx Studio</a></span></p>
                </div>
            </div>

            <!-- Additional spacing to accommodate the fixed button -->
            <div class="d-lg-none" style="height: 4rem"></div>
        </footer>


        <!-- Fixed positioned pay button that is visible on screens < 992px wide (lg breakpoint) -->
        <div class="fixed-bottom z-sticky w-100 py-2 px-3 bg-body border-top shadow d-lg-none">
            <a class="btn btn-lg btn-primary w-100" href="checkout-v1-shipping.html">
                Continue
                <i class="ci-chevron-right fs-lg ms-1 me-n1"></i>
            </a>
        </div>


        <!-- Back to top button -->
        <div class="floating-buttons position-fixed top-50 end-0 z-sticky me-3 me-xl-4 pb-4">
            <a class="btn-scroll-top btn btn-sm bg-body border-0 rounded-pill shadow animate-slide-end" href="#top">
                Top
                <i class="ci-arrow-right fs-base ms-1 me-n1 animate-target"></i>
                <span class="position-absolute top-0 start-0 w-100 h-100 border rounded-pill z-0"></span>
                <svg class="position-absolute top-0 start-0 w-100 h-100 z-1" viewBox="0 0 62 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                <rect x=".75" y=".75" width="60.5" height="30.5" rx="15.25" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></rect>
                </svg>
            </a>
            <a class="btn btn-sm btn-outline-secondary text-uppercase bg-body rounded-pill shadow animate-rotate ms-2 me-n5" href="#customizer" style="font-size: .625rem; letter-spacing: .05rem;" data-bs-toggle="offcanvas" role="button" aria-controls="customizer">
                Customize<i class="ci-settings fs-base ms-1 me-n2 animate-target"></i>
            </a>
        </div>


        <!-- Vendor scripts -->
        <script src="View/customer/assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="View/customer/assets/vendor/choices.js/choices.min.js"></script>

        <!-- Bootstrap + Theme scripts -->
        <script src="View/customer/assets/js/theme.min.js"></script>


    </body>
    <!-- Mirrored from cartzilla.createx.studio/checkout-v1-delivery-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 06 Sep 2024 06:29:44 GMT -->
</html>
