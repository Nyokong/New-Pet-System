<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="New_Pet_System.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Frequently Asked Questions</title>

    <link rel="icon" type="favicon_index" href="favicon_index/favicon_index.ico"/>
    <linkrel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

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

        body {
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
            margin-top: 638px;
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
        *
        {
            padding:0;
            margin: 0;
            box-sizing: border-box;
            font-family: "Roboto",sans-serif;
        }
        .accordion
        {
            background-color: white;
            color: rgba(0,0,0, 0.8);
            cursor: pointer;
            font-size: 1.2rem;
            width: 100%;
            padding: 2rem 2.5rem;
            border: none;
            outline: none;
            transition: 0.4s;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-weight: bold;
        }
       .accordion i 
       {
           font-size: 1.6rem;
           
       }
       .active,
       .accordion::after hover
       {
           background-color: white;

       }
       .panel
       {
           padding: 0 18px;
           background-color: white;
           overflow: hidden;
           background-color: white;
           padding: 0 2rem 2.5rem;
       }
       .panel p
       {
           color: rgba(0,0,0,0.7);
           font-size: 1.2rem;
           line-height: 1.4;
       }
       .FAQ
       {
           border: 1px solid rgba(0,0,0,0.1);
           margin: 10px 0;
       }
       .FAQ.active
    </style>
</head>
<body>
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
                <a href="faq.aspx" id ="selected"> FAQs </a>
               <a href="contact.aspx"> Contact Us</a>
            </nav>
            <div class="signup-signin-nav">
                <a id="id-sign-up" href="signup.aspx"> Sign Up </a>
            </div>
        </div>

    </header>

    <div class="FAQ active">

        <button class ="accordion">
            What is the Pet-Pals Clinic System?
            <i class="fa fa-paw fa-chevron-down" ></i>
        </button>
        <div class="panel">
            <p>
                The Pet-Pals Clinic System is a comprehensive software solution 
                designed to streamline and enhance the operations of veterinary 
                clinics and pet care facilities. It offers features like appointment 
                scheduling, medical record management, billing, and more.
            </p>
        </div>

    </div>
    <div class ="faq">
        <button class =" accordion">
            How can I schedule an appointment for my pet?
             <i class="fa fa-paw fa-chevron-down" ></i>
        </button>
        <div class ="panel">
            <p>
            Scheduling an appointment is easy! You can either call our clinic directly
            or use our online portal to select a suitable date and time for your pet's visit. 
            The system will guide you through the process.
            </p>
        </div>

    </div>

    
        
    

    <footer class="footer">
        <h4> © 2023 Pet-Pals Animal Clinic | All Rights Reserved | Privacy Policy | Cookie Policy | Terms & Conditions </h4>

        <div class="image-container">
            <img src="pukke.png" alt="North-West University (Potch)" width="100px"/>
            <p> Team 7 - System Analyst Corp </p>
        </div>

    </footer>

</body>
</html>
