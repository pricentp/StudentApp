<%-- 
    Document   : show
    Created on : Nov 13, 2022, 2:26:17 PM
    Author     : price
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show</title>
        <jsp:useBean id="student" scope="page" class="model.Student" />
        <jsp:setProperty name="student" property="*"  />
    </head>
    <body>
        ID : <jsp:getProperty name="student" property="id" />
        <br>
        Name : <jsp:getProperty name="student" property="name" />
        <br>
        GPA : <jsp:getProperty name="student" property="gpa" />
        <br>
        <%@include file = "table.jsp"%>
    </body>
</html>
