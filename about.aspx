<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="New_Pet_System.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>

    <link rel="icon" type="favicon_index" href="favicon_index/favicon_index.ico"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style type="text/css">

        body{
            font-family:Arial, Arial, Helvetica, sans-serif;
            margin: 0;
        }

        header{
            width: 100%;
            display: flex;
            padding: 0 5%;
            justify-content: space-between;
            box-shadow: 0px 10px 25px #000000;
            height: 80px;
            background-color: #F7C5CC;
        }
            

        .main-nav{
            display: flex;
            padding: 10px;
            column-gap: 80px;
            padding: 20px;
            margin: auto;
        }

        a{
            text-decoration: none;
            font-size: 20px;
            color: #000000;
            font-family: Arial, Arial, Helvetica, sans-serif;
        }

        .main-nav a:hover{
            color: #fb6376;
        }

        #selected{color: #5762D5}

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
            margin:5px;
            display: block;
            vertical-align: central;
        }

        .logo-icon img{
            height: 50px;
            width: 50px;
            margin: 5px;
        }

        .logo-icon #logo-name{
            color: white;
            width: 200px;
            margin-left: 3px;
            margin-right: 3px;
            text-align: center;

        }
        .about-us{
            padding: 80px 0px;
        }

        /*the main about page - container*/

        .container{
            display: flex;
            align-items: center;
            justify-content: center;
            width: auto;
            padding: 20px;
            flex-direction: row;
        }
        .flex{
            max-width: 50%;
            padding: 20px;
        }
        .about-us h2{
            font-size: 45px;
            colour:#333;
        }
        .about-us h3{
            font-size: 22px;
            color:#888;
        }
        .about-us p{
            font-size: 18px;
            line-height: 1.5;
            color: #555;
        }
        .about-us img{
            display: block;
            height: auto;
            margin: 0 auto;
        }

        

    </style>
</head>
<body>
     <header>
       <div class="logo-icon">
            <img src="icons8-pet-100.png" width="120" alt="Pet-Pals Logo"/>
            <h1 id="logo-name">
                Pet Pals
            </h1>
        </div>

        <nav class="main-nav">
            <a href="default.aspx" >Home </a>
            <a href="about.aspx" id="selected"> About </a>
            <a href="signin.aspx"> Sign In </a>
            <a href="faq.aspx"> FAQs </a>
           <a href="contact.aspx"> Contact Us</a>
        </nav>
    </header>

    <div class="about-us">
        <div class="container">
            <div class="flex">
                <h2>About Us</h2>
                <h3>Discover Our Team's Story</h3>
                <p>Reece,Break inside your conservatory, leave it desecrated, yeah
                Take away your crown and the throne with all of its emerald stones
                Diamonds, rubies and gold
                Killin' your soldiers, I'm in your chambers burnin' the scrolls
                Destroyin' everythin' you own, I'm like Achilles in Troy
                They can't fuck with the boy
                P2 comin soon, it's time to silence the noise</p>
                <div class="social-links">
                    <a href=""><i class="fab fa-facebook-f"></i></a>
                    <a href=""><i class="fab fa-twitter"></i></a>
                    <a href=""><i class="fab fa-instagram"></i></a>
                </div>
                <a href="" class="btn">Learn More</a>
            </div>
            <div class="flex">
                <img src="Reece.jpg">
            </div>
        </div>
    </div>

    <footer class="footer">
        <h4> © 2023 Pet-Pals Animal Clinic | All Rights Reserved | Privacy Policy | Cookie Policy | Terms & Conditions </h4>

        <div class="image-container">
            <img src="pukke.png" alt="North-West University (Potch)" width="100"/>
            <p> Team 7 - System Analyst Corp </p>
        </div>
        <h1> new Changes guys </h1>
    </footer>
    </body>
</html>
