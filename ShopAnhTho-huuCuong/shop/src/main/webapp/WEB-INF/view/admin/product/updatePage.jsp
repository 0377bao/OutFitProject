<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cập nhật bộ sưu tập</title>
    <link
            rel="stylesheet"
            href="/bootstrap/css/bootstrap.min.css"
    />
    <link
            href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
    />

    <link rel="stylesheet" href="/admin/css/create_Collection.css" />

    <link rel="stylesheet" href="/css/header.css" />
    <link rel="stylesheet" href="/css/footer.css" />
</head>
<body>
<jsp:include page="../../header.jsp"/>

<main class="container create__Collection">
    <div class="create__Collection__title">
        <h1>Cập nhật bộ sưu tập trang chủ</h1>

        <button class="create__Collection__btn">Cập nhật</button>
    </div>

    <div class="main__3__collection__img">
        <h5>Nhấn vào để thêm hình ảnh</h5>
        <img
                class="main__3__collection__img__item__1"
                src="/images/add img.png"
        />
        <img
                class="main__3__collection__img__item__2"
                src="/images/add img.png"
        />
        <img
                class="main__3__collection__img__item__3"
                src="/images/add img.png"
        />
        <img
                class="main__3__collection__img__item__4"
                src="/images/add img.png"
        />
        <img
                class="main__3__collection__img__item__5"
                src="/images/add img.png"
        />
        <img
                class="main__3__collection__img__item__6"
                src="/images/add img.png"
        />
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
        .querySelectorAll(
            ".main__3__collection__img__item__1, .main__3__collection__img__item__2,.main__3__collection__img__item__3, .main__3__collection__img__item__4, .main__3__collection__img__item__5, .main__3__collection__img__item__6"
        )
        .forEach((div) => {
            div.addEventListener("click", function () {
                currentImg = this; // Lưu lại ảnh cần thay đổi
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
