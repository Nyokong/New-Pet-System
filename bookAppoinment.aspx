﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookAppoinment.aspx.cs" Inherits="New_Pet_System.bookAppoinment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Book Appointment </title>
    <link rel="icon" type="image/jpg" href="favicon_book/favicon.ico"/>

    <style>
    
        :root {
            --nav_background : #333333;
            --nav-btn-bg-color: #4f4b4b;
            --off-white: #f3f3f3;
            --BG-sign-up: #333333;
          
            --nav-height : 70px;
            --tab-height: 450px;

            --btn-BG-off-white: #f2f2f2;
            --btn-FR-white: #fff;
            --btn-FR-black: #000;

        }

        *{
            margin: 0;
            padding: 0;
        }

        body{
            padding: 0;
            font-family:Arial, Arial, Helvetica, sans-serif;
            margin: 0;
            font-size: 14px;
        }

        .bf-container h1{
            font-size: 40px;
            color: #fff;
        }

        p{
            color: #fff;
        }

        a{
            text-decoration: none;
            color: green;
        }

        .bf-container{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            min-height: 100vh;
            overflow-y: auto;
            padding: 20px 16px;
            background-color: #1d2228;
        }

        /* the navigation menu starts here */
        header{
            width: 100%;
            display: flex;
            justify-content: space-between;
            height: var(--nav-height);
            background-color: var(--nav_background);
        }

        .main-nav{
            display: flex;
            column-gap: 80px;
            padding: 20px;
            margin: 0px 30px;
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
        
        .bf-body{
            width: 700px;
            background-color: #1d1d2c;
        }

        .bf-head{
            text-align: center;
        }
        
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
                <a href="default.aspx">Home </a>
                <a href="about.aspx"> About </a>
                <a href="faq.aspx"> FAQs </a>
                <a href="contact.aspx"> Contact Us</a>
            </nav>
        </div>

    </header>


    <div class="bf-container">

        <div class="bf-body">
            <div class="bf-head">
                <h1> Appointment Booking Form </h1>
                <p> |-Let's start to book now -| </p>
            </div>

            <form class="bf-body-box">

                <div class="bf-row">

                    <div class="bf-col-6">
                        <p> Your Name </p>
                        <input type="text" name="fname" id="f_name"/>
                    </div>

                    <div class="bf-col-6">
                        <p> Email Address </p>
                        <input type="email" name="email" id="email"/>
                    </div>

                </div>

                <div class="bf-row">

                    <div class="bf-col-6">
                        <p> Select Date </p>
                        <input type="date" name="date" id="date" />
                    </div>

                    <div class="bf-col-6">
                        <p> Select Number </p>
                        <select name="s-select">
                            <option> Select Number</option>
                            <option value="1"> 1 </option>
                            <option value="2"> 2 </option>
                            <option value="3"> 3 </option>
                        </select>

                    </div>

                </div>

                <div class="bf-row">

                    <div class="bf-col-3">
                        <p> Your Name </p>
                        <input type="submit" value="submit" id="fname"/>
                    </div>

                </div>

            </form>
        </div>
    </div>


    <form id="form1" runat="server">
        <div>
        </div>
    </form>

    <footer class="footer">
        <h4> © 2023 Pet-Pals Animal Clinic | All Rights Reserved | Privacy Policy | Cookie Policy | Terms & Conditions </h4>

        <div class="image-container">
            <img src="pukke.png" alt="North-West University (Potch)" width="150"/>
            <p> Team 7 - System Analyst Corp </p>
        </div>

    </footer>

</body>
</html>
