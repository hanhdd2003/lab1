<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Product</title>
    
        <script type="text/javascript">
            function doDelete(id){
                if(confirm("Are you sure to delete Product with id="+id)){
                    window.location="delete?id="+id;
                }
            }
            
        </script>
            
    
    </head>
    <body>
    <center>
        <h1>LIST PRODUCT</h1>
        <h3> <a href="add.jsp">Add new product</a></h3> 
        <form action="search"><input type="text" name="search"><input type="submit" value="Search"></form><br>
        <table border="1" width="30%">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>ACTION</th>
            </tr>
            <c:forEach items="${requestScope.data}" var="c">
                <c:set var="id" value="${c.id}"/>
                <tr style="text-align: center">
                    <td>${id}</td>
                    <td>${c.name}</td>
                    <td width="30%">
                        <a href="update?id=${id}"><img src="img/update.png" alt="alt" width="10%"/>  </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="delete?id=${id}" onclick="doDelete('${id}')"><img src="img/delete.png" alt="alt" width="10%"/></a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </center>
   
</body>
</html>
