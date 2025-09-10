<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e0e0e0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background: linear-gradient(135deg, #ffffff, #f0f0f0);
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            border: none;
            color: #fff;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .alert {
            color: #e74c3c;
            font-weight: bold;
            margin-bottom: 12px;
        }

        label {
            font-size: 14px;
            color: #555;
            display: inline-block;
            margin-top: 5px;
        }

        .extra {
            margin-top: 20px;
            font-size: 14px;
            color: #555;
        }

        .extra a {
            color: #007bff;
            text-decoration: none;
        }

        .extra a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <form action="${pageContext.request.contextPath}/login" method="post">
            <h2>Đăng nhập</h2>

            <c:if test="${alert != null}">
                <div class="alert">${alert}</div>
            </c:if>

            <input type="text" placeholder="Tên đăng nhập" name="username" class="form-control" required>
            <input type="password" placeholder="Mật khẩu" name="password" class="form-control" required>

            <label>
                <input type="checkbox" name="remember"> Ghi nhớ đăng nhập
            </label>

            <button type="submit" class="btn">Đăng nhập</button>

            <div class="extra">
                Chưa có tài khoản? <a href="${pageContext.request.contextPath}/register">Đăng ký</a><br>
                <a href="${pageContext.request.contextPath}/forgot">Quên mật khẩu?</a>
            </div>
        </form>
    </div>
</body>
</html>
