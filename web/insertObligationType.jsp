<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="login.jsp" />
</c:if>

<html>
    <head>
        <title>INSERT Obligation type</title>
    </head>
    <body>
        <c:if test="${empty param.obligationtype}">
            <c:redirect url="createObligationsType.jsp" >
                <c:param name="errMsg" value="Please Enter Userame and Password" />
            </c:redirect>

        </c:if>
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/TAXISINFONEW"
                           user="root" password="root"/>


        <sql:update dataSource="${ds}" var="result">
            INSERT INTO OBLIGATIONTYPE ( NAME ) VALUES (?);
            <sql:param value="${param.obligationtype}" />
        </sql:update>
        
            

        <c:if test="${result>=1}">
            <c:redirect url="admin.jsp" />
        </c:if> 


    </body>
</html>