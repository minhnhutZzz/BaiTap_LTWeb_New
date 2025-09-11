<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
</head>
<body>

<h2>Welcome, <c:out value="${user.fullname}" />!</h2>
<p>Phone: <c:out value="${user.phone}" /></p>

<!-- Sử dụng biểu thức EL để kiểm tra ảnh -->
<c:choose>
    <c:when test="${not empty user.image}">
        <img src="${user.image}" alt="Profile Image" class="profile-image">
    </c:when>
    <c:otherwise>
        <img src="/images/default-avatar.png" alt="Profile Image" class="profile-image">
    </c:otherwise>
</c:choose>

</body>
</html>
