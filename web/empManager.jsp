<%-- 
    Document   : empManager
    Created on : Mar 13, 2019, 9:51:04 AM
    Author     : hungdung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Manager</title>
    </head>
    <body>
        <h1>List Employee</h1>
        <table border="1" >
            <tr>
                <td>id</td>
                <td>Name</td>
                <td>Salary</td>
            </tr>
            <c:forEach items="${listEmp}" var="e">
                <tr>
                    <td><c:out value="${e.id}"/></td>
                    <td><c:out value="${e.name}"/></td>
                    <td><c:out value="${e.salary}"/></td>
                    <td><a href="DeleteServlet?id=<c:out value="${e.id}"/>">Delete</a></td>
                    <td><a href="EditServlet?id=<c:out value="${e.id}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </table>

        <h1>Create Employee</h1>
        <form action="CreateServlet">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="txtId"/></td>
                </tr>

                <tr>
                    <td>Name</td>
                    <td><input type="text" name="txtName"/></td>
                </tr>
                <tr>
                    <td>Salary</td>
                    <td><input type="text" name="txtSalary"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="create"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
