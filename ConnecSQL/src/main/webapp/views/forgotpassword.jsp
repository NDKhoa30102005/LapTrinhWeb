<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
</head>
<body>
<div class="container mt-5" style="max-width: 500px;">
    <h2 class="text-center">Quên mật khẩu</h2>

    <!-- Thông báo -->
    <c:if test="${not empty alert}">
        <div class="alert alert-danger">${alert}</div>
    </c:if>
    <c:if test="${not empty success}">
        <div class="alert alert-success">${success}</div>
    </c:if>

    <form action="forgot-password" method="post">
        <div class="mb-3">
            <label for="email" class="form-label">Nhập email của bạn</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="example@gmail.com" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Gửi yêu cầu</button>
    </form>

    <p class="mt-3 text-center">
        <a href="login">Quay lại đăng nhập</a>
    </p>
</div>
</body>
</html>