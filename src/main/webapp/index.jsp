<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.codegym.Student" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
<%--    css--%>
</head>
<body>
<%
    List<Student> students = new ArrayList<>();
    students.add(new Student(1,"Quan", "HN", "20/06/99",""));
    students.add(new Student(2,"Quan", "HN", "20/06/99",""));
    students.add(new Student(3,"Quan", "HN", "20/06/99",""));
    students.add(new Student(4,"Quan", "HN", "20/06/99",""));
    students.add(new Student(5,"Quan", "HN", "20/06/99",""));
    students.add(new Student(6,"Quan", "HN", "20/06/99",""));
    students.add(new Student(7,"Quan", "HN", "20/06/99",""));
    students.add(new Student(8,"Quan", "HN", "20/06/99",""));
    pageContext.setAttribute("listStudent", students);
%>
<h1>Danh sách sinh viên</h1>
<table>
    <tr>
        <td>Họ tên</td>
        <td>Ngày sinh</td>
        <td>Địa chỉ</td>
        <td>Ảnh</td>
    </tr>
    <c:forEach var="student" items="#{listStudent}">
        <tr>
            <td><c:out value="${student.name}"/></td>
            <td><c:out value="${student.address}"/></td>
            <td><c:out value="${student.dateOfBirth}"/></td>
            <td><c:out value="${student.image}"/></td>
        </tr>
    </c:forEach>
</table>
<%--JS--%>
</body>
</html>
