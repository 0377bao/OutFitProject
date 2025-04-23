<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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

    <link rel="stylesheet" href="/admin/css/create_product.css" />
    <link rel="stylesheet" href="/css/header.css" />
    <link rel="stylesheet" href="/css/footer.css" />
</head>
<body>
<jsp:include page="../../header.jsp"/>

<main>
    <form id="formData" action="/admin/product/update" method="post" enctype="multipart/form-data">
        <div class="CreateProduct">
            <div class="container">
                <div class="CreateProductSubmit">
                    <h2>Thêm sản phẩm mới</h2>

                    <button class="CreateProductSubmit__Btn">Thêm</button>
                </div>
            </div>

            <div class="container">
                <div class="CreateProductMain">
                    <div class="CreateProduct__GeneralInfor">
                        <input type="number" name="id" value="${product.id}" hidden="hidden">
                        <h3>Thông tin tổng quan</h3>
                        <p>Tên sản phẩm</p>
                        <input
                                class="form-control CreateProduct__GeneralInfor__NameProduct"
                                type="text"
                                name="name"
                                placeholder="Ví dụ: áo khoác mùa hè cho bé"
                                value="${product.name}"
                        />

                        <p>Miêu tả sản phẩm</p>
                        <textarea
                                type="text"
                                name="description"
                                class="form-control CreateProduct__GeneralInfor__DescribeProduct"
                                placeholder="Ví dụ: Áo quần con nít thường được thiết kế với màu sắc tươi sáng, họa tiết ngộ nghĩnh, đáng yêu. Chất liệu vải mềm mại, thoáng mát như cotton, lanh, hoặc nỉ, đảm bảo sự thoải mái cho làn da nhạy cảm của trẻ. Kiểu dáng đa dạng, từ những bộ đồ liền thân ấm áp cho trẻ sơ sinh, đến những chiếc áo thun, quần short năng động cho trẻ lớn hơn. Các chi tiết như nơ, bèo nhún, hình thú cưng, hoặc nhân vật hoạt hình được thêu hoặc in trên áo quần, tạo điểm nhấn thu hút sự chú ý của trẻ."

                        >
                            ${product.description}
              </textarea>

                        <div class="CreateProduct__GeneralInfor__StatusId">
                            <div class="CreateProduct__GeneralInfor__StatusId__Status">
                                <div class="CreateProduct__GeneralInfor__StatusId__Status__1">
                                    <lable>Còn hàng</lable>
                                    <input
                                            id="CreateProduct__GeneralInfor__StatusId__Status__1"
                                            value="${product.isActive()}"
                                            name="isActive"
                                            type="radio"
                                            checked="${product.isActive()}"
                                    />
                                </div>

                                <div class="CreateProduct__GeneralInfor__StatusId__Status__2">
                                    <lable>Hết hàng</lable>
                                    <input
                                            id="CreateProduct__GeneralInfor__StatusId__Status__2"
                                            value="${!product.isActive()}"
                                            name="isActive"
                                            type="radio"
                                            checked="${!product.isActive()}"
                                    />
                                </div>
                            </div>

                            <div class="CreateProduct__GeneralInfor__StatusId__Id">
                                <lable>Mã sản phẩm</lable>
                                <input
                                        class="m-3 CreateProduct__GeneralInfor__StatusId__Id__Product"
                                        type="text"
                                        name="code"
                                        placeholder="Nhập mã sản phẩm"
                                        value="${product.code}"
                                />
                            </div>
                        </div>

                        <div class="CreateProductMain__Price">
                            <p>Giá sản phẩm</p>
                            <input type="number" name="price" class="form-control" value="${product.price.toString().split(",")[0]}"/>
                        </div>

                        <div class="CreateProduct__GeneralInfor__outstanding">
                            <p>Sản phẩm này có dùng để hiện thị sản phẩm nỗi bật không ?</p>
                            <lable class="m-2">Có</lable>
                            <input
                                    id="CreateProduct__GeneralInfor__outstanding_1"
                                    value="${product.isHighlight()}"
                                    name="isHighlight"
                                    type="radio"
                                    checked="${product.isHighlight()}"
                            />

                            <label class="m-2">Không</label>
                            <input
                                    id="CreateProduct__GeneralInfor__outstanding"
                                    name="isHighlight"
                                    value="${!product.isHighlight()}"
                                    type="radio"
                                    checked="${!product.isHighlight()}"
                            />
                        </div>

                        <div class="CreateProduct__GeneralInfor__newProduct">
                            <p>Sản phẩm này có phải sản phẩm mới không ?</p>
                            <lable class="m-2">Có</lable>
                            <input
                                    id="CreateProduct__GeneralInfor__newProduct_1"
                                    name="isNew"
                                    value="${product.isNew()}"
                                    type="radio"
                                    checked="${product.isNew()}"
                            />

                            <label class="m-2">Không</label>
                            <input
                                    id="CreateProduct__GeneralInfor__newProduct"
                                    name="isNew"
                                    value="${!product.isNew()}"
                                    type="radio"
                                    checked="${!product.isNew()}"
                            />
                        </div>
                    </div>

                    <div class="CreateProduct__GeneralInfor__UploadImg">
                        <div class="CreateProduct__GeneralInfor__UploadImg__avt">
                            <h4 class="fw-bold">Quản lý màu</h4>
                            <div class="CreateProduct__GeneralInfor__UploadImg__Color">
                                <button
                                        class="CreateProduct__GeneralInfor__UploadImg__ColorAdd__Btn"
                                >
                                    Thêm màu
                                </button>

                                <button
                                        class="CreateProduct__GeneralInfor__UploadImg__ColorDel__Btn"
                                >
                                    Xóa màu
                                </button>
                            </div>

                            <!-- Bắt đầu ô chọn màu -->

                            <!-- <div class="CreateProduct__GeneralInfor__UploadImg__avt__box">
                              <input
                                type="file"
                                id="CreateProduct__GeneralInfor__UploadImg__avt__input"
                                accept="image/*"
                                hidden
                              />

                              <img
                                class="addImgAvt"
                                style="width: 100%"
                                src="./Resource/img/add img.png"
                              />

                              <div class="CreateProduct__GeneralInfor__UploadImg__Detail">
                                <img
                                  class="addImgDetail__1"
                                  style="width: 80%"
                                  src="./Resource/img/add img.png"
                                />
                                <img
                                  class="addImgDetail__2"
                                  style="width: 80%"
                                  src="./Resource/img/add img.png"
                                />
                                <img
                                  class="addImgDetail__3"
                                  style="width: 80%"
                                  src="./Resource/img/add img.png"
                                />
                                <img
                                  class="addImgDetail__4"
                                  style="width: 80%"
                                  src="./Resource/img/add img.png"
                                />
                              </div>
                            </div> -->
                            <c:forEach var="colorName" items="${product.getColors()}">

                                    <div
                                            class="CreateProduct__GeneralInfor__UploadImg__avt__box__template__div"
                                    >
                                        <input
                                                type="file"
                                                id="CreateProduct_Avatar"
                                                name="avatarColors"
                                                accept="image/*"
                                                hidden
                                        />


                                        <!-- thẻ input này dùng checkbox để hỗ trợ xóa -->
                                        <input type="checkbox" class="group-checkbox-color" /> Chọn
                                        nhóm này
                                        <br/>
                                        <input type="text" placeholder="Nhập màu..." class="colorNames" name="colorNames"
                                               style="display: block; margin-top: 5px; margin-bottom: 7px; padding-left:8px"
                                               value="${colorName.name}"
                                        />



                                        <img
                                                class="addImgAvt"
                                                style="width: 100%"
                                                src="${colorName.avtColor}"
                                                name="avatarColors"
                                        />
                                        <div class="CreateProduct__GeneralInfor__UploadImg__Detail">
                                            <c:choose>
                                                <c:when test="${colorName.imageUrl != null && colorName.imageUrl.size() > 0}">
                                                    <c:forEach var="itemImage" items="${colorName.imageUrl}" varStatus="loop">
                                                        <img
                                                                class="addImgDetail__${loop.index + 1}"
                                                                style="width: 80%"
                                                                src="${itemImage}"
                                                        />
                                                    </c:forEach>
                                                </c:when>
                                                <c:otherwise>
                                                    <img
                                                            class="addImgDetail__1"
                                                            style="width: 80%"
                                                            src="/images/add img.png"
                                                    />
                                                    <img
                                                            class="addImgDetail__2"
                                                            style="width: 80%"
                                                            src="/images/add img.png"
                                                    />
                                                    <img
                                                            class="addImgDetail__3"
                                                            style="width: 80%"
                                                            src="/images/add img.png"
                                                    />
                                                    <img
                                                            class="addImgDetail__4"
                                                            style="width: 80%"
                                                            src="/images/add img.png"
                                                    />
                                                </c:otherwise>
                                            </c:choose>


                                        </div>
                                    </div>

                            </c:forEach>
                            <!-- Kết thúc ô chọn màu -->

                            <!-- template cho ô chọn màu -->

                                <template
                                        class="CreateProduct__GeneralInfor__UploadImg__avt__box__template"
                                >
                                    <div
                                            class="CreateProduct__GeneralInfor__UploadImg__avt__box__template__div"
                                    >
                                        <input
                                                type="file"
                                                id="CreateProduct__GeneralInfor__UploadImg__avt__input"
                                                accept="image/*"
                                                hidden
                                        />


                                        <!-- thẻ input này dùng checkbox để hỗ trợ xóa -->
                                        <input type="checkbox" class="group-checkbox-color" /> Chọn
                                        nhóm này
                                        <br/>
                                        <input type="text" placeholder="Nhập màu..." class="colorNames" name="colorNames"
                                               style="display: block; margin-top: 5px; margin-bottom: 7px; padding-left:8px"
                                        />



                                        <img
                                                class="addImgAvt"
                                                style="width: 100%"
                                                src="/images/add img.png"
                                                name="avatarColors"

                                        />
                                        <div class="CreateProduct__GeneralInfor__UploadImg__Detail">
                                            <img
                                                    class="addImgDetail__1"
                                                    style="width: 80%"
                                                    src="/images/add img.png"

                                            />
                                            <img
                                                    class="addImgDetail__2"
                                                    style="width: 80%"
                                                    src="/images/add img.png"

                                            />
                                            <img
                                                    class="addImgDetail__3"
                                                    style="width: 80%"
                                                    src="/images/add img.png"

                                            />
                                            <img
                                                    class="addImgDetail__4"
                                                    style="width: 80%"
                                                    src="/images/add img.png"

                                            />
                                        </div>
                                    </div>
                                </template>


                            <!-- Kết thúc template -->
                        </div>

                        <div class="CreateProduct__GeneralInfor__UploadImg__Size">
                            <h4 class="fw-bold">Tạo size</h4>
                            <input
                                    type="text"
                                    class="form-control CreateProduct__GeneralInfor__UploadImg__Size__Input"
                            />

                            <div
                                    class="CreateProduct__GeneralInfor__UploadImg__Size__RenderList"
                            >
                                <c:forEach var="sizeItem" items="${product.sizes}">
                                    <div class="size__box">
                                        ${sizeItem}
                                    </div>
                                </c:forEach>
                            </div>

                            <div
                                    class="CreateProduct__GeneralInfor__UploadImg__Size__Detail"
                            >
                                <button
                                        class="CreateProduct__GeneralInfor__UploadImg__SizeAdd__Btn"
                                >
                                    Thêm size
                                </button>
                                <button
                                        class="CreateProduct__GeneralInfor__UploadImg__SizeDel__Btn"
                                >
                                    Xóa size
                                </button>
                            </div>
                        </div>

                        <div class="CreateProduct__GeneralInfor__UploadImg__Category">
                            <h4 class="fw-bold">Phân loại</h4>
                            <p>Phân loại sản phẩm</p>

                            <select class="form-control CreateProduct__GeneralInfor__UploadImg__Category__Product__Type">
                                -- Lựa chọn --
                                <option value="AONGANTAY" selected="${product.catalogue == AONGANTAY}">Áo ngắn tay</option>
                                <option value="AODAITAY" selected="${product.catalogue == AODAITAY}">Áo dài tay</option>
                                <option value="DOBO" selected="${product.catalogue == DOBO}">Đồ bộ</option>
                                <option value="DOMUAHE" selected="${product.catalogue == DOMUAHE}">Đồ mùa hè</option>
                                <option value="DOMUADONG" selected="${product.catalogue == DOMUADONG}">Đồ mùa đông</option>
                            </select>

                            <button
                                    class="CreateProduct__GeneralInfor__UploadImg__Category__Btn"
                                    type="button"
                            >
                                Đồng ý
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <c:if test="${error != null}">
        <p>${error}</p>
    </c:if>
