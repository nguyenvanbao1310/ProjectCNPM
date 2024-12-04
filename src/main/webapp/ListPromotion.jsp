<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Danh sách khuyến mãi</title>
        <link rel="stylesheet" href="styles.css">
        <style>
            .message {
                padding: 10px;
                margin: 10px 0;
                border-radius: 5px;
                font-size: 14px;
                width: 100%;
            }
            .success {
                color: #155724;
                background-color: #d4edda;
                border: 1px solid #c3e6cb;
            }
            .error {
                color: #721c24;
                background-color: #f8d7da;
                border: 1px solid #f5c6cb;
            }
        </style>
    </head>
    <body>
        <div class="container2">
            <c:if test="${not empty message}">
                <div class="message ${messageType}">
                    ${message}
                </div>
            </c:if>
            <h2>Danh sách khuyến mãi</h2>
            <button onclick="window.location.href = '/KM/promotions?action=createForm'">Tạo mã</button>
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Mã</th>
                            <th>Tên</th>
                            <th>Mô tả</th>
                            <th>Kiểu giảm giá</th>
                            <th>Giá trị giảm giá</th>
                            <th>Ngày bắt đầu</th>
                            <th>Ngày kết thúc</th>
                            <th>Giá trị tối thiểu</th>
                            <th>Danh mục sản phẩm</th>
                            <th>Số lần sử dụng</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach var="promotion" items="${promotions}">
                            <tr>

                                <td>${promotion.id}</td>
                                <td>${promotion.ma}</td>
                                <td>${promotion.ten}</td>
                                <td>${promotion.moTa}</td>
                                <td>
                                    ${promotion.kieuGiamGia == 'percentage' ? 'Phần trăm' : 'Số tiền'}
                                </td>
                                
                                <td>
                                    <c:choose>
                                        <c:when test="${promotion.kieuGiamGia == 'percentage'}">
                                            <fmt:formatNumber type="number" pattern="#######" value="${promotion.giaTriGiam * 100}"/>%
                                        </c:when>
                                        <c:otherwise>
                                            <fmt:formatNumber type="number" pattern="#######" value="${promotion.giaTriGiam}"/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                
                                <td><fmt:formatDate value="${promotion.ngayBatDau}" pattern="dd/MM/yyyy" /></td>
                                <td><fmt:formatDate value="${promotion.ngayKetThuc}" pattern="dd/MM/yyyy" /></td>
                                <td><fmt:formatNumber type="number" pattern="#######" value="${promotion.giaTriToiThieu}"/></td>
                                <td>${promotion.sanPhamApDung == null ? 'Tất cả' : promotion.sanPhamApDung.ten}</td>
                                <td>${promotion.soLanSuDung <= -1 ? 'Không giới hạn' : promotion.soLanSuDung}</td>
                                <td>
                                    <button onclick="window.location.href = '/KM/promotions?action=edit&id=${promotion.id}'">Sửa</button>
                                    <form action="/KM/promotions" method="POST" style="display: inline;">
                                        <input type="hidden" name="id" value="${promotion.id}"
                                        <input type="hidden" name="action" value="delete"/>
                                        <button type="submit" name="action" value="delete" onclick="return confirm('Bạn có chắc chắn muốn xóa khuyến mãi này?')">Xóa</button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>                

                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>