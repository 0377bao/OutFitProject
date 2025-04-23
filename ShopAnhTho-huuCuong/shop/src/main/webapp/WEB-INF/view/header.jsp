<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Header</title>
    <link rel="stylesheet" type="text/css" href="/css/index.css">
       <script src="https://unpkg.com/scrollreveal"></script>
</head>
<body>
    <header class="header">
      <div class="header__menu">
        <div class="container">
          <div class="row">
            <div class="col-sm-12">
              <nav class="header__menu__1">
                <img
                  src="/images/logo shopbetho 2.png"
                  alt="logo shop bé thơ"
                />

                <form>
                <div class="header__menu__1__search">

                <input
                class="form-control"
                placeholder="Nhập sản phẩm cần tìm ..."
                name="search"
              />

                  <button type="submit" class="btn header__menu__1__btn">
                    Tìm kiếm
                    <i class="bx bx-search"></i>
                  </button>
                </form>
                </div>

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
                <div class="header__menu__2__dropdow">
                  <a class="nav-link" href="#" id="dropdownToggleHeader">Đồ sơ sinh</a>
                  <ul class="dropdown-menu-header">
                    <li><a href="#">Quần áo</a></li>
                    <li><a href="#">Khăn</a></li>
                    <li><a href="#">Bao tay</a></li>
                    <li><a href="#">Chân mũ</a></li>
                  </ul>
                </div>
                <div class="header__menu__2__dropdow">
                  <a class="nav-link" href="#" id="dropdownToggleHeader">Set đồ</a>
                  <ul class="dropdown-menu-header">
                    <li><a href="#">Bé trai</a></li>
                    <li><a href="#">Bé gái</a></li>
                  </ul>
                </div>
                <div class="header__menu__2__dropdow">
                  <a class="nav-link" href="#" id="dropdownToggleHeader">Đồ bơi</a>
                  <ul class="dropdown-menu-header">
                    <li><a href="#">Bé trai</a></li>
                    <li><a href="#">Bé gái</a></li>
                  </ul>
                </div>

                <!-- Phần này đang test -->
                <div class="header__menu__2__dropdow">
                  <a class="nav-link" href="#" id="dropdownToggleMain">Áo Quần</a>
                  <ul class="dropdown-menu-header">
                    <li>
                      <div class="header__menu__2__dropdow">
                        <a class="nav-link" href="#" id="dropdownToggleSub1">Bé trai</a>
                        <ul class="dropdown-menu-header">
                          <li><a href="#">Áo</a></li>
                          <li><a href="#">Quần</a></li>
                        </ul>
                      </div>
                    </li>
                    <li>
                      <div class="header__menu__2__dropdow">
                        <a class="nav-link" href="#" id="dropdownToggleSub1">Bé gái</a>
                        <ul class="dropdown-menu-header">
                          <li><a href="#">Áo</a></li>
                          <li><a href="#">Quần</a></li>
                        </ul>
                      </div>
                    </li>
                  </ul>
                </div>

                <!-- Kết thúc phần test -->

                <div class="header__menu__2__dropdow">
                  <a class="nav-link" href="#" id="dropdownToggleHeader">Phụ kiện</a>
                  <ul class="dropdown-menu-header">
                    <li><a href="#">Dầu</a></li>
                    <li><a href="#">Khăn</a></li>
                    <li><a href="#">Kẹp cài</a></li>

                  </ul>
                </div>
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
              <p>Đồ sơ sinh</p>
              <i class='bx bx-chevron-down'></i>
            </div>

            <div class="Menu__sidebar__mobile__nav__dropdow__content">
              <a href="#">Quần áo</a>
              <a href="#">Khăn</a>
              <a href="#">Bao tay chân mũ</a>
              <a href="#">Váy đầm cho bé</a>
            </div>
          </div>

          <div class="Menu__sidebar__mobile__nav__dropdow">
            <div class="Menu__sidebar__mobile__nav__dropdow__btn">
              <p>Set đồ</p>
              <i class='bx bx-chevron-down'></i>
            </div>

            <div class="Menu__sidebar__mobile__nav__dropdow__content">
              <a href="#">Bé Trai</a>
              <a href="#">Bé Gái</a>

            </div>
          </div>
          <div class="Menu__sidebar__mobile__nav__dropdow">
            <div class="Menu__sidebar__mobile__nav__dropdow__btn">
              <p>Áo quần</p>
              <i class='bx bx-chevron-down'></i>
            </div>

            <div class="Menu__sidebar__mobile__nav__dropdow__content">
              <a href="#">Bé trai</a>
              <a href="#">Bé gái</a>
            </div>
          </div>

          <div class="Menu__sidebar__mobile__nav__dropdow">
            <div class="Menu__sidebar__mobile__nav__dropdow__btn">
              <p>Đồ bơi</p>
              <i class='bx bx-chevron-down'></i>
            </div>

            <div class="Menu__sidebar__mobile__nav__dropdow__content">
              <a href="#">Bé trai</a>
              <a href="#">Bé gái</a>
              <a href="#">nữ</a>
              <a href="#">Quà tặng</a>
            </div>
          </div>

          <div class="Menu__sidebar__mobile__nav__dropdow">
            <div class="Menu__sidebar__mobile__nav__dropdow__btn">
              <p>Phụ kiện</p>
              <i class='bx bx-chevron-down'></i>
            </div>

            <div class="Menu__sidebar__mobile__nav__dropdow__content">
              <a href="#">Dầu</a>
              <a href="#">Khăn</a>
              <a href="#">Kẹp cài</a>
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
       <c:if test="${banners != null}">
                   <img
                           src="${banners.firstBanner}"
                   />
               </c:if>
      </div>

      <div class="header__banner__mobile">
        <img
          src="https://file.hstatic.net/200000692427/file/20250211_resize_banner_t2_banner_web_600x700.jpg"
        />
      </div>
    </header>
</body>
</html>
