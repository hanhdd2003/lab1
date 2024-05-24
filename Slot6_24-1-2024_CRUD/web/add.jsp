<%-- 
    Document   : add
    Created on : Jan 24, 2024, 5:17:03 PM
    Author     : hanh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
    </head>
    <body>
    <center>
        <h1>ADD PRODUCTS</h1>
        <h3 style="color: red"> ${requestScope.error}</h3>
        <table >
            <form action="add">
                <tr>
                    <td>ID </td>
                    <td><input type="number" name="id"></td><br>
                </tr>
                <tr>
                    <td>Name </td>
                    <td><input type="text" name="name"></td><br>
                </tr>
                <tr>
                    <td><input type="submit" value="Save"></td>
                    <td><button><a href="servlet">Back</a></td>
                </tr>
            </form>

        </table>
    </center>
</body>
</html>
