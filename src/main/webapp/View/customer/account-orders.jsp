<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html lang="en" data-bs-theme="light" data-pwa="true">
    <!-- Mirrored from cartzilla.createx.studio/account-orders.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 06 Sep 2024 06:29:49 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
    <head>
        <meta charset="utf-8">

        <!-- Viewport -->
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">

        <!-- SEO Meta Tags -->
        <title>Cartzilla | Account - Orders History</title>
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
                    <p class="fs-sm pb-1">To apply the provided styles to your webpage, enclose them within a <code>&lt;style&gt;</code> tag and insert this tag into the <code>&lt;head&gt;</code> section of your HTML document after the following link to the main stylesheet:<br><code>&lt;link href="assets/css/theme.min.css"&gt;</code></p>
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


        <!-- Order details offcanvas -->
        <div class="offcanvas offcanvas-end pb-sm-2 px-sm-2" id="orderDetails" tabindex="-1" aria-labelledby="orderDetailsLabel" style="width: 500px">

            <!-- Header -->
            <div class="offcanvas-header align-items-start py-3 pt-lg-4">
                <div>
                    <h4 id="orderIdAside" class="offcanvas-title mb-1" id="orderDetailsLabel">Order # 78A6431D409</h4>
                    <span class="d-flex align-items-center fs-sm fw-medium text-body-emphasis">
                        <span class="bg-info rounded-circle p-1 me-2"></span>
                        <span id="orderStatusAside"> In progress</span>
                    </span>
                </div>
                <button type="button" class="btn-close mt-0" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>

            <!-- Body -->
            <div class="offcanvas-body d-flex flex-column gap-4 pt-2 pb-3">

                <!-- Items -->
                <div class="d-flex flex-column gap-3" id="orderDetailAside">

                    <div class="d-flex align-items-center">
                        <a class="flex-shrink-0" href="shop-product-general-electronics.html">
                            <img src="View/customer/assets/img/shop/electronics/thumbs/09.png" width="110" alt="iPad Pro">
                        </a>
                        <div class="w-100 min-w-0 ps-2 ps-sm-3">
                            <h5 class="d-flex animate-underline mb-2">
                                <a class="d-block fs-sm fw-medium text-truncate animate-target" href="shop-product-general-electronics.html">Tablet Apple iPad Pro M2</a>
                            </h5>
                            <div class="h6 mb-2">$989.00</div>
                            <div class="fs-xs">Qty: 1</div>
                        </div>
                    </div>
                </div>


                <!-- Delivery + Payment info -->
                <div class="border-top pt-4">
                    <h6>Delivery</h6>
                    <ul class="list-unstyled fs-sm mb-4" id="orderInfoAside">
                        <li class="d-flex justify-content-between mb-1">
                            Estimated delivery date:
                            <span class="text-body-emphasis fw-medium text-end ms-2">Feb 8, 2025 / 10:00 - 12:00</span>
                        </li>
                        <li class="d-flex justify-content-between mb-1">
                            Shipping method:
                            <span class="text-body-emphasis fw-medium text-end ms-2">Courier delivery</span>
                        </li>
                        <li class="d-flex justify-content-between">
                            Shipping address:
                            <span class="text-body-emphasis fw-medium text-end ms-2">567 Cherry Lane Apt B12,<br>Harrisburg</span>
                        </li>
                    </ul>
                    <h6>Payment</h6>
                    <ul class="list-unstyled fs-sm m-0">
                        <li class="d-flex justify-content-between mb-1">
                            Payment method:
                            <span class="text-body-emphasis fw-medium text-end ms-2">Cash on delivery </span>
                        </li>
                        <li class="d-flex justify-content-between mb-1">
                            Tax collected:
                            <span class="text-body-emphasis fw-medium text-end ms-2">$12.40</span>
                        </li>
                        <li class="d-flex justify-content-between">
                            Shipping:
                            <span class="text-body-emphasis fw-medium text-end ms-2">$26.50</span>
                        </li>
                    </ul>
                </div>

                <!-- Total -->
                <div class="d-flex align-items-center justify-content-between fs-sm border-top pt-4">
                    Estimated total:
                    <span class="h5 text-end ms-2 mb-0" id="orderPriceAside">$2,105.90</span>
                </div>
            </div>

            <!-- Footer -->
            <div class="offcanvas-header">
                <a class="btn btn-lg btn-secondary w-100" href="#!">Change the delivery time</a>
            </div>
        </div>


        <!-- Bonuses info modal -->
        <div class="modal fade" id="bonusesModal" tabindex="-1" aria-labelledby="bonusesModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="bonusesModalLabel">My bonuses</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row align-items-center">
                            <div class="col-sm-6 mb-4 mb-sm-0">
                                <div class="position-relative bg-warning text-center rounded-4 overflow-hidden">
                                    <div class="position-relative z-1 py-3 px-4">
                                        <svg class="text-white opacity-75 mb-2" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 16 16" fill="currentColor"><path d="M1.333 9.667H7.5V16h-5c-.64 0-1.167-.527-1.167-1.167V9.667zm13.334 0v5.167c0 .64-.527 1.167-1.167 1.167h-5V9.667h6.167zM0 5.833V7.5c0 .64.527 1.167 1.167 1.167h.167H7.5v-1-3H1.167C.527 4.667 0 5.193 0 5.833zm14.833-1.166H8.5v3 1h6.167.167C15.473 8.667 16 8.14 16 7.5V5.833c0-.64-.527-1.167-1.167-1.167z"></path><path d="M8 5.363a.5.5 0 0 1-.495-.573C7.752 3.123 9.054-.03 12.219-.03c1.807.001 2.447.977 2.447 1.813 0 1.486-2.069 3.58-6.667 3.58zM12.219.971c-2.388 0-3.295 2.27-3.595 3.377 1.884-.088 3.072-.565 3.756-.971.949-.563 1.287-1.193 1.287-1.595 0-.599-.747-.811-1.447-.811z"></path><path d="M8.001 5.363c-4.598 0-6.667-2.094-6.667-3.58 0-.836.641-1.812 2.448-1.812 3.165 0 4.467 3.153 4.713 4.819a.5.5 0 0 1-.495.573zM3.782.971c-.7 0-1.448.213-1.448.812 0 .851 1.489 2.403 5.042 2.566C7.076 3.241 6.169.971 3.782.971z"></path></svg>
                                        <div class="h2 text-white pb-1 mb-2">100</div>
                                        <p class="fs-sm fw-medium text-white opacity-75 mb-0">1 bonus = 1$</p>
                                    </div>
                                    <div class="position-absolute bg-white bg-opacity-10 rounded-circle" style="top: -15px; right: -128px; width: 165px; height: 165px"></div>
                                    <div class="position-absolute bg-white bg-opacity-10 rounded-circle" style="top: -15px; left: -128px; width: 165px; height: 165px"></div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <ul class="list-unstyled fs-sm m-0">
                                    <li class="d-flex align-items-center justify-content-between">
                                        Available:
                                        <span class="text-dark-emphasis fw-semibold ms-2">100</span>
                                    </li>
                                    <li class="d-flex align-items-center justify-content-between">
                                        Waiting activation:
                                        <span class="text-dark-emphasis fw-semibold ms-2">0</span>
                                    </li>
                                    <li class="d-flex align-items-center justify-content-between">
                                        Total:
                                        <span class="text-dark-emphasis fw-semibold ms-2">100</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
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
                            <button type="button" class="btn btn-icon btn-lg fs-xl btn-outline-secondary border-0 rounded-circle animate-shake d-lg-none" data-bs-toggle="collapse" data-bs-target="#searchBar" aria-controls="searchBar" aria-expanded="false" aria-label="Toggle search bar">
                                <i class="ci-search animate-target"></i>
                            </button>

                            <!-- Account button logged in state visible on screens > 768px wide (md breakpoint) -->
                            <div class="position-relative" id="accountBtn">
                                <a class="btn btn-icon btn-lg btn-secondary animate-scale fs-5 fw-normal position-relative rounded-circle ms-2 d-none d-md-inline-flex" href="account-orders.html" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-custom-class="tooltip-sm text-nowrap" data-bs-container="#accountBtn" title="Susan Gardner">
                                    <span class="animate-target">S</span>
                                </a>
                            </div>

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
                        href="${pageContext.request.contextPath}"
                        role="button"
                        data-bs-toggle="dropdown"
                        data-bs-trigger="hover"
                        aria-expanded="false"
                        >Trang Chủ</a
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
                        >Tài khoản</a
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
                          <a class="dropdown-item" href="cart?action=viewCart&khachHangID=${sessionScope.idKH}"
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
                        >Bài viết</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </nav>
      </div>
        </header>


        <!-- Page content -->
        <main class="content-wrapper">
            <div class="container py-5 mt-n2 mt-sm-0">
                <div class="row pt-md-2 pt-lg-3 pb-sm-2 pb-md-3 pb-lg-4 pb-xl-5">


       

                    <!-- Orders content -->
                    <div class="col-lg-9">
                        <div class="ps-lg-3 ps-xl-0">

                            <!-- Page title + Sorting selects -->
                            <div class="row align-items-center pb-3 pb-md-4 mb-md-1 mb-lg-2">
                                <div class="col-md-4 col-xl-6 mb-3 mb-md-0">
                                    <h1 class="h2 me-3 mb-0">Orders</h1>
                                </div>
                                <div class="col-md-8 col-xl-6">
                                    <div class="row row-cols-1 row-cols-sm-2 g-3 g-xxl-4">
                                        <div class="col">
                                            <select class="form-select" data-select="{
                                                    &quot;placeholderValue&quot;: &quot;Select status&quot;,
                                                    &quot;choices&quot;: [
                                                    {
                                                    &quot;value&quot;: &quot;&quot;,
                                                    &quot;label&quot;: &quot;Select status&quot;,
                                                    &quot;placeholder&quot;: true
                                                    },
                                                    {
                                                    &quot;value&quot;: &quot;inprogress&quot;,
                                                    &quot;label&quot;: &quot;<div class=\&quot;d-flex align-items-center\&quot;><span class=\&quot;bg-info rounded-circle p-1 me-2\&quot;></span>In progress</div>&quot;
                                                    },
                                                    {
                                                    &quot;value&quot;: &quot;delivered&quot;,
                                                    &quot;label&quot;: &quot;<div class=\&quot;d-flex align-items-center\&quot;><span class=\&quot;bg-success rounded-circle p-1 me-2\&quot;></span>Delivered</div>&quot;
                                                    },
                                                    {
                                                    &quot;value&quot;: &quot;canceled&quot;,
                                                    &quot;label&quot;: &quot;<div class=\&quot;d-flex align-items-center\&quot;><span class=\&quot;bg-danger rounded-circle p-1 me-2\&quot;></span>Canceled</div>&quot;
                                                    },
                                                    {
                                                    &quot;value&quot;: &quot;delayed&quot;,
                                                    &quot;label&quot;: &quot;<div class=\&quot;d-flex align-items-center\&quot;><span class=\&quot;bg-warning rounded-circle p-1 me-2\&quot;></span>Delayed</div>&quot;
                                                    }
                                                    ]
                                                    }" data-select-template="true" aria-label="Status sorting"></select>
                                        </div>
                                        <div class="col">
                                            <select class="form-select" data-select="{&quot;removeItemButton&quot;: false}" aria-label="Timeframe sorting">
                                                <option value="all-time">For all time</option>
                                                <option value="last-year">For last year</option>
                                                <option value="last-3-months">For last 3 months</option>
                                                <option value="last-30-days">For last 30 days</option>
                                                <option value="last-week">For last week</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <!-- Sortable orders table -->
                            <div data-filter-list="{&quot;listClass&quot;: &quot;orders-list&quot;, &quot;sortClass&quot;: &quot;orders-sort&quot;, &quot;valueNames&quot;: [&quot;date&quot;, &quot;total&quot;]}">
                                <table class="table align-middle fs-sm text-nowrap">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="py-3 ps-0">
                                                <span class="text-body fw-normal">Order <span class="d-none d-md-inline">#</span></span>
                                            </th>
                                            <th scope="col" class="py-3 d-none d-md-table-cell">
                                                <button type="button" class="btn orders-sort fw-normal text-body p-0" data-sort="date">Order date</button>
                                            </th>
                                            <th scope="col" class="py-3 d-none d-md-table-cell">
                                                <span class="text-body fw-normal">Status</span>
                                            </th>
                                            <th scope="col" class="py-3 d-none d-md-table-cell">
                                                <button type="button" class="btn orders-sort fw-normal text-body p-0" data-sort="total">Total</button>
                                            </th>
                                            <th scope="col" class="py-3">&nbsp;</th>
                                        </tr>
                                    </thead>

                                    <tbody class="text-body-emphasis orders-list">

                                        <c:forEach var="item" items="${orderDTOs}">
                                            <tr>
                                                <td class="fw-medium pt-2 pb-3 py-md-2 ps-0">
                                                    <a class="d-inline-block animate-underline text-body-emphasis text-decoration-none py-2" href="#orderDetails" data-bs-toggle="offcanvas" aria-controls="orderDetails" aria-label="Show order details">
                                                        <span class="animate-target">${item.donHang.id}</span>
                                                    </a>
                                                </td>
                                                <td class="fw-medium py-3 d-none d-md-table-cell">
                                                    ${item.donHang.ngayDat}
                                                </td>
                                                <td class="fw-medium py-3 d-none d-md-table-cell">
                                                    <span class="d-flex align-items-center">
                                                        <span class="${item.donHang.tinhTrang == 'Hoàn thành' ? 'bg-success' : (item.donHang.tinhTrang == 'Đang giao hàng' ? 'bg-info' : 'bg-danger')} rounded-circle p-1 me-2"></span>
                                                        ${item.donHang.tinhTrang}
                                                    </span>
                                                </td>
                                                <td class="fw-medium py-3 d-none d-md-table-cell">
                                                    $${item.donHang.tongTien}
                                                </td>
                                                <td class="py-3 pe-0">
                                                    <span class="d-flex align-items-center justify-content-end position-relative gap-1 gap-sm-2 ms-n2 ms-sm-0">
                                                        <c:forEach var="ctdh" items="${item.donHang.chiTietDonHangs}">
                                                            <span><img src="${ctdh.dienThoai.hinhAnh}" width="64" alt="Thumbnail"></span>
                                                            </c:forEach>

                                                        <a class="btn btn-icon btn-ghost btn-secondary stretched-link border-0" 
                                                           href="#orderDetails" data-bs-toggle="offcanvas" 
                                                           aria-controls="orderDetails" aria-label="Show order details"
                                                           onclick="handleClick('${item.donHang.id}', '${item.donHang.tinhTrang}',
                                                                           `${item.chiTietListJson}`,
                                                           ${item.donHang.tongTien}, '${item.donHang.diaChiGiaoHang}')">

                                                            <i class="ci-chevron-right fs-lg"></i>
                                                        </a>
                                                    </span>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>

                                </table>
                            </div>


                            <!-- Pagination -->
                            <nav class="pt-3 pb-2 pb-sm-0 mt-2 mt-md-3" aria-label="Page navigation example">
                                <ul class="pagination">
                                    <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                        <a class="page-link" href="?page=${currentPage - 1}" tabindex="-1" aria-disabled="true">Previous</a>
                                    </li>


                                    <c:forEach var="i" begin="1" end="${totalPages}">
                                        <li class="page-item ${i == currentPage ? 'active' : ''}">
                                            <a class="page-link" href="?page=${i}">${i}</a>
                                        </li>
                                    </c:forEach>


                                    <li class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
                                        <a class="page-link" href="?page=${currentPage + 1}">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
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
                                <div class="accordion-item col border-0">
                                    <h6 class="accordion-header" id="customerHeading">
                                        <span class="text-dark-emphasis d-none d-sm-block">Customer service</span>
                                        <button type="button" class="accordion-button collapsed py-3 d-sm-none" data-bs-toggle="collapse" data-bs-target="#customerLinks" aria-expanded="false" aria-controls="customerLinks">Customer service</button>
                                    </h6>
                                    <div class="accordion-collapse collapse d-sm-block" id="customerLinks" aria-labelledby="customerHeading" data-bs-parent="#footerLinks">
                                        <ul class="nav flex-column gap-2 pt-sm-3 pb-3 mt-n1 mb-1">
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Payment methods</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Money back guarantee</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Product returns</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Support center</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Shipping</a>
                                            </li>
                                            <li class="d-flex w-100 pt-1">
                                                <a class="nav-link animate-underline animate-target d-inline fw-normal text-truncate p-0" href="#!">Terms &amp; conditions</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <hr class="d-sm-none my-0">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Category / tag links -->
                <div class="d-flex flex-column gap-3 pb-3 pb-md-4 pb-lg-5 mt-n2 mt-sm-n4 mt-lg-0 mb-4">
                    <ul class="nav align-items-center text-body-tertiary gap-2">
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Computers</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Smartphones</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">TV, Video</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Speakers</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Cameras</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Printers</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Video Games</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Headphones</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Wearable</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">HDD/SSD</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Smart Home</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Apple Devices</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Tablets</a>
                        </li>
                    </ul>
                    <ul class="nav align-items-center text-body-tertiary gap-2">
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Monitors</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Scanners</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Servers</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Heating and Cooling</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">E-readers</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Data Storage</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Networking</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Power Strips</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Plugs and Outlets</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Detectors and Sensors</a>
                        </li>
                        <li class="px-1">/</li>
                        <li class="animate-underline">
                            <a class="nav-link fw-normal p-0 animate-target" href="#!">Accessories</a>
                        </li>
                    </ul>
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

            <!-- Additional spacing to accommodate the sticky offcanvas toggle button -->
            <div class="d-lg-none" style="height: 3.75rem"></div>
        </footer>


        <!-- Sidebar navigation offcanvas toggle that is visible on screens < 992px wide (lg breakpoint) -->
        <button type="button" class="fixed-bottom z-sticky w-100 btn btn-lg btn-dark border-0 border-top border-light border-opacity-10 rounded-0 pb-4 d-lg-none" data-bs-toggle="offcanvas" data-bs-target="#accountSidebar" aria-controls="accountSidebar" data-bs-theme="light">
            <i class="ci-sidebar fs-base me-2"></i>
            Account menu
        </button>


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
        <script src="View/customer/assets/vendor/choices.js/choices.min.js"></script>
        <script src="View/customer/assets/vendor/list.js/list.min.js"></script>

        <!-- Bootstrap + Theme scripts -->
        <script src="View/customer/assets/js/theme.min.js"></script>


    </body>
    <script>
        function handleClick(orderId, status, chiTietListJson, totalPrice, deliveryAddress) 
        {
            if(orderList === "0"){
            alert("Bạn chưa có đơn hàng nào");
            window.location.href= "${pageContext.request.contextPath}";
            }
            console.log(orderId);
            console.log(status);
            console.log(totalPrice);
            console.log(deliveryAddress);
            console.log(chiTietListJson);
            const validJsonString = chiTietListJson
                    .replace(/'/g, '"') 
                    .replace(/([{,])\s*([a-zA-Z0-9_]+)\s*:/g, '$1"$2":');
            
            const productDetails = JSON.parse(validJsonString);
            
            document.getElementById("orderIdAside").textContent = "Order #" +orderId;
            document.getElementById("orderStatusAside").textContent = status;
            const statusCircle = document.querySelector(".bg-info.rounded-circle.p-1.me-2");
            statusCircle.classList.remove("bg-info", "bg-success", "bg-warning", "bg-danger");

            switch (status) {
                case "Đang giao hàng":
                    statusCircle.classList.add("bg-info");
                    break;
                case "Hoàn thành":
                    statusCircle.classList.add("bg-success");
                    break;
                case "Chưa giải quyết":
                    statusCircle.classList.add("bg-warning");
                    break;
                default:
                    statusCircle.classList.add("bg-danger");
            }
            
            console.log(productDetails);
            
            var html = ``;
            productDetails.map(function(item) {
                html += '<div class="d-flex align-items-center">' +
                    '<a class="flex-shrink-0" href="shop-product-general-electronics.html">' +
                        '<img src="' + item.img + '" width="110" alt="iPad Pro">' +
                    '</a>' +
                    '<div class="w-100 min-w-0 ps-2 ps-sm-3">' +
                        '<h5 class="d-flex animate-underline mb-2">' +
                            '<a class="d-block fs-sm fw-medium text-truncate animate-target" href="shop-product-general-electronics.html">' + item.name + '</a>' +
                        '</h5>' +
                        '<div class="h6 mb-2">$' + item.price + '</div>' +
                        '<div class="fs-xs">Qty:' + item.qty +  '</div>' +
                    '</div>' +
                '</div>';
                });
            document.getElementById("orderDetailAside").innerHTML = html;
            document.getElementById('orderPriceAside').textContent = "$" + totalPrice;

        }
    </script>
</html>