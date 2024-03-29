﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign-up.aspx.cs" Inherits="sign_up" %>

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
    <script src="assets/js/sign-up1.js"></script>  
    <!-- Custom JavaScript -->
   
    <!-- Nunito Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,700" rel="stylesheet">


    <title>Sign Up | Subscribe</title>
</head>
<body class="bg-light">
    <div class="container-fluid">
        <div class="row mx-1">
            <div class="col-lg-10 col-md-10 offset-lg-1 offset-md-1 text-center mt-5 pb-4 text-primary">
                <h1 class="h1">Subscribe For Latest Comming Projects</h1>
            </div>
            <div class="col-lg-10 col-md-10 offset-lg-1 offset-md-1 bg-white shadow mb-5 border border-primary">
                <div class="row">
                    <div class="col-lg-6 col-md-6 p-4 bg-primary divCover">
                        <img src="assets/images/helping11.png" alt="Firebase cover image">
                    </div>
                    <div class="col-lg-6 col-md-6 p-lg-5 p-md-5 px-3 py-4">
                        <div id="signUpForm">
                            <h2 class="h2 text-center text-dark mb-3">Sign Up</h2>
                            <div class="form-group">
                                <label for="userFullName">First Name<span class="text-danger ml-1">*</span></label>
                                <input type="text" class="form-control" id="userFullName" onblur="checkUserFullName()" placeholder="Firs Name">
                                <small id="userFullNameError" class="form-text text-danger">This Field must be filled.</small>
                            </div>
                            
							<div class="form-group">
                                <label for="userSurname">Last Name<span class="text-danger ml-1">*</span></label>
                                <input type="text" class="form-control" id="userSurname" onblur="checkUserSurname()" placeholder="Last Name">
                                <small id="userSurnameError" class="form-text text-danger">This Field must be filled.</small>
                            </div>
														
                            <div class="form-group">
                                <label for="userEmail">Email Address<span class="text-danger ml-1">*</span></label>
                                <input type="email" class="form-control" id="userEmail" onblur="checkUserEmail()" placeholder="mail@mail.com">
                                <small id="userEmailError" class="form-text text-danger">Please check your email address.</small>
                            </div>
                            <div class="form-group">
                                <label for="userPassword">Password<span class="text-danger ml-1">*</span></label>
                                <input type="password" class="form-control" id="userPassword" onblur="checkUserPassword()" placeholder="**********">
                                <small id="userPasswordError" class="form-text text-danger">Your password must be uppercase, lowercase and more than 10 characters.</small>
                            </div>
                            <button type="button" class="btn btn-outline-primary text-uppercase mb-3" onclick="signUp()">Sign Up</button>
                            <p>Already a member? Sign in: <a href="login.aspx"><strong class="text-primary text-uppercase showSignInForm">Sign In</strong></a></p>
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
</body>
</html>
