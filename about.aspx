<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Real Estate Builders Free Responsive Website Templates - icon">
	<meta name="author" content="webThemez.com">
	<title>Globus Constructions Pvt Ltd</title>
	<link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css"> 
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen"> 
	<link rel="stylesheet" href="assets/css/style.css">
    <link rel='stylesheet' id='camera-css' href='assets/css/camera.css' type='text/css' media='all'> 
</head>
<body>
    <!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="Home.aspx">
					<B>Globus Constructions Pvt Ltd</B></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li class="active"><a href="Home.aspx">Home</a></li>
					<li><a href="about.aspx">About</a></li>
					<li><a href="services.aspx">Services</a></li>
					<li><a href="price.aspx">Price</a></li>
					<li><a href="projects.aspx">Projects</a></li>					
					<li><a href="contact.aspx">Contact</a></li>
                    <li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Profile <b class="caret"></b></a>
						<ul class="dropdown-menu">
                        <span class="h4" id="userPfFullName">User</span><span class="h4" id="userPfSurname">Name</span>							
								                      
					   
							<li><a href="profile.aspx">Update Profile</a></li>
					        <li><a type="button" onclick="signOut()">Logout</a></li>
							
						</ul>
					</li>

				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->
</body>
</html>
