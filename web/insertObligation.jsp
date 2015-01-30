<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="login.jsp" />
</c:if>

<html>
    <head>
        <title>INSERT Obligation</title>
    </head>
    <body>
        <c:if test="${empty param.amount}">
            <c:redirect url="createObligation.jsp" >
                <c:param name="errMsg" value="Please type an obligation" />
            </c:redirect>

        </c:if>
        
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/TAXISINFONEW"
                           user="root" password="root"/>
        
       


        <sql:update dataSource="${ds}" var="result">
            INSERT INTO OBLIGATIONS(AMOUNT,OBL_INFO,USER_ID,OBL_DATE) VALUES(?,?,?,NOW());
            <sql:param value="${param.amount}" />
            <sql:param value="${param.obl_info}" />
            <sql:param value="${param.user_id}" />
            
        </sql:update>
        
            

        <c:if test="${result>=1}">
            <c:redirect url="admin.jsp" />
        </c:if> 


    </body>
</html>