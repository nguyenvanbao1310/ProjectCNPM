<%@page import="model.Promotion"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa mã khuyến mãi</title>
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
    <%
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Promotion promotion = (Promotion) request.getAttribute("promotion");
        String startDateFormat = "";
        String endDateFormat = "";
        String discountValue = "0";
        String minOrderValue = "0";
        if(promotion != null) {
            startDateFormat = df.format(promotion.getNgayBatDau());
            endDateFormat = df.format(promotion.getNgayKetThuc());
            if(promotion.getKieuGiamGia().toString() == "percentage") {
                discountValue = String.format("%.0f", promotion.getGiaTriGiam().doubleValue() * 100);
            } else {
                discountValue = String.format("%.0f", promotion.getGiaTriGiam().doubleValue());
            }
            minOrderValue = String.format("%.0f", promotion.getGiaTriToiThieu().doubleValue());
        }
    %>
    <div class="container1">
        <h1>Sửa mã khuyến mãi</h1>
        <form action="/KM/promotions" method="POST"  onsubmit="validateForm(event)">
            <input type="hidden" name="action" value="update"/>
            <input type="hidden" name="id" id="promotionId" value="${promotion.id}">
            <input type="text" name="code" id="promotionCode" value="${promotion.ma}" placeholder="Mã khuyến mãi" required>
            <input type="text" name="name" id="promotionName" value="${promotion.ten}" placeholder="Tên khuyến mãi" required>
            <input type="text" name="description" id="promotionDescription" value="${promotion.moTa}" placeholder="Mô tả" required>
            <select name="discountType" id="promotionDiscountType" onchange="toggleDiscountType()" required>
                <option value="percentage" <c:if test="${promotion.kieuGiamGia == 'percentage'}">selected</c:if>>Phần trăm</option>
                <option value="amount" <c:if test="${promotion.kieuGiamGia == 'amount'}">selected</c:if>>Số tiền</option>
            </select>
            <input type="number" name="discountValue" id="promotionDiscountValue" value="<%= discountValue %>" placeholder="Giá trị giảm giá" required>
            <label class="pad_top">Ngày bắt đầu:</label>
            <input type="date" name="startDate" id="promotionStartDate" value="<%= startDateFormat %>" required>
            <label class="pad_top">Ngày kết thúc:</label>
            <input type="date" name="endDate" id="promotionEndDate" value="<%= endDateFormat %>" required>
            <input type="number" name="minOrderValue" id="minOrderValue" value="<%= minOrderValue%>" placeholder="Giá trị tối thiểu của đơn hàng" required>
            <select name="productCategory" id="productCategory" required>
                <option value="all">Áp dụng cho tất cả</option>
                <c:forEach var="phone" items="${phones}">
                    <option value="${phone.id}" <c:if test="${phone.id == promotion.sanPhamApDung.id}">selected</c:if>>
                        ${phone.ten}
                    </option>
               </c:forEach>
            </select>
            <input type="number" name="usageLimit" id="promotionUsageLimit" value="${promotion.soLanSuDung}" placeholder="Số lần sử dụng (để trống hoặc nhập giá trị âm nếu không giới hạn)">
            <button type="submit">Lưu mã khuyến mãi</button>
        </form>
    </div>
</body>
</html>