<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<h2>All employees.</h2>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Options</th>

    </tr>
    <c:forEach var="emp" items="${employees}">
        <c:url value="/updateEmp" var="updateButton">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <c:url value="/deleteEmp" var="deleteButton">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="Update"
                onclick="window.location.href = '${updateButton}'">
                <input type="button" value="Delete"
                       onclick="window.location.href = '${deleteButton}'">
            </td>
        </tr>
    </c:forEach>
</table>
<input type="button" value="Add"
onclick="window.location.href='addNewEmp'">
</body>
</html>