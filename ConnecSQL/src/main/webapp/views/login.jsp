<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Nhập Vào Hệ Thống</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
<style>
body {
	background-color: #f8f9fa;
}

.login-box {
	max-width: 400px;
	margin: 80px auto;
	padding: 25px;
	background: #fff;
	border-radius: 8px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

.login-box h2 {
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
	<div class="login-box">
		<h2>Đăng Nhập Vào Hệ Thống</h2>

		<!-- Hiển thị thông báo lỗi -->
		<c:if test="${success != null}">
			<div class="alert alert-success">${success}</div>
		</c:if>
		<c:if test="${alert != null}">
			<div class="alert alert-danger">${alert}</div>
		</c:if>

		<form action="login" method="post">
			<!-- Username -->
			<div class="mb-3 input-group">
				<span class="input-group-text"><i class="fa fa-user"></i></span> <input
					type="text" name="username" class="form-control"
					placeholder="Tên đăng nhập" required>
			</div>

			<!-- Password -->
			<div class="mb-3 input-group">
				<span class="input-group-text"><i class="fa fa-lock"></i></span> <input
					type="password" name="password" class="form-control"
					placeholder="Mật khẩu" required>
			</div>

			<!-- Remember + Quên mật khẩu -->
			<div class="d-flex justify-content-between align-items-center mb-3">
				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="remember"
						name="remember"> <label class="form-check-label"
						for="remember">Nhớ tôi</label>
				</div>
				<a href="#">Quên mật khẩu?</a>
			</div>

			<!-- Nút login -->
			<div class="d-grid">
				<button type="submit" class="btn btn-primary">Đăng nhập</button>
			</div>
		</form>

		<!-- Link đăng ký -->
		<p class="mt-3 text-center">
			Nếu bạn chưa có tài khoản trên hệ thống, thì hãy <a href="register">Đăng
				ký</a>
		</p>
	</div>

	<!-- FontAwesome để có icon -->
	<script src="https://kit.fontawesome.com/4b2f6e0f5b.js"
		crossorigin="anonymous"></script>
</body>
</html>
