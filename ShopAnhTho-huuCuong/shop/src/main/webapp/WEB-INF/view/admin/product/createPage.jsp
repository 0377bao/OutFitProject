<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="stylesheet"
                    href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css?v=<%= System.currentTimeMillis() %>" />

                <link rel="stylesheet"
                    href="${pageContext.request.contextPath}/bootstraps/css/bootstrap.min.css?v=<%= System.currentTimeMillis() %>" />

                <link rel="stylesheet"
                    href="${pageContext.request.contextPath}/admin/css/dashboardProduct.css?v=<%= System.currentTimeMillis() %>" />
                <title>Admin page</title>
            </head>

            <body>

                <div class="Header"></div>

                <header class="header">
                    <div class="container">
                        <div class="header__1">
                            <h1>Quản lý sản phẩm</h1>
                            <button class="header__1__btn">Thêm sản phẩm mới</button>
                        </div>
                        <hr />
                        <div class="header__2">
                            <input type="text" class="form-control p-3" placeholder="Nhập sản phẩm bạn muốn tìm">
                            <button class="header__2__btn">Tìm kiếm</button>
                        </div>
                    </div>
                </header>

                <main class="main">
                    <div class="container">
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

                        <div class="row">
                            <div class="col-sm-1">0</div>
                            <div class="col-sm-2">Áo thun mùa hè</div>
                            <div class="col-sm-1">350. 000 vnđ</div>
                            <div class="col-sm-3">Là loại áo thun thích hợp cho bé mặc mùa hè tránh nóng</div>
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
                            <div class="col-sm-2">Áo thun mùa hè</div>
                            <div class="col-sm-1">350. 000 vnđ</div>
                            <div class="col-sm-3">Là loại áo thun thích hợp cho bé mặc mùa hè tránh nóng</div>
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
                            <div class="col-sm-2">Áo thun mùa hè</div>
                            <div class="col-sm-1">350. 000 vnđ</div>
                            <div class="col-sm-3">Là loại áo thun thích hợp cho bé mặc mùa hè tránh nóng</div>
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
                            <div class="col-sm-2">Áo thun mùa hè</div>
                            <div class="col-sm-1">350. 000 vnđ</div>
                            <div class="col-sm-3">Là loại áo thun thích hợp cho bé mặc mùa hè tránh nóng</div>
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
                            <div class="col-sm-2">Áo thun mùa hè</div>
                            <div class="col-sm-1">350. 000 vnđ</div>
                            <div class="col-sm-3">Là loại áo thun thích hợp cho bé mặc mùa hè tránh nóng</div>
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
                            <div class="col-sm-2">Áo thun mùa hè</div>
                            <div class="col-sm-1">350. 000 vnđ</div>
                            <div class="col-sm-3">Là loại áo thun thích hợp cho bé mặc mùa hè tránh nóng</div>
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

                <footer class="footer"></footer>

                <div class="Footer"></div>

                <script src="Resource/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
                <script src="Resource/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
                <script src="Resource/bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>

                <link rel="stylesheet"
                    href="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js?v=<%= System.currentTimeMillis() %>" />
                <link rel="stylesheet"
                    href="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js?v=<%= System.currentTimeMillis() %>" />
                <link rel="stylesheet"
                    href="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js?v=<%= System.currentTimeMillis() %>" />
            </body>

            </html>