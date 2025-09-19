<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Category List</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 20px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #2c3e50;
}

.table-container {
	width: 100%;
	margin: auto;
}

.add-btn {
	display: inline-block;
	padding: 8px 15px;
	background-color: #3498db;
	color: white;
	text-decoration: none;
	border-radius: 4px;
	font-size: 14px;
	margin-bottom: 15px;
	float: right;
}

.add-btn:hover {
	background-color: #2980b9;
}

table {
	width: 100%;
	border-collapse: collapse;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
	clear: both;
}

th {
	background-color: #34495e;
	color: #fff;
	padding: 12px;
	text-align: center;
}

td {
	padding: 10px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background-color: #f5f5f5;
}

img {
	border-radius: 6px;
	box-shadow: 0 1px 4px rgba(0, 0, 0, 0.2);
}

a.btn {
	padding: 5px 10px;
	border-radius: 4px;
	text-decoration: none;
	color: white;
	font-size: 13px;
	margin: 0 2px;
}

a.edit {
	background-color: #27ae60;
}

a.delete {
	background-color: #e74c3c;
}

a.edit:hover {
	background-color: #2ecc71;
}

a.delete:hover {
	background-color: #c0392b;
}
</style>
</head>
<body>
	<h2>Danh sách Category</h2>
	
	<form action="${pageContext.request.contextPath}/admin/category/search" method="get" style="margin-bottom: 15px; float: left;">
        <input type="hidden" name="action" value="search" />
        <input type="text" name="keyword" placeholder="Nhập tên category..." 
               value="${param.keyword}" 
               style="padding: 6px; width: 200px; border: 1px solid #ccc; border-radius: 4px;" />
        <button type="submit" 
                style="padding: 6px 12px; border: none; background-color: #2ecc71; color: white; border-radius: 4px; cursor: pointer;">
            Tìm kiếm
        </button>
    </form>
	<div class="table-container">
		<a href="${pageContext.request.contextPath}/admin/category/add" class="add-btn">+ Add Category</a>

		<table>
			<tr>
				<th>STT</th>
				<th>Images</th>
				<th>CategoryID</th>
				<th>CategoryName</th>
				<th>Status</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${listcate}" var="cate" varStatus="stt">
				<tr>
					<td>${stt.index + 1}</td>
					<c:if test="${cate.images.substring(0,5) != 'https'}">
						<c:url value="/image?fname=${cate.images}" var="imgUrl"></c:url>
					</c:if>
					<c:if test="${cate.images.substring(0,5) == 'https'}">
						<c:url value="${cate.images}" var="imgUrl"></c:url>
					</c:if>
					<td><img height="150" width="150" src="${imgUrl}" /></td>

					<td>${cate.categoryid}</td>
					<td>${cate.categoryname}</td>
					<td><c:choose>
							<c:when test="${cate.status == 1}">
								<span style="color: green; font-weight: bold;">Active</span>
							</c:when>
							<c:otherwise>
								<span style="color: red; font-weight: bold;">Inactive</span>
							</c:otherwise>
						</c:choose></td>
					<td>
						<a href="<c:url value='/admin/category/edit?id=${cate.categoryid}'/>" class="btn edit">Sửa</a>
						<a href="<c:url value='/admin/category/delete?id=${cate.categoryid}'/>" class="btn delete">Xóa</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
