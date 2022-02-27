<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Amir
  Date: 2/26/2022
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products List</title>
</head>
<body>

    <table style="border: 1px solid black">
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Detail</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
        <c:forEach items="${products}" var="productDTO" >
            <tr>
                <td>${productDTO.name}</td>
                <td>${productDTO.price}</td>
                <td><a href="/product/detail/${productDTO.id}" ><img style="height: 30px ;width: 30px" src="/resource/img/product.png"/></a></td>
                <td>X</td>
                <td>E</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
