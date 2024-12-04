<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tạo mã khuyến mãi</title>
    <link rel="stylesheet" href="styles.css">
    <script>
        function toggleDiscountType() {
            const discountType = document.getElementById("promotionDiscountType").value;
            const discountInput = document.getElementById("promotionDiscountValue");
            discountInput.placeholder = discountType === "percentage" ? "Nhập % (sẽ chia 100)" : "Nhập số tiền";
        }

        function validateForm(event) {
            const discountType = document.getElementById("promotionDiscountType").value;
            const discountValue = parseFloat(document.getElementById("promotionDiscountValue").value);
            const startDate = new Date(document.getElementById("promotionStartDate").value);
            const endDate = new Date(document.getElementById("promotionEndDate").value);
            const minOrderValue = parseFloat(document.getElementById("minOrderValue").value);

            let errorMessage = "";

            // Kiểm tra giá trị giảm giá
            if (discountType === "percentage") {
                if (discountValue < 0 || discountValue > 100) {
                    errorMessage += "Giá trị giảm giá (Phần trăm) phải nằm trong khoảng từ 0 đến 100.\n";
                }
            } else if (discountType === "amount") {
                if (discountValue <= 0) {
                    errorMessage += "Giá trị giảm giá (Số tiền) phải lớn hơn 0.\n";
                }
            }

            // Kiểm tra ngày
            if (endDate <= startDate) {
                errorMessage += "Ngày kết thúc phải sau ngày bắt đầu.\n";
            }

            // Kiểm tra giá trị đơn hàng tối thiểu
            if (minOrderValue < 0) {
                errorMessage += "Giá trị tối thiểu của đơn hàng không được âm.\n";
            }

            // Nếu có lỗi, hiển thị thông báo và ngăn form submit
            if (errorMessage) {
                alert(errorMessage);
                event.preventDefault(); // Ngăn không cho form submit
            }
        }
    </script>
</head>
<body>
    <div class="container1">
        <h1>Tạo mã khuyến mãi</h1>
        <form action="/KM/promotions" method="POST" onsubmit="validateForm(event)">
            <input type="hidden" name="action" value="create"/>
            <input type="hidden" name="id" id="promotionId">
            <input type="text" name="code" id="promotionCode" placeholder="Mã khuyến mãi" required>
            <input type="text" name="name" id="promotionName" placeholder="Tên khuyến mãi" required>
            <input type="text" name="description" id="promotionDescription" placeholder="Mô tả" required>
            <select name="discountType" id="promotionDiscountType" onchange="toggleDiscountType()" required>
                <option value="percentage">Phần trăm</option>
                <option value="amount">Số tiền</option>
            </select>
            <input type="number" name="discountValue" id="promotionDiscountValue" placeholder="Giá trị giảm giá" required>
            <label class="pad_top">Ngày bắt đầu:</label>
            <input type="date" name="startDate" id="promotionStartDate" required>
            <label class="pad_top">Ngày kết thúc:</label>
            <input type="date" name="endDate" id="promotionEndDate" required>
            <input type="number" name="minOrderValue" id="minOrderValue" placeholder="Giá trị tối thiểu của đơn hàng" required min="0">
            <select name="productCategory" id="productCategory" required>
                <option value="all">Áp dụng cho tất cả</option>
                <c:forEach var="phone" items="${phones}">
                    <option value="${phone.id}">${phone.ten}</option>
                </c:forEach>
            </select>
            <input type="number" name="usageLimit" id="promotionUsageLimit" placeholder="Số lần sử dụng (để trống nếu không giới hạn)">
            <button type="submit">Tạo mã khuyến mãi</button>
        </form>
    </div>
</body>
</html>
