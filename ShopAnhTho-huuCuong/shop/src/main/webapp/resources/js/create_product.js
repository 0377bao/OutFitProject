/*
  Nội dung cần giải quyết:
  1. Xử lý phần logic UI cho phần thêm màu --> xong
  2. Xử lý phần logic UI cho phần tạo size --> xong
  3. Xử lý logic phần chọn hình ảnh cho phần thêm màu -->
  4. Xử lý locgic phần gom nhóm dữ liệu của phần thêm màu -->
  5. Xử lý phần dữ liệu cho phần tạo size --> xong
  6. Xử lý dữ liệu gửi về backend qua fetch  --> xong
  7. Xử lý các phần chọn 
*/
let count = 0;

/**************************************************************/
// Xử lý phân loại sản phẩm
const productType = document.querySelector(
    ".CreateProduct__GeneralInfor__UploadImg__Category__Product__Type"
);

let productTypeData = productType.value;

productType.addEventListener("change", function () {
  productTypeData = this.value;
});

/***********/
// xử lý khi load dữ liệu update
window.addEventListener("DOMContentLoaded", () => {
  const sizeBoxItems = document.querySelectorAll(".size__box");
  sizeBoxItems.forEach((sizeItem) => {
    sizeItem.addEventListener("click", function () {
      console.log(this);
      sizeItem.classList.toggle("selectSize");
    });
    dataSize.push(sizeItem)
  })
})

/****************************************************************/
// Xử lý phần thêm size

// DOM các phần tử cần thiết để xử lý chức năng này
const addSizeBtn = document.querySelector(
  ".CreateProduct__GeneralInfor__UploadImg__SizeAdd__Btn"
);
const rmSizeBtn = document.querySelector(
  ".CreateProduct__GeneralInfor__UploadImg__SizeDel__Btn"
);
const inputSize = document.querySelector(
  ".CreateProduct__GeneralInfor__UploadImg__Size__Input"
);
var renderSize = document.querySelector(
  ".CreateProduct__GeneralInfor__UploadImg__Size__RenderList"
);

// Tạo mảng rỗng chứa dữ liệu các size, mảng này gửi BE

var dataSize = [];

// Gắn sự kiện cho nút thêm
addSizeBtn.addEventListener("click", () => {
  console.log("nút thêm size được nhấn");

  let sizeValue = inputSize.value.trim();
  if (sizeValue === "") return;

  // Tạo phần tử size mới để hiển thị
  let sizeItem = document.createElement("div");
  sizeItem.classList.add("size__box");
  sizeItem.innerText = sizeValue;

  // Gắn sự kiện khi size được nhấn
  sizeItem.addEventListener("click", function () {
    console.log(this);
    this.classList.toggle("selectSize");
  });

  // Thêm dữ liệu mới vào mảng
  dataSize.push(sizeValue);

  // Thêm phần tử vào phần render ra các size
  renderSize.appendChild(sizeItem);
  console.log(dataSize);

  // Reset lại input
  inputSize.value = "";
});

// Gắn sự kiện cho nút xóa
rmSizeBtn.addEventListener("click", () => {
  // DOM tất cả các phần tử trong trang có class đang được chọn
  let selectSize = document.querySelectorAll(".size__box.selectSize");

  selectSize.forEach((size) => {
    size.remove();

    let sizeText = size.innerText;

    let indexSize = dataSize.indexOf(sizeText);

    dataSize.splice(indexSize, 1);
  });

  console.log(dataSize);
});

/**************************************************************************************/

// Xử lý phần thêm màu mới
const addColor = document.querySelector(
  ".CreateProduct__GeneralInfor__UploadImg__ColorAdd__Btn"
);
const container = document.querySelector(
  ".CreateProduct__GeneralInfor__UploadImg__avt"
);

