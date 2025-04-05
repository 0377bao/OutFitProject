<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="/admin/css/dashboard_product.css" />
    <link rel="stylesheet" href="/css/footer.css" />
    <link rel="stylesheet" href="/css/header.css" />
    <title>Admin Products</title>
    <style>
        .header__banner img{
            margin-top: 0 !important;
        }
    </style>
</head>
<body>
<jsp:include page="../../header.jsp"/>
<div class="header">
    <div class="container">
        <div class="header__1">
            <h1>Quản lý bài viết (Blog)</h1>
            <button class="header__1__btn">Thêm bài viết mới</button>
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
</div>

<main class="main">
    <div class="container">
        <div class="row main__navbar">
            <div class="col-sm-1 fw-bold">STT</div>
            <div class="col-sm-2 fw-bold">Tiêu đề bài viết</div>

            <div class="col-sm-4 fw-bold">Nội dung sơ lược</div>
            <div class="col-sm-2 fw-bold">Thời gian tạo</div>
            <div class="col-sm-1 fw-bold">Mã bài viết</div>
            <div class="col-sm-2 fw-bold">Hành động</div>
        </div>
        <hr />

        <div class="row">
            <div class="col-sm-1">0</div>
            <div class="col-sm-2">Cách giặt đồ trẻ sơ sinh khi mới mua về siêu đơn giản</div>

            <div class="col-sm-4">
                Giặt và bảo quản như thế nào để quần áo của bé luôn mới, sạch sẽ sau
                khi mua là điều khiến nhiều mẹ bỉm sữa lo lắng và thắc mắc. Trong
                bài viết dưới đây, Nous sẽ chia sẻ với mẹ cách giặt đồ trẻ sơ sinh
                mới mua về siêu đơn giản.
            </div>
            <div class="col-sm-2">20h03 27/8/2025</div>
            <div class="col-sm-1">7878977</div>
            <div class="col-sm-2">
                <button class="btn btn-warning">Sửa</button>
                <button class="btn btn-danger m-3">Xóa</button>
            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-sm-1">1</div>
            <div class="col-sm-2">Cách giặt đồ trẻ sơ sinh khi mới mua về siêu đơn giản</div>

            <div class="col-sm-4">
                Giặt và bảo quản như thế nào để quần áo của bé luôn mới, sạch sẽ sau
                khi mua là điều khiến nhiều mẹ bỉm sữa lo lắng và thắc mắc. Trong
                bài viết dưới đây, Nous sẽ chia sẻ với mẹ cách giặt đồ trẻ sơ sinh
                mới mua về siêu đơn giản.
            </div>
            <div class="col-sm-2">20h03 27/8/2025</div>
            <div class="col-sm-1">7878977</div>
            <div class="col-sm-2">
                <button class="btn btn-warning">Sửa</button>
                <button class="btn btn-danger m-3">Xóa</button>
            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-sm-1">2</div>
            <div class="col-sm-2">Cách giặt đồ trẻ sơ sinh khi mới mua về siêu đơn giản</div>

            <div class="col-sm-4">
                Giặt và bảo quản như thế nào để quần áo của bé luôn mới, sạch sẽ sau
                khi mua là điều khiến nhiều mẹ bỉm sữa lo lắng và thắc mắc. Trong
                bài viết dưới đây, Nous sẽ chia sẻ với mẹ cách giặt đồ trẻ sơ sinh
                mới mua về siêu đơn giản.
            </div>
            <div class="col-sm-2">20h03 27/8/2025</div>
            <div class="col-sm-1">7878977</div>
            <div class="col-sm-2">
                <button class="btn btn-warning">Sửa</button>
                <button class="btn btn-danger m-3">Xóa</button>
            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-sm-1">3</div>
            <div class="col-sm-2">Cách giặt đồ trẻ sơ sinh khi mới mua về siêu đơn giản</div>

            <div class="col-sm-4">
                Giặt và bảo quản như thế nào để quần áo của bé luôn mới, sạch sẽ sau
                khi mua là điều khiến nhiều mẹ bỉm sữa lo lắng và thắc mắc. Trong
                bài viết dưới đây, Nous sẽ chia sẻ với mẹ cách giặt đồ trẻ sơ sinh
                mới mua về siêu đơn giản.
            </div>
            <div class="col-sm-2">20h03 27/8/2025</div>
            <div class="col-sm-1">7878977</div>
            <div class="col-sm-2">
                <button class="btn btn-warning">Sửa</button>
                <button class="btn btn-danger m-3">Xóa</button>
            </div>
        </div>

        <hr />
        <div class="row">
            <div class="col-sm-1">4</div>
            <div class="col-sm-2">Cách giặt đồ trẻ sơ sinh khi mới mua về siêu đơn giản</div>

            <div class="col-sm-4">
                Giặt và bảo quản như thế nào để quần áo của bé luôn mới, sạch sẽ sau
                khi mua là điều khiến nhiều mẹ bỉm sữa lo lắng và thắc mắc. Trong
                bài viết dưới đây, Nous sẽ chia sẻ với mẹ cách giặt đồ trẻ sơ sinh
                mới mua về siêu đơn giản.
            </div>
            <div class="col-sm-2">20h03 27/8/2025</div>
            <div class="col-sm-1">7878977</div>
            <div class="col-sm-2">
                <button class="btn btn-warning">Sửa</button>
                <button class="btn btn-danger m-3">Xóa</button>
            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-sm-1">5</div>
            <div class="col-sm-2">Cách giặt đồ trẻ sơ sinh khi mới mua về siêu đơn giản</div>

            <div class="col-sm-4">
                Giặt và bảo quản như thế nào để quần áo của bé luôn mới, sạch sẽ sau
                khi mua là điều khiến nhiều mẹ bỉm sữa lo lắng và thắc mắc. Trong
                bài viết dưới đây, Nous sẽ chia sẻ với mẹ cách giặt đồ trẻ sơ sinh
                mới mua về siêu đơn giản.
            </div>
            <div class="col-sm-2">20h03 27/8/2025</div>
            <div class="col-sm-1">7878977</div>
            <div class="col-sm-2">
                <button class="btn btn-warning">Sửa</button>
                <button class="btn btn-danger m-3">Xóa</button>
            </div>
        </div>

        <hr />
    </div>
</main>


<jsp:include page="../../footer.jsp"/>

<script src="/bootstrap/js/bootstrap.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
