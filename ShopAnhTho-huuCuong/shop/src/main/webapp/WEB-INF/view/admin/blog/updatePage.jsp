
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm sản phẩm mới</title>
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

    <!--Thêm thư viện bằng CDN tạm thời-->
    <link
            href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
            rel="stylesheet"
    />
    <script src="https://cdn.quilljs.com/1.3.6/quill.min.js"></script>

    <link rel="stylesheet" href="/admin/css/create_blog.css" />
</head>
<body>
<main>
    <jsp:include page="../../header.jsp"/>
    <div class="CreateProduct">
        <div class="container">
            <div class="CreateProductSubmit">
                <h2>Thêm sản bài viết mới</h2>
                <form id="formData" action="/admin/blog/update" method="post" enctype="multipart/form-data">
                    <input type="number" id="id" name="id" hidden="hidden" value="${blog.id}"/>
                    <input type="text" id="titleBlog" name="title" hidden="hidden"/>
                    <input type="text" id="contentBlog" name="content" hidden="hidden"/>
                    <input type="text" id="descriptionBlog" name="description" hidden="hidden" value=" "/>
                    <input
                            type="file"
                            name="image"
                            id="CreateProduct__GeneralInfor__UploadImg__Input"
                            accept="image/*"
                            hidden
                            value="${blog.imageUrl}"
                    />
                    <button class="CreateProductSubmit__Btn">Thêm</button>
                </form>
            </div>
        </div>

        <div class="container">
            <div class="CreateProductMain">
                <div class="CreateProduct__GeneralInfor">
                    <h3>Thông tin tổng quan</h3>
                    <p>Tiêu đề bài viết</p>
                    <input
                            class="form-control CreateProduct__GeneralInfor__Title__Blog"
                            type="text"
                            placeholder="Ví dụ: áo khoác mùa hè cho bé"
                            value="${blog.title}"
                    />

                    <p class="CreateProduct__GeneralInfor__passage">Đoạn văn</p>

                    <!-- Thanh công cụ và ô nhập dữ liệu -->
                    <div id="toolbar">
                        <select class="ql-font"></select>
                        <select class="ql-size"></select>
                        <button class="ql-bold"></button>
                        <button class="ql-italic"></button>
                        <button class="ql-underline"></button>
                        <button class="ql-strike"></button>
                        <button class="ql-blockquote"></button>
                        <button class="ql-code-block"></button>
                        <button class="ql-list" value="ordered"></button>
                        <button class="ql-list" value="bullet"></button>
                        <button class="ql-align" value=""></button>
                        <button class="ql-align" value="center"></button>
                        <button class="ql-align" value="right"></button>
                        <button class="ql-align" value="justify"></button>
                        <button class="ql-image"></button>
                        <button class="ql-link"></button>
                        <button class="ql-color"></button>
                        <button class="ql-background"></button>
                    </div>

                    <div id="CreateProduct__GeneralInfor__Editor">
                        ${blog.content}
                    </div>

                    <!-- Kết thúc thanh công cụ và ô nhập dữ liệu -->

                    <!-- Xem trước bản blog -->

                    <div class="PreviewContent__Box">
                        <span>Nội dung xem trước</span>
                        <hr/>
                        <div class="PreviewContent">
                            <p style="color: red;">
                                Bạn chưa có nội dung xem trước, vui lòng thêm nội dung vào
                                phần ở phía trên !
                            </p>
                        </div>
                    </div>
                </div>

                <div class="CreateProduct__GeneralInfor__UploadImg">
                    <div class="CreateProduct__GeneralInfor__UploadImg__avt">
                        <img
                                id="CreateProduct__GeneralInfor__UploadImg__avt__Preview"
                                style="width: 100%"
                                src="${blog.imageUrl}"
                        />
                        <span>Thêm hình ảnh</span>

                    </div>

                    <div class="CreateProduct__GeneralInfor__UploadImg__Category">
                        <h4 class="fw-bold">Xem trước trang blog của bạn !</h4>

                        <button
                                class="CreateProduct__GeneralInfor__UploadImg__Category__Btn"
                        >
                            Đồng ý
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="../../footer.jsp"/>
<script src="/bootstrap/js/bootstrap.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/js/create_blog.js"></script>
</body>
</html>
