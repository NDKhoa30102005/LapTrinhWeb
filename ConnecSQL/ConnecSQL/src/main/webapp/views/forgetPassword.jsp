<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Quên mật khẩu</title>
</head>
<body>
    <h2>Quên mật khẩu</h2>
    <form action="forgot-password" method="post">
        <label>Email:</label>
        <input type="email" name="email" required>
        <button type="submit">Xác nhận</button>
    </form>

    <p style="color:red;">
        ${error}
    </p>
</body>
</html>
