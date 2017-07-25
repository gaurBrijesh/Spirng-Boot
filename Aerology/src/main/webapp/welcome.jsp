<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Aerology</title>
    <link rel="apple-touch-icon" sizes="57x57" href="${contextPath}/resources/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="${contextPath}/resources/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="${contextPath}/resources/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="${contextPath}/resources/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="${contextPath}/resources/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="${contextPath}/resources/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="${contextPath}/resources/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="${contextPath}/resources/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="${contextPath}/resources/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="${contextPath}/resources/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="${contextPath}/resources/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="${contextPath}/resources/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="${contextPath}/resources/favicon/favicon-16x16.png">
<link rel="manifest" href="${contextPath}/resources/favicon/manifest.json">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/component1.css" />
		<script src="${contextPath}/resources/js/modernizr-2.6.2.min.js"></script>


<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="${contextPath}/resources/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
    

   <!-- <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-7243260-2']);
_gaq.push(['_trackPageview']);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>
</head>
<body>
<div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <!-- <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2> -->

    
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon " ><span>Aerology</span></a>
				<span class="right"><a onclick="document.forms['logoutForm'].submit()"><span>logout</span></a></span>
			</div>
			<header>
				<h1>Welcome <span>${pageContext.request.userPrincipal.name}</span></h1>	
				
			</header>
			<section>
				<p>Press Below '+' button and home for logout from your account.</p>
			</section>
			<div class="component">
				<!-- Start Nav Structure -->
				<button class="cn-button" id="cn-button">+</button>
				<div class="cn-wrapper" id="cn-wrapper">
				    <ul>
				      <li><a href="#"><span class="icon-picture"></span></a></li>
				      <li><a href="#"><span class="icon-headphones"></span></a></li>
				      <li><a onclick="document.forms['logoutForm'].submit()"><span class="icon-home"></span></a></li>
				      <li><a href="#"><span class="icon-facetime-video"></span></a></li>
				      <li><a href="#"><span class="icon-envelope-alt"></span></a></li> 
				     </ul>
				</div>
				<div id="cn-overlay" class="cn-overlay"></div>
				<!-- End Nav Structure -->
			</div>
			</c:if>
		</div><!-- /container -->
		<script src="${contextPath}/resources/js/polyfills.js"></script>
		<script src="${contextPath}/resources/js/demo1.js"></script>
		<!-- For the demo ad only -->   
<script src="http://tympanus.net/codrops/adpacks/demoad.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>