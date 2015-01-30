<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="login.jsp" />
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Username & Password</title>
    </head>
    <body>
        <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/TAXISINFONEW"
                       user="root" password="root"/>
        <s:update dataSource="${ds}" var="count">
            
            UPDATE USER SET username = ?, password=?
            WHERE id='${param.id}'
            <s:param value="${param.username}" />
            <s:param value="${param.password}" />
        </s:update>
        <c:if test="${count>=1}">
            <c:redirect url="admin.jsp" />        
        </c:if>
    </body>
</html>