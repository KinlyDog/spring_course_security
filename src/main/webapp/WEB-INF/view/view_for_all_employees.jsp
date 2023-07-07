<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Andrey
  Date: 07.07.2023
  Time: 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New title</title>
</head>
<body>

<h3>Information for all employees</h3>

<security:authorize access="hasRole('HR')">
    <input type="button" value="salary"
           onclick="window.location.href = 'hr_info'">
    Only for HR staff
</security:authorize>
<br><br>
<security:authorize access="hasRole('MANAGER')">
    <input type="button" value="performance"
           onclick="window.location.href = 'manager_info'">
    Only for managers staff
</security:authorize>
</body>
</html>
