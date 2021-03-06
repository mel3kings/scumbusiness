<%@ page language="java"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1660177537640645',
      xfbml      : true,
      version    : 'v2.6'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  
  function statusChangeCallback(response) {
	    console.log('statusChangeCallback');
	    console.log(response);
	    if (response.status === 'connected') {
		      setFBFields();
	    } else if (response.status === 'not_authorized') {
	     	alert("User has not authorized application");
	    } else {
			alert("Please login your Facebook account");
	    }
	  }

	  // This function is called when someone finishes with the Login
	  // Button.  See the onlogin handler attached to it in the sample
	  // code below.
	  function checkLoginState() {
	    FB.getLoginStatus(function(response) {
	      statusChangeCallback(response);
	    });
	  }

	 function logoutOutUser(){
		FB.logout();
	}
</script>

<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html">
<title>Page Title</title>
<link rel="shortcut icon"
	href="http://static.tmimgcdn.com/img/favicon.ico">
<link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico">
<script type="text/javascript"
	src="/capture/resources/common/js/switchery.min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<spring:url value="/resources/common/css/styles.css" var="styleCss" />
<spring:url value="/resources/common/css/switchery.min.css"
	var="switcheryCss" />
<link href="${styleCss}" rel="stylesheet" />
<link href="${switcheryCss}" rel="stylesheet" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="/capture/resources/common/css/main.css" />
<script src="/capture/resources/common/js/jquery.min.js"></script>
<script src="/capture/resources/common/js/jquery.scrollex.min.js"></script>
<script src="/capture/resources/common/js/jquery.scrolly.min.js"></script>
<script src="/capture/resources/common/js/skel.min.js"></script>
<script src="/capture/resources/common/js/util.js"></script>
<!--[if lte IE 8]><script src="/capture/resources/common/js/ie/respond.min.js"></script><![endif]-->
<script src="/capture/resources/common/js/main.js"></script>
<script src="/capture/resources/common/js/homemain.js"></script>
</head>

<div id="page-wrapper">
<header id="header" class="alt">
	<nav id="nav">
		<ul>
			<li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
				<div id="menu">
					<ul>
						<li><a href="#">Wedding Details</a></li>
						<li><a href="#">Our Story</a></li>
						<li><a href="#">Ceremony</a></li>
						<li><a href="#">Reception</a></li>
						<li><a href="#">Dress Code For Men</a></li>
						<li><a href="#">Dress Code for Ladies</a></li>
						<li><a href="#">Honored Guests</a></li>
						<li><a href="#">User Settings</a></li>
						<li><a href="customer">Customer</a></li>
						<li><a href="business">Business</a></li>
						<li><a href="album">Album</a></li>
						<li><a href="events">Events</a></li>
											
					</ul>
				</div></li>
		</ul>
	</nav>
</header>
</div>