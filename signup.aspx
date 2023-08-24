<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="New_Pet_System.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet-Pals | Sign-Up</title>
     <link rel="icon" type="img/jpg" href="favicon_client/favicon.ico"/>

    <style type="text/css">

        *{
            margin: 0;
            padding: 0;
        }

        body{
            font-family: Arial, sans-serif;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            font-size: 14px;
        }

        header{
            display: flex;
            padding: 0 5%;
            justify-content: space-between;
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

        h1 {
            text-align: center;
            padding: 5px;
            margin-top: 45px;
            margin-bottom: 8px;
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

        form{
            width: 500px;
            background-color: #EEEFF1;
            border: solid 1px #3c404a2f;
            border-radius: 20px;
            color: #3d414a;
            padding: 25px;
            margin: 50px auto;
        }

        .fields:focus{
            border: solid 1px #57d596;
        }

        .fields{
            width: 75%;
            justify-content: center;
            font-size: 16px;
            padding: 5px 10px;
            border-radius: 10px;
            border: none;
            margin-bottom: 17px;
        }

        label{
            font-size: 21px;
            padding: 5px;
        }

        form a{
            color: #5762D5;
            text-decoration: none;
            font-size: 18px;
        }

        button{
            width: 70%;
            height: 55px;
            background-color: #5762D5;
            border: none;
            border-radius: 10px;
            color: white;
            padding: 10px 0;
            font-size: 16px;
            font-weight: bold;
        }

        button:hover{
            background-color: #4751c0;
            cursor: pointer;
        }

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
    <header class="header-menu">
        <div class="logo-icon">
            <img src="icons8-pet-100.png" width="120" alt="Pet-Pals Logo"/>
            <div id="logo-name">
                <h1 >Pet Pals</h1>
            </div>
        </div>

        <div class="nav-menu">
            <nav class="main-nav">
                <a href="default.aspx" id="selected">Home </a>
                <a href="about.aspx"> About </a>
                <a href="faq.aspx"> FAQs </a>
                <a href="contact.aspx"> Contact Us</a>
            </nav>
        </div>

    </header>

      <div class="class-sign-up">
            <div id="id-signup-icon">
                <img src="favicon_client/favicon.ico" alt="profile-image"/>
             <h1> Create An Account </h1>
        </div>
    

        <form id="form" runat="server">

            <label for="name"> Full name: </label><br/>
            <input class="fields" type="text" id="name" required="required"/><br/>

            <label for="email"> Email: </label><br/>
            <input class="fields" type="email" id="email" required="required"/><br/>

            <label for="phone"> Phone number: </label><br/>
            <input class="fields" type="tel" required="required"/><br/>

            <label for="pass"> Password: </label><br/>
            <input class="fields" type="password" id="pass" required="required"/><br/>

            <input type="checkbox" id="agree" required="required"/><label for="agree"> I accept to the <a href="google.com"> terms and conditions </a>  of use.</label><br/>

            <br/><br/>
            <center>
                <button type="submit"> Sign Up </button>
            </center>
            
        </form>
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