addColor.addEventListener("click", () => {
  const current = count++;
  let template = document.querySelector(
    ".CreateProduct__GeneralInfor__UploadImg__avt__box__template"
  );
  let clone = template.content.cloneNode(true);
  let group = clone.querySelector(
    ".CreateProduct__GeneralInfor__UploadImg__avt__box__template__div"
  );

  // Gán sự kiện chọn ảnh đại diện
  const avatarInput = document.createElement("input");
  avatarInput.type = "file";
  avatarInput.name ="avatarColors"
  avatarInput.accept = "image/*";
  avatarInput.style.display = "none";

  const avatarImg = group.querySelector(".addImgAvt");
  avatarImg.addEventListener("click", () => avatarInput.click());
  avatarInput.addEventListener("change", (event) => {
    const file = event.target.files[0];
    if (file) {
      avatarImg.src = URL.createObjectURL(file);
      avatarImg.dataset.file = file.name;
    }
  });

  // Gán sự kiện chọn ảnh chi tiết
  const detailImgs = group.querySelectorAll(
    ".CreateProduct__GeneralInfor__UploadImg__Detail img"
  );
  detailImgs.forEach((img, index) => {
    const detailInput = document.createElement("input");
    detailInput.type = "file";
    detailInput.name= `colorImages[${current}][${index}]`
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

    img.insertAdjacentElement("afterend", detailInput);
  });

  group.appendChild(avatarInput);
  container.appendChild(group);
});

// Xử lý phần xóa nhóm ảnh
const rmColor = document.querySelector(
  ".CreateProduct__GeneralInfor__UploadImg__ColorDel__Btn"
);

rmColor.addEventListener("click", () => {
  count--;
  let selectColorGroup = document.querySelectorAll(
    ".group-checkbox-color:checked"
  );

  selectColorGroup.forEach((checkbox) => {
    let templateDiv = checkbox.closest(
      ".CreateProduct__GeneralInfor__UploadImg__avt__box__template__div"
    );
    templateDiv.remove();
  });
});

/*****************************************************/
// submit dữ liệu bằng form
const formData = document.querySelector("#formData")
formData.addEventListener("submit", (e) => {
   e.preventDefault();
});

// Xử lý phần gửi dữ liệu về backend
const submitBtn = document.querySelector(".CreateProductSubmit__Btn");
submitBtn.addEventListener("click", (e) => {
  e.preventDefault()
  // Xử lý phần sản phẩm hiển thị nổi bật
  const selectStatusProductOutstanding = document.querySelector(
      'input[name="isHighlight"]:checked'
  );
// Xử lý phần chọn còn hàng hay hết hàng
  const selectStatusProduct = document.querySelector(
      'input[name="isActive"]:checked'
  );

  // xử lý sản phẩm mới
  const selectedNewProduct = document.querySelector(
      'input[name="isNew"]:checked'
  )

  // giá sản phẩm
  const productPrice = document.querySelector(".CreateProductMain__Price input");

  // tên sản phẩm
  const nameProduct = document.querySelector(
      ".CreateProduct__GeneralInfor__NameProduct"
  );

  // Miêu tả sản phẩm
  const describeProduct = document.querySelector(
      ".CreateProduct__GeneralInfor__DescribeProduct"
  );

  // Mã sản phẩm do người dùng thêm
  const productIdUser = document.querySelector(
      ".CreateProduct__GeneralInfor__StatusId__Id__Product"
  );

  let allGroups = document.querySelectorAll(
      ".CreateProduct__GeneralInfor__UploadImg__avt__box__template__div"
  );




  if(!selectStatusProductOutstanding || !selectStatusProduct || !selectedNewProduct ||
  !productPrice.value || !nameProduct.value || !describeProduct.value || !productIdUser.value) {
    alert("Vui lòng nhập đầy đủ thông tin")
    return;
  }

  if(allGroups.length <= 0) {
    alert("Vui lòng chọn ảnh")
    return;
  }

  const colorNumbers = document.querySelectorAll(".colorNames");
  console.log(colorNumbers);
  colorNumbers.forEach(inputColor => {
    if(inputColor.value === "") {
      alert("Vui lòng nhập màu cho sản phẩm");
      return;
    }
  })


  const inputCatalogue = document.createElement("input");
  inputCatalogue.name = "catalogue"
  inputCatalogue.type="text"
  inputCatalogue.value = productTypeData;
  const inputNumberColor = document.createElement("input");
  inputNumberColor.name = "numberColor"
  inputNumberColor.type="number"
  inputNumberColor.value = Number.parseInt(allGroups.length);

  formData.appendChild(inputNumberColor);
  formData.appendChild(inputCatalogue);



  const listSize = document.querySelectorAll(".size__box")
  if(listSize.length > 0) {
    listSize.forEach((item) => {
      const inputSize = document.createElement("input");
      inputSize.name="sizes";
      inputSize.type = "text";
      inputSize.value = item.innerText;
      formData.appendChild(inputSize)
    })
  }else {
    alert("Vui lòng chọn size cho sản phẩm")
    return;
  }
  formData.submit();
})

