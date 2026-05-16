<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Employee info</h2>
<br>

<%--@elvariable id="employee" type="com.hstn.spring.mvc_hibernate_aop.entity.Employee"--%>
<form:form action="saveEmployee" modelAttribute="employee">

    <form:hidden path="id"/>


    Name<form:input path="name"/>
    <br><br>
    Surname<form:input path="surname"/>
    <br><br>
    Department<form:input path="department"/>
    <br><br>
    salary<form:input path="salary"/>
    <br><br>
    <input type="submit" value="OK"/>
</form:form>

</body>
</html>
