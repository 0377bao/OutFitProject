<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
            rel="stylesheet"
    />
    <link rel="stylesheet" href="/admin/css/dashboardProduct.css" />
    <link rel="stylesheet" type="text/css" href="/css/index.css">
    <title>Admin Products</title>
</head>
<body>
<jsp:include page="../../header.jsp"/>
<header class="headerProduct">
    <div class="container">
        <div class="header__1">
            <h1>Quản lý sản phẩm</h1>

                <button class="header__1__btn"><a class="text__btn__header_1" href="/admin/product/create">Thêm sản phẩm mới</a></button>

        </div>
        <hr />
        <div class="header__2">
            <input
                    type="text"
                    class="form-control p-3"
                    placeholder="Nhập sản phẩm bạn muốn tìm"
            />
            <button class="header__2__btn">Tìm kiếm</button>
        </div>
    </div>
</header>


<main class="main">
    <div class="container main__product__total">
        <div class="row main__navbar">
            <div class="col-sm-1 fw-bold">STT</div>
            <div class="col-sm-2 fw-bold">Tên sản phẩm</div>
            <div class="col-sm-1 fw-bold">Giá sản phẩm</div>
            <div class="col-sm-3 fw-bold">Mô tả sản phẩm</div>
            <div class="col-sm-2 fw-bold">Thời gian tạo</div>
            <div class="col-sm-1 fw-bold">Mã sản phẩm</div>
            <div class="col-sm-2 fw-bold">Hành động</div>
        </div>
        <hr />

<c:choose>
    <c:when test="${products != null}">
        <c:forEach var="product" items="${products}" varStatus="loop">
            <div class="row">
                <div class="col-sm-1">${loop.index + 1}</div>
                <div class="col-sm-2">${product.name}</div>
                <div class="col-sm-1"> ${product.price} vnđ</div>
                <div class="col-sm-3">
                        ${product.description}
                </div>
                <div class="col-sm-2">${product.getCreatedAt().toString().split("T")[1].substring(0,5)} ${product.getCreatedAt().toString().split("T")[0]}</div>
                <div class="col-sm-1">${product.id}</div>
                <div class="col-sm-2">
                    <form action="/admin/product/update/${product.id}" style="display: inline-block">
                        <button class="btn btn-warning">Sửa</button>
                    </form>
                    <form style="display: inline-block">
                        <button class="btn btn-danger m-3">Xóa</button>
                    </form>
                </div>
            </div>
            <hr />
        </c:forEach>
    </c:when>
    <c:otherwise>
        <span>Không có sản phẩm nổi bật nào</span>
    </c:otherwise>
</c:choose>


    </div>

    <div class="container main__outstanding">
        <h1 class="fw-bold m-5">Quản lý sản phẩm nổi bật</h1>

        <div class="row main__navbar">
            <div class="col-sm-1 fw-bold">STT</div>
            <div class="col-sm-2 fw-bold">Tên sản phẩm</div>
            <div class="col-sm-1 fw-bold">Giá sản phẩm</div>
            <div class="col-sm-3 fw-bold">Mô tả sản phẩm</div>
            <div class="col-sm-2 fw-bold">Thời gian tạo</div>
            <div class="col-sm-1 fw-bold">Mã sản phẩm</div>
            <div class="col-sm-2 fw-bold">Hành động</div>
        </div>
        <hr />
        <c:choose>
            <c:when test="${productHighLights != null && productHighLights.size() > 0}">
                <c:forEach var="prodHighLightItem" items="${productHighLights}" varStatus="loop">
                    <div class="row">
                        <div class="col-sm-1">${loop.index + 1}</div>
                        <div class="col-sm-2">${prodHighLightItem.name}</div>
                        <div class="col-sm-1">${prodHighLightItem.price} vnđ</div>
                        <div class="col-sm-3">
                                ${prodHighLightItem.description}
                        </div>
                        <div class="col-sm-2">${prodHighLightItem.getCreatedAt().toString().split("T")[1].substring(0,5)} ${prodHighLightItem.getCreatedAt().toString().split("T")[0]}</div>
                        <div class="col-sm-1">${prodHighLightItem.id}</div>
                        <div class="col-sm-2">
                            <form action="/admin/product/update/${prodHighLightItem.id}" style="display: inline-block">
                                <button class="btn btn-warning">Sửa</button>
                            </form>
                            <form style="display: inline-block">
                                <button class="btn btn-danger m-3">Xóa</button>
                            </form>
                        </div>
                    </div>

                    <hr />
                </c:forEach>
            </c:when>
            <c:otherwise>
                <span>Không có sản phẩm nổi bật</span>
            </c:otherwise>
        </c:choose>



<%--        <div class="row">--%>
<%--            <div class="col-sm-1">1</div>--%>
<%--            <div class="col-sm-2">Áo thun mùa hè</div>--%>
<%--            <div class="col-sm-1">350. 000 vnđ</div>--%>
<%--            <div class="col-sm-3">--%>
<%--                Là loại áo thun thích hợp cho bé mặc mùa hè tránh nóng--%>
<%--            </div>--%>
<%--            <div class="col-sm-2">20h03 27/8/2025</div>--%>
<%--            <div class="col-sm-1">7878977</div>--%>
<%--            <div class="col-sm-2">--%>
<%--                <button class="btn btn-warning">Sửa</button>--%>
<%--                <button class="btn btn-danger m-3">Xóa</button>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <hr />--%>

<%--        <div class="row">--%>
<%--            <div class="col-sm-1">2</div>--%>
<%--            <div class="col-sm-2">Áo thun mùa hè</div>--%>
<%--            <div class="col-sm-1">350. 000 vnđ</div>--%>
<%--            <div class="col-sm-3">--%>
<%--                Là loại áo thun thích hợp cho bé mặc mùa hè tránh nóng--%>
<%--            </div>--%>
<%--            <div class="col-sm-2">20h03 27/8/2025</div>--%>
<%--            <div class="col-sm-1">7878977</div>--%>
<%--            <div class="col-sm-2">--%>
<%--                <button class="btn btn-warning">Sửa</button>--%>
<%--                <button class="btn btn-danger m-3">Xóa</button>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <hr />--%>

<%--        <div class="row">--%>
<%--            <div class="col-sm-1">3</div>--%>
<%--            <div class="col-sm-2">Áo thun mùa hè</div>--%>
<%--            <div class="col-sm-1">350. 000 vnđ</div>--%>
<%--            <div class="col-sm-3">--%>
<%--                Là loại áo thun thích hợp cho bé mặc mùa hè tránh nóng--%>
<%--            </div>--%>
<%--            <div class="col-sm-2">20h03 27/8/2025</div>--%>
<%--            <div class="col-sm-1">7878977</div>--%>
<%--            <div class="col-sm-2">--%>
<%--                <button class="btn btn-warning">Sửa</button>--%>
<%--                <button class="btn btn-danger m-3">Xóa</button>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <hr />--%>
    </div>
</main>

<jsp:include page="../../footer.jsp"/>

<script src="/bootstrap/js/bootstrap.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/js/index.js"></script>
</body>
</html>