</main>

<jsp:include page="../../footer.jsp"/>
<script src="/bootstrap/js/bootstrap.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="/js/create_product.js"></script>
<script src="/js/index.js"></script>

<script>
    const imageAvatar = document.querySelector(".addImgAvt")
    imageAvatar.addEventListener("click", () => {
        const inputChooseAvatar = document.querySelector("#CreateProduct_Avatar");
        inputChooseAvatar.click();
        inputChooseAvatar.addEventListener("change", (event) => {
            const file = event.target.files[0];
            if (file) {
                imageAvatar.src = URL.createObjectURL(file);
                imageAvatar.dataset.file = file.name;
            }
        });

    });


    window.addEventListener("DOMContentLoaded", () => {
        const detailImgs = document.querySelectorAll(
            ".CreateProduct__GeneralInfor__UploadImg__Detail img"
        );
        detailImgs.forEach((img, index) => {
            const detailInput = document.createElement("input");
            detailInput.type = "file";
            detailInput.name = "colorImages[0]" + "["+ index +"]";
            detailInput.accept = "image/*";
            detailInput.style.display = "none";

            img.addEventListener("click", () => detailInput.click());
            detailInput.addEventListener("change", (event) => {
                const file = event.target.files[0];
                if (file) {
                    img.src = URL.createObjectURL(file);
                    img.dataset.file = file.name;
                }
            });
            const container = document.querySelector(".CreateProduct__GeneralInfor__UploadImg__avt__box__template__div");
            container.appendChild(detailInput);
        });
    })

</script>

</body>
</html>
