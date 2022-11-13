<%-- 
    Document   : table
    Created on : Nov 13, 2022, 2:26:38 PM
    Author     : price
--%>

<%@page import="java.util.List"%>
<%@page import="model.Student"%>
<%@page import="model.StudentTable"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <h1 style="text-align: center;">Student List</h1>
        <table border="2" style="margin-left: auto; margin-right: auto;">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>GPA</th>
          </tr>
          <%
            List<Student> stdList = StudentTable.findAllStudent();
            for(Student std : stdList){
           %>
          <tr>
            <td><%=std.getId()%></td>
            <td><%=std.getName()%></td>
            <td><%=std.getGpa()%></td>
          </tr>
          <% } %>
        </table>
        <a href="index.html">back to Add Student</a>
    </body>
</html>