// submitBtn.addEventListener("click", () => {
//   console.log("Hello")
//   let allGroups = document.querySelectorAll(
//     ".CreateProduct__GeneralInfor__UploadImg__avt__box__template__div"
//   );
//   let formData = new FormData();
//
//   if(allGroups.length > 0) {
//     allGroups.forEach((group, index) => {
//       let avatar = group.querySelector(".addImgAvt");
//       let details = group.querySelectorAll(
//         ".CreateProduct__GeneralInfor__UploadImg__Detail img"
//       );
//
//       if (avatar.dataset.file) {
//         formData.append(`group_${index}_avatar`, avatar.dataset.file);
//       }
//
//       details.forEach((img, i) => {
//         if (img.dataset.file) {
//           formData.append(`group_${index}_detail_${i}`, img.dataset.file);
//         }
//       });
//     });
//   }else {
//     alert("Vui lòng chọn màu cho sản phẩm");
//     return;
//   }
//
//     /*****/
//     const arrSize = [];
//     // xử lý lấy size
//     const listSize = document.querySelectorAll(".size__box")
//     if(listSize.length > 0) {
//       listSize.forEach((item) => arrSize.push(item.innerText))
//     }else {
//       alert("Vui lòng chọn size cho sản phẩm")
//     }
//
//
//
//     const inforDataProduct = {
//       nameProduct: nameProduct, // tên sản phẩm
//       describeProduct: describeProduct, // miêu tả sản phẩm
//       productIdUser: productIdUser, // mã sản phẩm do người dùng thêm
//       selectStatusProduct: selectStatusProduct.value, // này là tình trạng còn hay hết hàng
//       selectStatusProductOutstanding: selectStatusProductOutstanding.value, // sản phẩm có nổ bật hay không
//       productTypeData: productTypeData, // phân loại sản phẩm
//       productPrice: Number(productPrice.value), // giá sản phẩm,
//       sizes: arrSize, // tât cả size của sản phẩm
//       productNew: selectedNewProduct.value
//     };
//     console.log(inforDataProduct)
//
//     // lưu vào formdata nhưng converrt sang json
//     formData.append("inforDataProduct", JSON.stringify(inforDataProduct));
//     console.log(formData);
//   console.log("nút thêm đã được nhấn");
//   });




  /*
hãy đưa đoạn code của fetch gửi vào đây nha Cường
*/
// });

/*******************************************/
/*
  Dữ liệu gửi về bao gồm:

  1. Tên sản phấm
  2. Miêu tả sản phẩm
  3. Tình trạng còn hàng hay hết hàng
  4. Mã sản phẩm
  5. Giá sản phẩm
  6. Sản phẩm có dùng để hiển thị sản phẩm nổi bật không ?
  7. Dữ liệu phần quản lý màu
  8. Dữ liệu phần tạo size
  9. Phân loại sản phẩm
  
*/

// Gửi về BE, đoạn này tạm thời để ngoài này, nào có BE mới cho vô
// chung sự kiện nhấn nút phía trên
// fetch("/route BE của Cường", {
//   method: "POST",
//   body: formData,
// })
//   .then((res) => res.json())
//   .then((result) => console.log(result))
//   .catch((error) => {
//     alert("Thêm thất bại");
//     console.log("Gửi thất bại, chi tiết lỗi: " + error);
//   })
//   .finally(() => console.log("Quá trình gửi kết thúc"));

// xong
