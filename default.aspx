<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="/default.aspx.cs" Inherits="New_Pet_System._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet-Pals Animal Clinic</title>

   <link rel="icon" type="image/jpg" href="favicon_index/favicon_index.ico"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style type="text/css">
        :root {
          --nav_background : #333333;
          --nav-btn-bg-color: #4f4b4b;
          --off-white: #f3f3f3;
          
          --nav-height : 70px;
          --tab-height: 450px;

          --btn-BG-off-white: #f2f2f2;
          --btn-FR-white: #fff;
          --btn-FR-black: #000;
        }

        body{
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            width: 100%;
            background-color: #eaeaea;
        }
        
        <!--Super links-->
        a{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70px;
            background-color: #4b4b5c;
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
            background-color: var(--nav_background);
            height: 180px;
            width: auto;
            color: #fff;
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

        /* the navigation menu starts here */
        header{
            width: 100%;
            display: flex;
            justify-content: space-between;
            /*box-shadow: 0px 10px 25px #000000;*/
            height: var(--nav-height);
            background-color: var(--nav_background);
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

        /* the nav menu ends here */

        #intro{
            width: auto;
            padding: 10px 40px;
            height: auto;
            display: flex;
            margin: 20px 0px;
        }

        #intro #id-tab-1{
            background-color: var(--nav_background);
            height: var(--tab-height);
            width: 50%;
            color: #fff;
            padding: 20px 40px;
        }

        #intro #id-tab-1 h1{
            font-size: 70px;
            margin: 20px 0px 5px 0px;
        }

        #intro #id-tab-1 #id-intro-text{
            margin: 120px 0px 10px 0px;
        }

        #intro #id-tab-1 #id-become-member{
            color:  var(--btn-FR-black);
            margin: 40px 0px 20px 0px;
            background-color: var(--btn-BG-off-white);
            height: 100px);
            width: 150px;
            padding: 20px 40px;
            text-decoration: none;
            text-align: center;
            border-radius: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #intro #id-tab-1 #id-become-member:hover{
            color: #fff;
            background-color: #5aae42;
        }

        #intro #id-tab-2{
            background-color: var(--off-white);
            height: var(--tab-height);
            width: 50%;
            padding: 20px;
            display: flex;
            overflow-x: scroll;
            scroll-snap-type: x mandatory;
        }

        #intro #id-tab-2 h1{
            font-size: 70px;
            margin: 5px 0px 0px 0px;
        }

        #intro #id-tab-2 h2{
            font-size: 20px;
            margin: 5px 0px 20px 0px;
        }

        #intro #id-tab-2 .class-box-contained{
            font-size: 70px;
            display: flex;
            min-width: 100%;
            justify-content: center;
            align-items: center;
            height: 100%;
            scroll-snap-align: center;
        }

        #id-middle-1{
            width: auto;
            height: auto;
            padding: 5px 40px;
            background-color: var(--off-white);
        }

        #id-middle-1 .class-divider h1{
            color: #fff;
            font-size: 70px;
            margin: 0px 0px 10px 0px;
        }

        #id-middle-1 .class-divider{
            width: auto;
            height: auto;
            padding: 40px;
            background-color: var(--nav_background);
        }

        #id-middle-1 .class-divider .class-gallery-container{
            height: 200px;
            width: auto;
            display: flex;
        }

        #id-middle-1 .class-divider .class-gallery-container .class-image-tab{
            height: 200px;
            width: 200px;
            margin: 0px 10px;
            background-color: var(--nav-btn-bg-color);
        }
        .auto-style2 {
            color: #FFFFFF;
            font-weight: bold;
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
                <a href="about.aspx"> About </a>
                <a href="faq.aspx"> FAQs </a>
               <a href="contact.aspx"> Contact Us</a>
            </nav>
            <div class="signup-signin-nav">
                <a id="id-sign-up" href="signin.aspx"> Sign In </a>
            </div>
        </div>

    </header>

    <section id="intro">
        <div id="id-tab-1" style="width: 50%;">
            <h1> Best Local Vet </h1>
            <h3> In the Free-State </h3>
            <p id="id-intro-text"> At Pet-Pals Animal Clinic, we're your local vet clinic committed to keeping pets healthy and tails wagging. With experienced care and a love for animals, we provide a stress-free haven where your furry companions' well-being is our top priority.</p>
            <a id="id-become-member" href="signup.aspx"> Become a Member </a>
        </div>

        <div id="id-tab-2">
            <div class="class-box-contained">1</div>
            <div class="class-box-contained">2</div>
            <div class="class-box-contained">3</div>
           <!-- <h1>Medicine</h1>
            <h2>Is Love <3</h2>
            <div id="id-intro video">
                 <video id="intro-video" controls="controls" autoplay="autoplay">
                    <source src="vetVideo.MOV" />
                    Your browser does not support the video tag.
                </video>
            </div>-->
        </div>
    </section>

    <section id="id-middle-1">
        <div class="class-divider">
          <h1>Content</h1>

          <div class="class-gallery-container">
              <div class="class-image-tab"><!--<img src="doctor.jpg" alt="Image 1"/>--></div>
              <div class="class-image-tab"><!--<img src="doctor.jpg" alt="Image 1"/>--></div>
              <div class="class-image-tab"><!--<img src="doctor.jpg" alt="Image 1"/>--></div>
              <div class="class-image-tab"><!--<img src="doctor.jpg" alt="Image 1"/>--></div>
              <div class="class-image-tab"><!--<img src="doctor.jpg" alt="Image 1"/>--></div>
          </div>
        </div>
    </section>

</form>
    <p class="auto-style2">
        /=</p>
</body>
</html>
