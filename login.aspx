﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Sweet Alert JavaScript -->
    <script src="assets/js/sweetalert2.js"></script>
    <!-- Custom JavaScript -->
    <script src="assets/js/app.js"></script>

    <!-- Nunito Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,700" rel="stylesheet">
    <title>Log in | GCPL</title>
</head>
<body class="bg-light">
    <div class="container-fluid">
        <div class="row mx-1">
            <div class="col-lg-10 col-md-10 offset-lg-1 offset-md-1 text-center mt-5 pb-4 text-primary">
                <h1 class="h1">Login</h1>
            </div>
            <div class="col-lg-10 col-md-10 offset-lg-1 offset-md-1 bg-white shadow mb-5 border border-primary">
                <div class="row">
                    <div class="col-lg-6 col-md-6 p-4 bg-primary divCover">
                        <img src="assets/images/helping11.png" alt="Firebase cover image">
                    </div>
                    <div class="col-lg-6 col-md-6 p-lg-5 p-md-5 px-3 py-4">
                        <div id="signInForm">
                            <h2 class="h2 text-center text-dark mb-3">Sign In</h2>
                            <div class="form-group">
                                <label for="userSIEmail">Email Address<span class="text-danger ml-1">*</span></label>
                                <input type="email" class="form-control" id="userSIEmail" onblur="checkUserSIEmail()"placeholder="mail@mail.com">
                                <small id="userSIEmailError" class="form-text text-danger">Please check your login information.</small>
                            </div>
                            <div class="form-group">
                                <label for="userSIPassword">Password<span class="text-danger ml-1">*</span></label>
                                <input type="password" class="form-control" id="userSIPassword" onblur="checkUserSIPassword()" placeholder="password">
                                <small id="userSIPasswordError" class="form-text text-danger">Please check your password.</small>
								<input type="checkbox" onclick="myFunction()">Show Password
                            </div>
							
                            <button type="button" class="btn btn-outline-primary text-uppercase mb-3" onclick="signIn()">Sign In</button>
							
							<div class="form-group">
							<a data-target="#forgotPasswordModal" data-toggle="modal" data-dismiss="modal" href="#" id="forgotPasswordTrigger">Forgot Password?</a>
							</div>
                            <p>Not a member yet? Become a member: <a href="sign-up.aspx"><strong class="text-primary text-uppercase showSignUpForm">Sign Up</strong></a></p>
                        </div>
						
						<div class="modal fade" id="forgotPasswordModal" tabindex="-1" role="dialog" aria-label="Forgot Password" aria-hidden="true">
						  <div class="modal-dialog">
							<div class="modal-content">
							  <form id="forgotPasswordForm" method="POST">
								<div class="modal-header">
								  <h4 class="modal-title auth-false" id="forgotPasswordModalLabel">Forgot Password</h4>
								  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								</div>
								<div class="modal-body">
								  <div class="form-group">
									<label for="recipient-name" class="control-label">Email:</label>
									<input type="email" name="email" id ="email" class="form-control">
								  </div>
								</div>
								<div class="modal-footer">
								   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								  <button type="button" class="btn btn-primary" id ="btn-resetPassword">Send Reset Link</button>
								</div>
							  </form>
							</div>
						  </div>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <!-- Firebase -->
    
<script src="https://www.gstatic.com/firebasejs/5.9.4/firebase.js"></script>
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.3.0/firebase-app.js"></script>
<!-- TODO: Add SDKs for Firebase products that you want to use  -->
<script src="https://firebase.google.com/docs/web/setup#available-libraries"></script>
<script src="https://www.gstatic.com/firebasejs/7.3.0/firebase-analytics.js"></script>
<!-- Add Firebase products that you want to use -->
<script src="https://www.gstatic.com/firebasejs/6.1.1/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/6.1.1/firebase-database.js"></script>


<script>
    // Your web app's Firebase configuration
    var firebaseConfig = {
        apiKey: "AIzaSyA063-ngsexQ0rhIvtHRKP0LmB0yBrH5vk",
        authDomain: "oneclick-73406.firebaseapp.com",
        databaseURL: "https://oneclick-73406.firebaseio.com",
        projectId: "oneclick-73406",
        storageBucket: "oneclick-73406.appspot.com",
        messagingSenderId: "69122383434",
        appId: "1:69122383434:web:ed374155a50b23b0a610b3"
    };
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);
    firebase.analytics();
</script>

<script>
    function myFunction() {
        var x = document.getElementById("userSIPassword");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
</script>

</body>
</html>
