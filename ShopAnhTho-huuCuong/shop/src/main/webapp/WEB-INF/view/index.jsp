<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="com.shopbetho.shop.entity.FormatUtil" %>
<!DOCTYPE html>
<html>
<head>
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
            rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/css/index.css">
    <title>ShopBeTho</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<main class="main">
    <div class="main__1">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <img
                          src="https://file.hstatic.net/200000692427/file/790x532_61ca7a43928f4f6f8158e06b19cfc605.png"
                    />
                </div>

                <div class="col-lg-6">
                    <h4>Con trẻ tuyệt nhất khi thoải mái là chính mình</h4>
                    <span class="main__1__icon"> “ </span>

                    <p>
                        Mỗi thiết kế của Shopbetho đều tuân thủ triết lý "COMFYNISTA -
                        Thoải mái chính là thời trang", trong đó sự thoải mái của các bé
                        được ưu tiên trong mỗi chi tiết nhỏ nhưng vẫn chứa đựng sự tinh
                        tế và khác biệt. Vì vậy, Nous luôn được hàng triệu bà mẹ Việt
                        Nam tin chọn nâng niu hành trình lớn khôn của bé.
                    </p>

                    <span class="main__1__icon__2">“</span>

                    <span class="main__1__btn">
                <p>Xem thêm</p>
                <img src="/images/img_button.webp" />
              </span>
                </div>
            </div>
        </div>
    </div>

    <div class="main__2">
        <div class="container">
            <div class="row">
                <h2>Sản phẩm nổi bật</h2>
            </div>
            <div class="row">
                <div class="col-sm-6"></div>
                <div class="col-sm-6 justify-content-end d-flex">
                    <nav class="main__2__menu">
                        <p>Hàng mới</p>
                        <p>Hot sales</p>
                        <p>Phụ kiện</p>
                        <p>XEM THÊM</p>
                    </nav>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="main__2__product d-flex flex-nowrap">
                        <c:choose>
                            <c:when test="${productsHighLight != null && productsHighLight.size() > 0}">
                                <c:forEach var="product" items="${productsHighLight}">
                                    <div class="card col-sm-3">
                                        <div style="background-image: url(${product.colors[0].avtColor});
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
                            </c:when>
                            <c:otherwise>
                                <h1>Không có sản phẩm nổi bật nào.</h1>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main__3">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="main__3__collection">
                        <div class="row main__3__collection__more">
                            <h3>Bộ sưu tập</h3>
                            <a href="#">
                                XEM THÊM
                                <i class="bx bx-right-arrow-alt"></i>
                            </a>
                        </div>

                        <div class="row">
                            <div class="main__3__collection__img">
                                <c:choose>
                                    <c:when test="${collections != null && collections.imageUrls.size() > 0}">
                                        <c:forEach var="picture" items="${collections.imageUrls}" varStatus="loop">
                                            <img
                                                    class=`main__3__collection__img__item__${loop.index + 1}`
                                                    src="${picture}"
                                            />
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <img
                                                class="main__3__collection__img__item__1"
                                                src="https://file.hstatic.net/200000692427/file/1.jpg"
                                        />
                                        <img
                                                class="main__3__collection__img__item__2"
                                                src="https://file.hstatic.net/200000692427/file/1_0a9f2d4992fd467890bbf9b07258faee.jpg"
                                        />
                                        <img
                                                class="main__3__collection__img__item__3"
                                                src="https://file.hstatic.net/200000692427/file/3.jpg"
                                        />
                                        <img
                                                class="main__3__collection__img__item__4"
                                                src="https://file.hstatic.net/200000692427/file/2_b488f8d7b0b4460396ad165832970f6f.jpg"
                                        />
                                        <img
                                                class="main__3__collection__img__item__5"
                                                src="https://file.hstatic.net/200000692427/file/2_3f667b571a7a40279b27ebad8e30c576.jpg"
                                        />
                                        <img
                                                class="main__3__collection__img__item__6"
                                                src="https://file.hstatic.net/200000692427/file/3_52b3a174a62c4d1e8b2cd40450fc3146.jpg"
                                        />
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="main__3__banner">
<%--            <img--%>
<%--                    src="https://file.hstatic.net/200000692427/file/bst_moi_20250204_cover_web_77546265156f44499593de006a49864b.jpg"--%>
<%--            />--%>
            <c:if test="${banners != null}">
                <img
                        src="${banners.secondBanner}"
                />
            </c:if>
        </div>
    </div>

    <div class="main__4">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 main__4__slogan__welcome">
                    <h2>SẢN PHẨM MỚI</h2>
                    <h4>Coming Soon</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="main__4__product">
                        <c:choose>
                            <c:when test="${productsNew != null && productsNew.size() > 0}">
                                <c:forEach var="product" items="${productsNew}">
                                    <div class="card col-sm-3">
                                        <div style="background-image: url(${product.colors[0].avtColor});
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
                            </c:when>
                            <c:otherwise>
                                <h1>Không có sản phẩm nào mới.</h1>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main__5">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="main__5__news__slogan">
                        <h2>Tin tức</h2>

                        <a href="/blogs"
                        >Xem thêm
                            <i class="bx bx-right-arrow-alt"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 main__5__news__product">
                    <c:choose>
                        <c:when test="${blogs != null && blogs.size() > 0}">
                            <c:forEach var="blogItem" items="${blogs}">
                                <div class="card">
                                    <img
                                            src="${blogItem.imageUrl}"
                                    />
                                    <h5 class="card-title">${blogItem.title}</h5>

                                    <p class="card-text">
                                        ${blogItem.content}
                                    </p>

                                    <a href="#"
                                    >Xem thêm
                                        <i class="bx bx-right-arrow-alt"></i>
                                    </a>
                                </div>
                            </c:forEach>

                        </c:when>
                        <c:otherwise>
                            <div class="card">
                                <img
                                        src="https://file.hstatic.net/200000692427/article/dia_chi_nuel_web_8ba81ed905a44bdeafe88c3c45bf2708_1024x1024.jpg"
                                />
                                <h5 class="card-title">Danh sách đại lý Shop Bé Thơ</h5>

                                <p class="card-text">
                                    Gửi ba mẹ thân thương của Nous! Giáng sinh ấm áp lại về, hãy
                                    cùng Nous tận hưởng trọn vẹn tươi vui của mùa lễ hội với những
                                    thiết kế êm ái trong BST “Nuel Gift Haus”
                                </p>

                                <a href="#"
                                >Xem thêm
                                    <i class="bx bx-right-arrow-alt"></i>
                                </a>
                            </div>

                            <div class="card">
                                <img
                                        src="https://file.hstatic.net/200000692427/article/dia_chi_nuel_web_8ba81ed905a44bdeafe88c3c45bf2708_1024x1024.jpg"
                                />
                                <h5 class="card-title">Danh sách đại lý Shop Bé Thơ</h5>

                                <p class="card-text">
                                    Gửi ba mẹ thân thương của Nous! Giáng sinh ấm áp lại về, hãy
                                    cùng Nous tận hưởng trọn vẹn tươi vui của mùa lễ hội với những
                                    thiết kế êm ái trong BST “Nuel Gift Haus”
                                </p>

                                <a href="#"
                                >Xem thêm
                                    <i class="bx bx-right-arrow-alt"></i>
                                </a>
                            </div>

                            <div class="card">
                                <img
                                        src="https://file.hstatic.net/200000692427/article/dia_chi_nuel_web_8ba81ed905a44bdeafe88c3c45bf2708_1024x1024.jpg"
                                />
                                <h5 class="card-title">Danh sách đại lý Shop Bé Thơ</h5>

                                <p class="card-text">
                                    Gửi ba mẹ thân thương của Nous! Giáng sinh ấm áp lại về, hãy
                                    cùng Nous tận hưởng trọn vẹn tươi vui của mùa lễ hội với những
                                    thiết kế êm ái trong BST “Nuel Gift Haus”
                                </p>

                                <a href="#"
                                >Xem thêm
                                    <i class="bx bx-right-arrow-alt"></i>
                                </a>
                            </div>
                        </c:otherwise>
                    </c:choose>

                </div>
            </div>
        </div>
    </div>

    <div class="main__6">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 main__6__slogan__1">
                    <img
                            src="https://file.hstatic.net/200000692427/file/icon-1_1_19a39ece32684288b7867210e0821408.svg"
                    />

                    <h2>Nous Baby Gallery</h2>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 main__6__img">
                    <img
                            src="https://theme.hstatic.net/200000692427/1001117622/14/home-insta-mid-image-1.jpg?v=5504"
                    />

                    <img
                            src="https://theme.hstatic.net/200000692427/1001117622/14/home-insta-mid-image-2.jpg?v=5504"
                    />

                    <img
                            src="https://theme.hstatic.net/200000692427/1001117622/14/home-insta-mid-image-3.jpg?v=5504S"
                    />

                    <img
                            src="https://theme.hstatic.net/200000692427/1001117622/14/home-insta-mid-image-4.jpg?v=5504"
                    />
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 main__6__slogan__2">
                    <h2>New Lookbook</h2>
                </div>

                <div class="row">
                    <div class="col-sm-12 main__6__video">
                        <iframe
                                width="100%"
                                height="700"
                                src="https://www.youtube.com/embed/XuD4mOQ0Irg"
                                title="YouTube video player"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                allowfullscreen
                        >
                        </iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="footer.jsp"/>


<!-- nút gọi và nút liên hệ -->

    <span class="btn__body__icon">
          <div class="btn__body">
            <p>Hỗ trợ ngay</p>
            <img src="/images/img button body.png" />
          </div>

          <i class="bx bxl-facebook-circle"></i>
          <i class="bx bxl-messenger"></i>

          <div class="btn__body__zalo">
            <img src="/images/icon zalo.webp" />
          </div>
    </span>

    <script src="/bootstrap/js/bootstrap.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="/js/index.js"></script>
</body>
</html>