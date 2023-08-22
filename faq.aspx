<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="New_Pet_System.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Frequently Asked Questions</title>

    <link rel="icon" type="favicon_index" href="favicon_index/favicon_index.ico"/>

    <style type="text/css">

        body{
            font-family :Arial, Arial, Helvetica, sans-serif;
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
            position: absolute;
            bottom: 0;
            left: 0;
            z-index: 10;

            padding: 20px;
            background-color: #483D8B;
            height: 150px;
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
            <a href="about.aspx"> About </a>
            <a href="signin.aspx"> Sign In </a>
            <a href="faq.aspx" id="selected"> FAQs </a>
           <a href="contact.aspx"> Contact Us</a>
        </nav>
    </header>

    <form id="form1" runat="server">
        <div>
        </div>
    </form>

    <footer class="footer">
        <h4> © 2023 Pet-Pals Animal Clinic | All Rights Reserved | Privacy Policy | Cookie Policy | Terms & Conditions </h4>

        <div class="image-container">
            <img src="pukke.png" alt="North-West University (Potch)" width="100"/>
            <p> Team 7 - System Analyst Corp </p>
        </div>

    </footer>

</body>
</html>
