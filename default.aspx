﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="/default.aspx.cs" Inherits="New_Pet_System._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet-Pals Animal Clinic</title>

   <link rel="icon" type="image/jpg" href="favicon_index/favicon_index.ico"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style type="text/css">
        :root {
          --nav_background : #1d1d1f;
          --nav-btn-bg-color: #4f4b4b;
          
          --nav-height : 70px;
        }

        body{
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            width: 100%;

        }
        .auto-style1 {
            width: 305px;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style20 {
            width: 548px;
        }

        header{
            width: 100%;
            display: flex;
            justify-content: space-between;
            /*box-shadow: 0px 10px 25px #000000;*/
            height: var(--nav-height);
            background-color: var(--nav_background);
        }

        <!--Super links-->
        a{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70px;
            background-color: #4b4b5c;
        }

        
        #intro{
            display: flex;
            width: 1100px;
            margin: 100px auto;
            justify-content: space-between;
        }

        #intro h1{
            font-size: 30px;
        }

        #intro p{
            font-size: 18px;
            margin-bottom: 40px;
            color: #3c404A;
        }
        .b-come{
            background-color: #5762d5;
            color: white;
            padding: 10px 25px;
            font-size: 22px;
            font-weight: bold;
            border-radius: 15px;
            transition-duration: 0.3s;
            display: block;
            width: fit-content;
            animation: slide-up 1s;
            height: 70px;
            width: 250px;
        }

        #intro a:hover{
            cursor: pointer;
            background-color: #454fc1;
        }

        #intro-video{
            width: 500px;
            height: auto;
        }

        #middle1{
            width: 100%;
            height: 500%;
            background-color: #FF7F50;
        }

        #middle1 h1{
            text-align: center;
            color: black;
        }

        .gallery-container {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }

        .image_container {
            margin: auto;
            border-radius: 5px;
            width: 100%;
            overflow: hidden;
            white-space: nowrap; 
        }

        .image-content {
            display: inline-flex;
        }

        .pic {
            width: 95px;
            flex: 0 0 100%; 
            margin: 0 5px; 
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }

        .pic img {
            width: 75%; 
            height: auto; 
        }

        .arrow {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            font-size: 24px;
            cursor: pointer;
        }

        .scroll-container {
            height: 350%;
            background-image: url("back.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            overflow: hidden; 
        }

        .scroll-container h1{
            text-align: center;
            color: white;
        }

        .scroll-content {
            display: flex;
            justify-content: center; 
            animation: scroll 40s linear infinite;
        }

        .item {
            background-color: #5762d5;
            color: white;
            padding: 10px 25px;
            font-size: 22px;
            font-weight: bold;
            flex: 0 0 300px; 
            height: 200px; 
            margin: 10px;
            border: 1px solid #ddd;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 18px;
        }

        /**
        @keyframes scroll {
            0% {
            transform: translateX(-5);
            }
            100% {
            transform: translateX(-100%); 
            }
        }*/


        .footer{
            padding: 20px;
            background-color: #483D8B;
            height: 180px;
            width: 100%;
            color: black;
            text-align: center;
            font-weight: bold;
        }

        .image-container {
            width: 100%;
            overflow: auto;
        }

        img{
            float: left;
            margin-right: 10px;
            height: 30px;
        }

        .footer p {
             margin: 0;
             font-size: 16px;
        }

        h4{
            margin-top: 20px;
            padding: 20px 25px;
            font-size: 16px;
        }

        .b-come{
            height: 80px;
            width: 200px;
            background-color: #454fc1;
            color: #F7C5CC;
        }

        .logo-icon{
            height: 50px;
            width: auto;
            margin: 2.5px 25px;
            display: flex;
        }

        .logo-icon img{
            height: 50px;
            width: 50px;
            margin: 5px;
        }

        .logo-icon #logo-name{
            color: white;
            width: 200px;
            display: flex;
            margin: 0px 10px;
        }

        .logo-icon #logo-name h1{
            margin: 15px 0px;
            display: table-cell;
            vertical-align: middle;
        }

        .main-nav{
            display: flex;
            padding: 10px;
            column-gap: 80px;
            padding: 20px;
            margin: auto;
        }

        .nav-menu{
            display: flex;
            height: var(--nav-height);
        }

        .main-nav a{
            text-decoration: none;
            font-size: 20px;
            color: white;
            font-family: Arial, Arial, Helvetica, sans-serif;
        }

        .main-nav a:hover{
            color: #e23b3b;
        }

        #selected{color: #fa8282;}

        .nav-menu .signup-signin-nav{
            height: var(--nav-height ) ;
            width:auto;
            padding: 0px 20px;
            margin: 0px 20px;
            display: flex;
        }

        .nav-menu .signup-signin-nav #id-sign-up{
            color: #fff;
            margin: auto;
            background-color: var(--nav-btn-bg-color);
            height: calc(var(--nav-height) - 30px);
            width: 100px;
            text-decoration: none;
            text-align: center;
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .nav-menu .signup-signin-nav #id-sign-up:hover{
            color: var(--nav-btn-bg-color);
            background-color: #fff;
        }


    </style>
