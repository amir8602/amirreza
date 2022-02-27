<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Amir
  Date: 2/26/2022
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
</head>
<body>
<h2>
    <mvc:message code="product.add" />
</h2>

<%--<form action="/product/save" method="post">--%>
<%--    Name : <input name="name" type="text"/> <br/><br/>--%>
<%--    Price : <input name="price" type="text"/><br/><br/>--%>
<%--    <input type="submit" value="Add Product"/> <br/><br/>--%>
<%--</form>--%>

<form:form action="/product/save" method="post" modelAttribute="dto">
    Name : <form:input path="name"/><br/><br/>
    <form:errors path="name" cssStyle="color: red"/>

    Price : <form:input path="price"/><br/><br/>
    <form:errors path="name" cssStyle="color: red"/>
    Type :
    <form:select path="type" cssStyle="width: fit-content">
        <form:option value="-- Please Select One Item --"/>
    <form:options items="${dto.validTypes}"/>
</form:select><br/><br/>

    Color :
    Black <form:radiobutton path="color" value="black"/>
    Green <form:radiobutton path="color" value="green"/>
    Blue <form:radiobutton path="color" value="blue"/> <br/><br/>

    Size :
    XL <form:checkbox path="sizes" value="4"/>
    L  <form:checkbox path="sizes" value="3"/>
    M <form:checkbox path="sizes" value="2"/>
    S <form:checkbox path="sizes" value="1"/>
    <br/><br/>

    <input type="submit" value="Add Product"/>
</form:form>

</body>
</html>
