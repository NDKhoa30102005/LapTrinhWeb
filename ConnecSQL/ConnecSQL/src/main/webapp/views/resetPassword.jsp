<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Đặt lại mật khẩu</title>
</head>
<body>
    <h2>Đặt lại mật khẩu</h2>
    <form action="reset-password" method="post">
        <input type="hidden" name="email" value="${email}">

        <label>Mật khẩu mới:</label>
        <input type="password" name="newPassword" required><br><br>

        <label>Xác nhận mật khẩu:</label>
        <input type="password" name="confirmPassword" required><br><br>

        <button type="submit">Đổi mật khẩu</button>
    </form>

    <p style="color:red;">
        ${error}
    </p>
</body>
</html>
