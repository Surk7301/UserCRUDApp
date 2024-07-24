<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Form</title>
</head>
<body>
    <h1>${user == null ? 'Add' : 'Edit'} User</h1>
    <form action="${user == null ? 'insert' : 'update'}" method="post">
        <c:if test="${user != null}">
            <input type="hidden" name="id" value="${user.id}">
        </c:if>
        <label for="name">Name:</label>
        <input type="text" name="name" value="${user == null ? '' : user.name}" required><br>
        <label for="email">Email:</label>
        <input type="email" name="email" value="${user == null ? '' : user.email}" required><br>
        <label for="country">Country:</label>
        <input type="text" name="country" value="${user == null ? '' : user.country}" required><br>
        <input type="submit" value="${user == null ? 'Add' : 'Update'}">
    </form>
    <a href="list">Back to User List</a>
</body>
</html>
