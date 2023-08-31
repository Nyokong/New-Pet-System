<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookAppoinment.aspx.cs" Inherits="New_Pet_System.bookAppoinment" %>

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
            color: black;
        }

        .bf-container h1{
            font-size: 36px;
            color: #fff;
            padding: 19px 10px;
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
            justify-content: left;
            align-items: flex-start;
            width: 100%;
            min-height: 100vh;
            overflow-y: auto;
            padding: 30px 0px;
            background-image: url("ntja.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            /*background-color: #1d2228;*/
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

        .bf-col-6 {
            margin-bottom: 5px;
            margin: 2px 4px;
            padding: 5px 8px;
        }

        .bf-col-3 {
           margin: 2px 4px;
           padding: 5px 8px;
        }

        #selected{color: #fa8282;}

        .bf-row {
           font-size: 18px;
           display: flex;
           flex: 3;
        }
        
        .bf-col-6 p{
            margin: 5px 0px;
        }

        .bf-col-3 {
            padding: 30px;
            margin-right: 80px;
        }

        .button{
            color: white;
            background-color: #5762D5;
            font-size: 18px;
            margin-left: 115px;
            width: 150px; 
            height: 50px; 
            border-radius: 10px;
        }

        .button:hover{
            background-color: #4751c0;
            cursor: pointer;
        }

        .bf-col-6 input {
            padding: 0px 5px;
            font-size: 14px;
            height: 20px;
            margin-right: 60px;
            border-radius: 10px;
        }
        
        .bf-body{
            position:absolute; 
            left:80px; 
            margin: 20px;
            width: 800px;
            border-block-color: #e23b3b;
            border-end-start-radius: 1px 2px;
        }

        .bf-head{
            margin: 0px;
            padding: 20px 10px;
            margin-left: 50px;
        }

        .bf-head p {
            color: orangered;
            font-size: 18px;
            margin-left: 140px;
        }

        .bf-body-box{
            margin: 0px 10px;
            padding: 40px;
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
                <p> |  Let's start to book now  | </p>
            </div>

            <form class="bf-body-box" runat="server">

                <div class="bf-row">

                    <div class="bf-col-6">
                        <p> Your Name </p>
                        <asp:TextBox runat="server" class="bf-col-6" type="text" name="fname" required="required" placeholder="Name" id="f_name" OnTextChanged="f_name_TextChanged"/>
                    </div>

                    <div class="bf-col-6">
                        <p> Email Address </p>
                        <asp:TextBox runat="server" CssClass="bf-col-6" type="email" required="required" placeholder="Email Address" name="email" id="email"/>
                    </div>

                </div>

                <div class="bf-row">

                    <div class="bf-col-6">
                        <p> Pet Species </p>
                        <asp:TextBox runat="server" CssClass="bf-col-6" type="text" required="required" placeholder="Pet Species" name="pet" id="pet"/>
                    </div>

                    <div class="bf-col-6">
                        <p> Choose Doctor </p>
                        <asp:TextBox runat="server" CssClass="bf-col-6" type="text" required="required" name="doc" id="doc"/>
                    </div>

                </div>

                <div class="bf-row">

                    <div class="bf-col-6">
                        <p> Select Date: </p>
                        <input type="date" name="date" required="required" id="date" />
                    </div>

                    <div class="bf-col-6">
                        <p> Choose the time: </p>
                        <input type="time" name="time" required="required" id="time" />
                    </div>

                </div>

                <div class="bf-row">

                    <div class="bf-col-6">
                        <p> Description: </p>
                        <textarea rows="5" cols="59" required="required" placeholder="Your Description"></textarea>
                    </div>

                </div>

                <div class="bf-row">

                    <div class="bf-col-3">
                        <asp:Button runat="server" class="button" type="submit" Text="Book" id="submit" />
                    </div>

                </div>

            </form>
        </div>
    </div>

    <footer class="footer">
        <h4> © 2023 Pet-Pals Animal Clinic | All Rights Reserved | Privacy Policy | Cookie Policy | Terms & Conditions </h4>

        <div class="image-container">
            <img src="pukke.png" alt="North-West University (Potch)" width="150"/>
            <p> Team 7 - System Analyst Corp </p>
        </div>

    </footer>

</body>
</html>
