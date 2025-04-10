<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 4/4/2025
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="com.shopbetho.shop.entity.FormatUtil" %>
<%@ page import="java.lang.String" %>
<html>
<head>
    <title>Chi tiết sản phẩm</title>
    <link
            rel="stylesheet"
            href="/bootstrap/css/bootstrap.css"
    />
    <link
            rel="stylesheet"
            href="/bootstrap/css/bootstrap.min.css"
    />
    <link
            href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
    />

    <link rel="stylesheet" href="/css/chi_tiet_san_pham.css" />
    <link rel="stylesheet" href="/css/header.css" />
    <link rel="stylesheet" href="/css/footer.css" />
</head>
<body>
<jsp:include page="../../header.jsp"/>
<main class="main">
    <div class="container main__product__details">
        <div class="row">
            <div class="col-lg-6">
                <div
                        class="show-image-product"
                        style="background-image: url(${product.colors[0].avtColor});
                            background-size: cover;
                                background-position: center;
                            background-repeat: no-repeat;
                            width: 100%;
                            padding-top: 90%"
                ></div>

                <div class="main__product__details__img__slide">
                    <c:choose>
                        <c:when test="${product != null && product.colors.size() > 0}">
                            <c:forEach var="color" items="${product.colors[0].imageUrl}" varStatus="loop">
                                <div
                                        onclick="handleItemOnclick('${color}')"
                                        class="show-image-product-color-${loop.index}"
                                        style="
                                    background-image: url(${color});
                                    background-size: cover;
                                    background-repeat: no-repeat;
                                        background-position: center;
                                    width: 100%;
                                    padding-top: 100%"
                                ></div>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <h1>Sản phẩm chỉ có một màu</h1>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            <div class="col-lg-6">
                <h1>${product.name}</h1>

                <p>
                    Tình trạng:
                    <c:choose>
                        <c:when test="${isActive != null && isActive == 'true'}">
                            <span id="main__product__details__status">Còn hàng</span>
                        </c:when>
                        <c:otherwise>
                            <span id="main__product__details__status">Hết hàng</span>
                        </c:otherwise>
                    </c:choose>
                </p>

                <p>
                    Mã sản phẩm:
                    <span id="main__product__details__id"> ${product.code} </span>
                </p>

                <p>
                    Giá:
                    <span id="main__product__details__price"> ${price} vnđ </span>
                </p>

                <p>Màu sắc</p>

                <div class="main__product__details__color">
                    <c:forEach var="color" items="${product.colors}" varStatus="loop">
                        <div
                                onclick="handleColorOnClick({
                                        currentColor: '${color.avtColor}',
                                        index: ${loop.index},
                                    size: ${product.colors.size()},
                                        imageColors: '${urlColor[loop.index]}',
                                })"
                                style="
                                background-image: url(${color.avtColor});
                                background-size: cover;
                                background-repeat: no-repeat;
                                background-position: center;
                                width: 100%;
                                padding-top: 100%"
                        ></div>
                    </c:forEach>
                </div>

                <div class="main__product__details__size">
                    <p>Kích thước:</p>
                    <c:forEach var="size" items="${product.sizes}">
                        <button>${size}</button>
                    </c:forEach>
                </div>

                <div class="main__product__details__quantity">
                    <p>Số lượng:</p>

                    <div class="main__product__details__quantity__grid">

                        <input
                                type="number"
                                id="quantity"
                                name="quantity"
                                min="1"
                                value="1"
                                step="1"
                        />

                        <button class="main__product__details__btn">
                            Để lại thông tin mua hàng
                        </button>
                    </div>

                </div>

                <hr/>
                <div class="main__product__details__shop">
                    <h5 class="fw-bold">Tìm tại cửa hàng:</h5>

                    <h5>
                        62/15 Lý Chính Thắng, phường Võ Thị Sáu, Quận 3, thành phố Hồ
                        Chí Minh
                    </h5>
                </div>
            </div>
        </div>
    </div>

    <div class="container main__product__details__describe">
        <h2>Mô tả</h2>
        <hr />
        <p>
            <c:choose>
                <c:when test="${product != null}">
                    ${product.description}
                </c:when>
                <c:otherwise>
                    <h1>Không có mô tả</h1>
                </c:otherwise>
            </c:choose>
        </p>
    </div>

    <div class=" container main__evaluate">
        <h1>Đánh giá sản phẩm</h1>
        <div class="row d-flex  align-items-center">
            <div class="col-3">
                <i class='bx bxs-star main__evaluate__1'>

                </i>
            </div>

            <div class="col-9 main__evaluate__2">

                <div class="main__evaluate__star">
                    <i class='bx bx-star' ></i>

                </div>

                <div class="main__evaluate__star">
                    <i class='bx bx-star' ></i>

                </div>

                <div class="main__evaluate__star">
                    <i class='bx bx-star' ></i>

                </div>

                <div class="main__evaluate__star">
                    <i class='bx bx-star' ></i>

                </div>

                <div class="main__evaluate__star">
                    <i class='bx bx-star' ></i>

                </div>
            </div>
        </div>
    </div>

    <div class="container main__evaluate__similar__roduct__dady">

        <div class="row">
            <div class="col-sm-12">
                <h1 class="fw-bold">
                    Sản phẩm tương tự
                </h1>

                <div class="main__evaluate__similar__roduct">

                    <c:forEach var="product" items="${productLike}">
                        <div class="card">
                            <div class="card-img" style="background-image: url(${product.colors[0].avtColor});
                                    background-size: cover;
                                    background-repeat: no-repeat;
                                    background-position: center;
                                    width: 100%;
                                    padding-top: 100%"
                            ></div>
                            <a style="font-weight: bold;" href="/products/${product.id}" class="card-title"
                            >${product.name}</a>
                            <h5>${FormatUtil.formatCurrency(product.getPrice())}đ</h5>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="../../footer.jsp"/>

<!-- Js load file layout header và footer tạm thời khi chưa có BE -->

<!-- js của bootrap -->
<script src="/bootstrap/js/bootstrap.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
    function handleColorOnClick(colors) {
        const showAvtProduct = document.querySelector(
            '.show-image-product'
        );
        const showImageProductSlide = document.querySelector(
            '.main__product__details__img__slide'
        );
        const imageUrl = colors.imageColors.split("&&&");
        const index = colors.index;
        showAvtProduct.style.backgroundImage = 'url(' + colors.currentColor + ')';
        const html = imageUrl.map((item, index) => {
            return `
                <div
                    class="show-image-product-color-` + index + `"
                    onclick="handleItemOnclick('` + item +`')"
                    style="
                           background-image: url(` + item + `);
                           background-size: cover;
                           background-repeat: no-repeat;
                           background-position: center;
                           width: 100%;
                           padding-top: 90%"
                ></div>
            `
        })
        console.log(colors.currentColor)
        showImageProductSlide.innerHTML = html.join("");

    }

    function handleItemOnclick(imgUrl) {
        const showAvtProduct = document.querySelector(
            '.show-image-product'
        );
        showAvtProduct.style.backgroundImage = 'url(' + imgUrl + ')';
    }
    function formatCurrencyVN(amount) {
        return new Intl.NumberFormat('vi-VN', {
            style: 'currency',
            currency: 'VND',
            minimumFractionDigits: 0,
            maximumFractionDigits: 0
        })
            .format(amount)
            .replace('₫', '')  // Bỏ ký hiệu đ
            .trim();           // Xóa khoảng trắng cuối
    }
</script>
</body>
</html>
