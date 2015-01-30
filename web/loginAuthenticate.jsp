<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
 
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Authentication page</title>
  </head>
  
    <c:if test="${ empty param.username or empty param.password}">
      <c:redirect url="login.jsp" >
              <c:param name="errMsg" value="Please Enter UserName and Password" />
      </c:redirect>
       
    </c:if>
     
    <c:if test="${not empty param.username and not empty param.password}">
      <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/TAXISINFONEW"
                       user="root" password="root"/>
 

      <s:query dataSource="${ds}" var="selectQ1">
        select ID,USERNAME ,count(*) as kount from USER
        where USERNAME='${param.username}'
        and PASSWORD='${param.password}'
      </s:query>   
      <c:forEach items="${selectQ1.rows}" var="r1">
        
        <c:choose>
          <c:when test="${r1.kount gt 0}">
            
           <%-- <c:set scope="session"
                   var="loginUser"
                   value= "${r1.ID} ${r1.USERNAME}"/>
            <c:choose>
                <c:when test="${param.username == 'admin'}">
                <c:redirect url="admin.jsp"/>
                </c:when>
                <c:otherwise>
                    <c:redirect url="user.jsp"/>
                </c:otherwise>
            </c:choose> --%>
            
            
            <c:set scope="session"
                   var="loginUser"
                   value= "${r1.USERNAME}"/>
            <c:choose>
                <c:when test="${param.username == 'admin'}">
                <c:redirect url="admin.jsp"/>
                </c:when>
                <c:otherwise>
                    <c:redirect url="userObligations.jsp"/>
                </c:otherwise>
            </c:choose>
          </c:when>
          <c:otherwise>
            <c:redirect url="login.jsp" >
              <c:param name="errMsg" value="Username/password does not match" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
 
    </c:if>
 
  
</html>
