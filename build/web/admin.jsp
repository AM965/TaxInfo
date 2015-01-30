<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="login.jsp" />
</c:if>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>TaxInfo - Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <script>
        function confirmGo(m,u) {
            if ( confirm(m) ) {
                window.location = u;
            }
        }
    </script>

</head>
    
<body>
    
    
<div id="wrapper">
	<!-- start header -->
       	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">G<span>E</span>OTRIAN - TAXINFO</a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="help.html">Help</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
	</header>

	<!-- end header -->
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
					<li class="active">Admin</li>
				</ul>
			</div>
		</div>
	</div>
          
        <section id="content">     
            <div class="container">
  
                <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/TAXISINFONEW"
                       user="root" password="root"/>
 
                <s:query dataSource="${ds}" var="result">
                   SELECT *
                   FROM USER;
           
                    
                </s:query> 
                   
                <div class="row">
                    <div class="col-md-4 text-left">
                        <h4> Welcome <c:out value="${sessionScope['loginUser']}" /></h4>
                        <h3> Admin Menu </h3>
                        
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="createUser.jsp">Add new user - company</a>
                        
                    </div>
                    <div class="col-md-4 text-right">
                        
                        <a href="logout.jsp">Logout
                        <c:out value="${sessionScope['loginUser']}" />
                        </a> 
                    </div>
                </div>
            
                <font color="#656565">
                    <table class="table table-striped">
                        <tr>
                        <th><center>User ID</center</th>
                        <th><center>User Name</center></th>
                        <th><center>Company Name</center></th>
   
                        <th colspan="2"><center>Action</center></th>
                        </tr>
                    <c:forEach items="${result.rows}" var="row">
                    <tr>
                        <td><center><c:out value="${row.ID}"/></center></td>
                        <td><center><c:out value="${row.USERNAME}"/></center></td>
                        <td><center><c:out value="${row.COMPANYNAME}"/></center></td>
                        <td><center><a href="createObligation.jsp?company_id=${row.ID}">Create Obligation</a></center></td>
                    <td><center><a href="javascript:confirmGo('Sure to update password of this record?','update.jsp?id=<c:out value="${row.id}"/>')">Update</a></center></td> 
                    </tr>
                    </c:forEach>
                    </table></font>

                
                <br/>
                
            </div>

        </section>
            
   <footer>
	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>
                                                    <span>&copy; 2014-2015 Triantafilldis Vas. Georgios | University of Thessaly</span>
                                                </p>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	</footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script>
<script src="js/google-code-prettify/prettify.js"></script>
<script src="js/portfolio/jquery.quicksand.js"></script>
<script src="js/portfolio/setting.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
</body>
</html>