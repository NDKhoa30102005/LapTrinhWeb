<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Chào Mừng</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .welcome-box {
            max-width: 600px;
            margin: 80px auto;
            padding: 30px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            text-align: center;
        }
        .welcome-box h2 {
            color: #007bff;
            margin-bottom: 20px;
        }
        .user-info {
            margin-top: 15px;
        }
    </style>
</head>
<body>
<div class="welcome-box">
    <h2>Chào mừng, <c:out value="${sessionScope.account.fullName}"/>!</h2>
    <p class="lead">Bạn đã đăng nhập thành công vào hệ thống 🎉</p>

    <div class="user-info">
        <p><b>Tên đăng nhập:</b> ${sessionScope.account.userName}</p>
        <p><b>Email:</b> ${sessionScope.account.email}</p>
        <p><b>Số điện thoại:</b> ${sessionScope.account.phone}</p>
        <p><b>Quyền:</b> 
            <c:choose>
                <c:when test="${sessionScope.account.roleid == 1}">Admin</c:when>
                <c:when test="${sessionScope.account.roleid == 2}">Manager</c:when>
                <c:otherwise>User</c:otherwise>
            </c:choose>
        </p>
    </div>

    <div class="mt-4">
        <a href="home.jsp" class="btn btn-success">Vào Trang Chủ</a>
        <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger">Đăng Xuất</a>
    </div>
</div>
</body>
</html>
