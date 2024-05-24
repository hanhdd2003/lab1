<%-- 
    Document   : update
    Created on : Jan 25, 2024, 7:29:19 PM
    Author     : hanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Product</title>
    </head>
    <body>
    <center>
        <h1>UPDATE PRODUCTS</h1>
        <c:set var="c" value="${requestScope.product}" />
        <table>
            <form action="update" method="post">
                <tr>
                    <td>ID</td>
                    <td><input type="number" readonly name="id" value="${c.id}"></td>
                </tr> 
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="${c.name}"></td>
                </tr> 
                <tr>
                    <td><input type="submit" value="Update"></td>
                    <td><button><a href="servlet">Back</a></button></td>
                </tr>

            </form>
        </table>
    </center>
</body>
</html>
