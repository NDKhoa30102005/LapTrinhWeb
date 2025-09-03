<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tạo tài khoản mới</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
    <!-- FontAwesome -->
    <script src="https://kit.fontawesome.com/4b2f6e0f5b.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .register-box {
            max-width: 450px;
            margin: 80px auto;
            padding: 25px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }
        .register-box h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #555;
        }
        .form-control {
            padding-left: 40px;
        }
        .input-group-text {
            width: 40px;
            justify-content: center;
        }
    </style>
</head>
<body>
<div class="register-box">
    <h2>Tạo tài khoản mới</h2>

    <!-- Hiển thị thông báo lỗi -->
    <c:if test="${alert != null}">
        <div class="alert alert-danger">${alert}</div>
    </c:if>

    <form action="register" method="post">
        <!-- Username -->
        <div class="mb-3 input-group">
            <span class="input-group-text"><i class="fa fa-user"></i></span>
            <input type="text" name="username" class="form-control" placeholder="Tài khoản" required>
        </div>

        <!-- Fullname -->
        <div class="mb-3 input-group">
            <span class="input-group-text"><i class="fa fa-id-card"></i></span>
            <input type="text" name="fullname" class="form-control" placeholder="Họ tên" required>
        </div>

        <!-- Email -->
        <div class="mb-3 input-group">
            <span class="input-group-text"><i class="fa fa-envelope"></i></span>
            <input type="email" name="email" class="form-control" placeholder="Nhập Email" required>
        </div>

        <!-- Phone -->
        <div class="mb-3 input-group">
            <span class="input-group-text"><i class="fa fa-phone"></i></span>
            <input type="text" name="phone" class="form-control" placeholder="Số điện thoại">
        </div>

        <!-- Password -->
        <div class="mb-3 input-group">
            <span class="input-group-text"><i class="fa fa-lock"></i></span>
            <input type="password" name="password" class="form-control" placeholder="Mật khẩu" required>
        </div>

        <!-- Confirm Password -->
        <div class="mb-3 input-group">
            <span class="input-group-text"><i class="fa fa-lock"></i></span>
            <input type="password" name="repassword" class="form-control" placeholder="Nhập lại mật khẩu" required>
        </div>

        <!-- Nút Đăng ký -->
        <div class="d-grid">
            <button type="submit" class="btn btn-primary">Tạo tài khoản</button>
        </div>
    </form>

    <p class="mt-3 text-center">
        Nếu bạn đã có tài khoản? <a href="login">Đăng nhập</a>
    </p>
</div>
</body>
</html>
