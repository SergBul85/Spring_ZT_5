<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--@elvariable id="emp" type="com.hstn.spring.mvc_hibernate_aop.entity.Employee"--%>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>ALL EMPLOYEES</h2>

<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surame</th>
        <th>Department</th>
        <th>Salary</th>
    </tr>


    <c:forEach var="emp" items="${allEmps}">
        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
        </tr>
    </c:forEach>

</table>


</body>
</html>
