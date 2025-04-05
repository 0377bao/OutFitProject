<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
    <link rel="stylesheet" type="text/css" href="/css/index.css">
</head>
<body>
<header class="header">
    <div class="header__menu">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <nav class="header__menu__1">
                        <img
                                src="/images/dee42cf38b7f34216d6e.jpg"
                                alt="logo shop bé thơ"
                        />

                        <input
                                class="form-control"
                                placeholder="Nhập sản phẩm cần tìm ..."
                        />

                        <button class="btn header__menu__1__btn">
                            Tìm kiếm
                            <i class="bx bx-search"></i>
                        </button>

                        <span id="header___menu__1__user">
                  Tài khoản
                  <i class="bx bx-user"></i>
                </span>
                    </nav>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <nav class="header__menu__2 navbar">
                        <a class="nav-link" href="#">Giới thiệu</a>
                        <a class="nav-link" href="#">Thời trang sơ sinh</a>
                        <a class="nav-link" href="#">Thời trang cho bé 2-6y</a>
                        <a class="nav-link" href="#">Bộ sưu tập</a>
                        <a class="nav-link" href="#">Hệ thống đại lý</a>
                        <a class="nav-link" href="#">Lớn cùng shop bé thơ</a>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <!-- header menu cho mobile và table, pc nhỏ -->
    <div class="header__menu__mobile">
        <nav class="header__menu__mobile__1">
            <img src="/images/dee42cf38b7f34216d6e.jpg" />

            <div class="header__menu__mobile__1__nav">
                <i class="bx bx-search header__menu__mobile__1__nav__search"></i>

                <span class="header__menu__mobile__user">
              <i class="bx bx-user"></i>
            </span>

                <i class="bx bx-list-ul header__menu__mobile__1__nav__dropdow"></i>
            </div>
        </nav>

        <nav class="header__menu__mobile__2">
            <i class="bx bx-search"></i>
            <input
                    placeholder="Nhập sản phẩm cần tìm..."
                    type="text"
                    class="form-control"
            />
        </nav>
    </div>

    <!-- kết thúc phần header mobile -->

    <!-- Menu sidebar right mobile -->

    <div class="Menu__sidebar__mobile">
        <nav class="Menu__sidebar__mobile__nav">
            <p>Giới thiệu SHOP BÉ THƠ</p>
            <div class="Menu__sidebar__mobile__nav__dropdow">
                <div class="Menu__sidebar__mobile__nav__dropdow__btn">
                    <p>Thời trang sơ sinh</p>
                    <i class='bx bx-chevron-down'></i>
                </div>

                <div class="Menu__sidebar__mobile__nav__dropdow__content">
                    <a href="#">sơ sinh 0 - 3 tháng</a>
                    <a href="#">bé 3 -24 tháng</a>
                    <a href="#">Phụ kiện</a>
                    <a href="#">Quà tặng</a>
                </div>
            </div>

            <div class="Menu__sidebar__mobile__nav__dropdow">
                <div class="Menu__sidebar__mobile__nav__dropdow__btn">
                    <p>Thời trang cho trẻ 6 tháng</p>
                    <i class='bx bx-chevron-down'></i>
                </div>

                <div class="Menu__sidebar__mobile__nav__dropdow__content">
                    <a href="#">sơ sinh 0 - 3 tháng</a>
                    <a href="#">bé 3 -24 tháng</a>
                    <a href="#">Phụ kiện</a>
                    <a href="#">Quà tặng</a>
                </div>
            </div>
            <div class="Menu__sidebar__mobile__nav__dropdow">
                <div class="Menu__sidebar__mobile__nav__dropdow__btn">
                    <p>Bộ sưu tập</p>
                    <i class='bx bx-chevron-down'></i>
                </div>

                <div class="Menu__sidebar__mobile__nav__dropdow__content">
                    <a href="#">sơ sinh 0 - 3 tháng</a>
                    <a href="#">bé 3 -24 tháng</a>
                    <a href="#">Phụ kiện</a>
                    <a href="#">Quà tặng</a>
                </div>
            </div>

            <div class="Menu__sidebar__mobile__nav__dropdow">
                <div class="Menu__sidebar__mobile__nav__dropdow__btn">
                    <p>Đăng nhập</p>
                    <i class='bx bx-chevron-down'></i>
                </div>

                <div class="Menu__sidebar__mobile__nav__dropdow__content">
                    <a href="#">sơ sinh 0 - 3 tháng</a>
                    <a href="#">bé 3 -24 tháng</a>
                    <a href="#">Phụ kiện</a>
                    <a href="#">Quà tặng</a>
                </div>
            </div>

            <div class="Menu__sidebar__mobile__nav__input">
                <p>Đăng kí nhận thông tin mới nhất từ chúng tôi</p>
                <div class="Menu__sidebar__mobile__nav__input__submit">
                    <input style="padding: 10px" type="text" placeholder="Nhập Email của bạn">
                    <button style="color: white; background-color: #877c76;">Đăng kí</button>
                </div>
            </div>
        </nav>
    </div>
    <!-- Kết thúc Menu sidebar right mobile -->
    <div class="header__banner">
        <img
                src="https://file.hstatic.net/200000692427/file/lookbook_1440x450.jpg"
        />
    </div>

    <div class="header__banner__mobile">
        <img
                src="https://file.hstatic.net/200000692427/file/20250211_resize_banner_t2_banner_web_600x700.jpg"
        />
    </div>
</header>
</body>
</html>