</head>
<body style="height: 579px">
<form id="form1" runat="server">
    <header class="header-menu">
        <div class="logo-icon">
            <img src="icons8-pet-100.png" width="120" alt="Pet-Pals Logo"/>
            <div id="logo-name">
                <h1 >Pet Pals</h1>
            </div>
        </div>

        <div class="nav-menu">
            <nav class="main-nav">
                <!--<a href="default.aspx" id="selected">Home </a>-->
                <a href="about.aspx"> About </a>
                <a href="faq.aspx"> FAQs </a>
               <a href="contact.aspx"> Contact Us</a>
            </nav>
            <div class="signup-signin-nav">
                <a id="id-sign-up" href="signup.aspx"> Sign Up </a>
            </div>
        </div>

    </header>

    <section id="intro">
        <div id="id-tab-1" style="width: 50%;">
            <h1> Best Local Vet In Free-State </h1>
            <p> At Pet-Pals Animal Clinic, we're your local vet clinic committed to keeping pets healthy and tails wagging. With experienced care and a love for animals, we provide a stress-free haven where your furry companions' well-being is our top priority.</p>
            <a href="signup.aspx" class="b-come"> Become a Member </a>
        </div>

        <div id="id-tab-2">
            <video id="intro-video" controls="controls" autoplay="autoplay">
                <source src="vetVideo.MOV" />
                Your browser does not support the video tag.
            </video>
        </div>
    </section>

    <section id="middle1">
        <h1> What we do at Pet-Pals Clinic </h1>
      <div class="gallery-container">
        <div class="image_container">
          <div class="image-content">
            <div class="pic"><img src="doctor.jpg" alt="Image 1"/></div>
            <div class="pic"><img src="pet.jpg" alt="Image 2"/></div>
            <div class="pic"><img src="vet.jpg" alt="Image 3"/></div>
            <div class="pic"><img src="doc.jpg" alt="Image 4"/></div>
            <div class="pic"><img src="dog.jpg" alt="Image 5"/></div>
          </div>
        </div>
      </div>
    </section>

    <div class="scroll-container">
        <h1> Vision & Mission </h1>
        <div class="scroll-content">
            <div class="item">Advancing Animal Health and Well-being <br/> "Our vision is to lead in advancing the health and 
                well-being of animals through exceptional veterinary care, innovative treatments, and dedicated client education."</div>
            <div class="item">Championing Compassionate Care</div>
            <div class="item">Elevating the Human-Animal Bond</div>
            <div class="item">Pioneering Preventive Medicine</div>
            <div class="item">Setting Standards of Excellence</div>
            <div class="item">Empowering Pet Owners</div>
            <div class="item">Community-Centered Animal Care</div>
        </div>
    </div>

    <footer class="footer">
        <h4> © 2023 Pet-Pals Animal Clinic | All Rights Reserved | Privacy Policy | Cookie Policy | Terms & Conditions </h4>

        <div class="image-container">
            <img src="pukke.png" alt="North-West University (Potch)" width="150"/>
            <p> Team 7 - System Analyst Corp </p>
        </div>

    </footer>

</form>

    <script>
        var myVideo = document.getElementById("intro-video");


        $(document).ready(function () {
            var myVideo = document.getElementById("intro-video");

            $.ajax({
                url: "/default.aspx",
                success: function (data) {
                    //$(myVideo).html(data);

                    if (myVideo.paused) {
                        console.log("The video is paused");
                        //myVideo.play();
                    } else {
                        console.log("The video is playing");
                    }
                }
            });

        });

    </script>
</body>
</html>
