<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="login.jsp" />
</c:if>

<html>
    <head>
        <title>INSERT Operation</title>
    </head>
    <body>
        <c:if test="${ empty param.username or empty param.password}">
            <c:redirect url="createUser.jsp" >
                <c:param name="errMsg" value="Please Enter Userame and Password" />
            </c:redirect>

        </c:if>
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/TAXISINFONEW"
                           user="root" password="root"/>


        <sql:update dataSource="${ds}" var="result">
            INSERT INTO USER( USERNAME, PASSWORD , COMPANYNAME, ADDRESS, AFM ) VALUES (?, ?, ?, ?, ?);
            <sql:param value="${param.username}" />
            <sql:param value="${param.password}" />
            <sql:param value="${param.companyname}" />
            <sql:param value="${param.address}" />
            <sql:param value="${param.AFM}" />
        </sql:update>
        
            

        <c:if test="${result>=1}">
            <c:redirect url="admin.jsp" />
        </c:if> 


    </body>
</html>