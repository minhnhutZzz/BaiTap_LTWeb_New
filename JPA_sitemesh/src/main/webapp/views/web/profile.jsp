<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Profile Page</title>
</head>
<body>
    <h2>Update Your Profile</h2>

    <form method="post" action="${pageContext.request.contextPath}/updateProfile" enctype="multipart/form-data">
    <label for="fullname">Full Name:</label>
    <input type="text" id="fullname" name="fullname" value="${user.fullname}"><br><br>

    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" value="${user.phone}"><br><br>

    <label for="image">Upload Image:</label>
    <input type="file" id="image" name="image"><br><br>

    <input type="submit" value="Update Profile">
</form>

</body>
</html>
