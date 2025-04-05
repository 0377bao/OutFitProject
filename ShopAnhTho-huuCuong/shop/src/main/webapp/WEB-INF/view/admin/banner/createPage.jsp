<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Banner</title>
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

    <link rel="stylesheet" href="/admin/css/create_banner.css" />
    <link rel="stylesheet" href="/admin/css/create_blog.css" />
    <link rel="stylesheet" href="/css/header.css" />
    <link rel="stylesheet" href="/css/footer.css" />
</head>
<body>
<jsp:include page="../../header.jsp"/>
<main>
    <div class="CreateBanner container">
        <div class="CreateBanner__title">
            <h1>Cập nhật banner trang chủ</h1>
            <button class="CreateBanner__title__btn">Cập nhật</button>
        </div>

        <div class="container">
            <div class="CreateBanner__1">
                <h5>Banner đầu trang</h5>
                <div class="CreateBanner__1__add">
                    <img src="resource/img/add img.png" />
                </div>
            </div>

            <hr />

            <div class="CreateBanner__2">
                <h5>Banner thân trang</h5>
                <div class="CreateBanner__2__add">
                    <img src="resource/img/add img.png" />
                </div>
            </div>
        </div>
    </div>
    <input type="file" id="imageInput" accept="image/*" hidden />
</main>

<jsp:include page="../../footer.jsp"/>
<script src="/bootstrap/js/bootstrap.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

<script>
    // Đang phát triển UI trên môi trường dev, không có BE nền phần này là tạm thời
    // Tải header từ file header.html

    // Js để xử lý sự kiện chọn ảnh tạm thời
    let currentImg = null;
    const imageInput = document.getElementById("imageInput");

    // Bắt sự kiện click vào khu vực chọn ảnh
    document
        .querySelectorAll(".CreateBanner__1__add, .CreateBanner__2__add")
        .forEach((div) => {
            div.addEventListener("click", function () {
                currentImg = this.querySelector("img"); // Lưu lại ảnh cần thay đổi
                imageInput.click();
            });
        });

    // Khi người dùng chọn ảnh, thay đổi src của ảnh được chọn
    imageInput.addEventListener("change", function (event) {
        if (currentImg && event.target.files.length > 0) {
            const reader = new FileReader();
            reader.onload = function (e) {
                currentImg.src = e.target.result;
                currentImg.style.width = "100%"; // Đảm bảo ảnh mới chiếm toàn bộ chiều rộng
                currentImg.style.height = "auto"; //
            };
            reader.readAsDataURL(event.target.files[0]);
        }
    });
</script>
</body>
</html>
