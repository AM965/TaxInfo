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
					<li><a href="admin.jsp">Admin</a><i class="icon-angle-right"></i></li>
                                        <li class="active">Create User</li>
				</ul>
			</div>
		</div>
	</div>
          
        <section id="content">     
            <div class="container">
                
            <form  action="insertdb.jsp">    
                <div class="row">
                    <div class="col-md-6 text-left">
                        
                        <h3>Create New User - Company</h3>
                        
                    </div>
                    <div class="col-md-6 text-right">
                        
                        <a href="logout.jsp">Logout
                        <c:out value="${sessionScope['loginUser']}" />
                        </a> 
                    </div>
                </div>
                        
                        
                
                <font color="#656565">        
                <div class="row">
                    <div class="col-lg-3 ">
                        <label for="username">Username:</label>
                    </div>
                    <div class="col-lg-9 form-group">
                     	<input type="text" name="username" placeholder="* Enter username"/>
	
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 ">
                        <label for="password">Password:</label>
                    </div>
                    <div class="col-lg-9 form-group">
                     	<input type="password" name="password" placeholder="* Enter password"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 ">
                        <label for="companyname">Company Name: </label>
                    </div>
                    <div class="col-lg-9 form-group">
                        <input type="text" name="companyname" placeholder="* Enter Company Name"/>
	
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 ">
                        <label for="address">Address: </label>
                    </div>
                    <div class="col-lg-9 form-group">
                        <input type="text" name="address" placeholder="* Enter address"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 ">
                        <label for="AFM">A.F.M.: </label>
                    </div>
                    <div class="col-lg-9 form-group">
                        <input type="text" name="AFM" placeholder="* Enter AFM"/>
                    </div>
                </div>
                
                </font>
                
                <div class="row">
                    <div class="col-lg-12">
                        <button class="btn btn-theme btn-medium margintop10 pull-left" type="sumbit">Create User</button>
                    </div>

                </div> 
                                            
            </form>
                             
                            <c:if test="${not empty param.errMsg}">
                                <c:out value="${param.errMsg}" />
                            </c:if>
                      
 
            
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


