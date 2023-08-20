<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="New_Pet_System.faq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Frequently Asked Questions (FAQs)</title>

    <link rel="icon" type="image/jpg" href="favicon_io/favicon.ico"/>

    <style type="text/css">

        body{
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
        }

        header{
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

    </style>
</head>
<body>
    <header>
        <!--<img src="" width="120" alt="Pet-Pals Logo"/>-->

        <nav class="main-nav">
            <!--<a href="default.aspx"> Home </a>
            <a href="about.aspx"> About </a>
            <a href="contact.aspx"> Sign In </a>
            <a href="faq.aspx" id="selected"> FAQs </a>
            <a href="contact.aspx"> Contact Us</a>-->
        </nav>

    </header>
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
