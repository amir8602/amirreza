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

    <form action="/product/save" method="post">
        Name : <input name="name" type="text"/> <br/><br/>
        Price : <input name="price" type="text"/><br/><br/>
        <input type="submit" value="Add Product"/> <br/><br/>
    </form>

</body>
</html>
