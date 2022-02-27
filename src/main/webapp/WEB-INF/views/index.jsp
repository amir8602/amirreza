<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Amir
  Date: 2/26/2022
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><mvc:message code="page.home" text="Home ALT" /> </title>
</head>
<body>

    <a href="/product/show">Add Product</a> <br/><br/>
    <a href="/product/get-all">Show Products</a>

</body>
</html>
