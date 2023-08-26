<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="New_Pet_System.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet-Pals | Sign-Up</title>
     <link rel="icon" type="img/jpg" href="favicon_client/favicon.ico"/>

    <style type="text/css">
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
            font-family: Arial, sans-serif;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
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

        .nav-menu{
            height: var(--nav-height ) ;
            width:auto;
            padding: 0px 20px;
            margin: 0px 20px;
            display: flex;
        }

        /* the nav menu ends here */

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

        /*the main div container*/
        .class-sign-up{
            display:flex;
            justify-content: center;
            height: auto;
            width: auto;
        }

        .class-sign-up #id-box-container{
            height: 100%;
        }

        .class-sign-up #id-box-container #id-signup-icon
        {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height:100px;
            width: auto;
            margin: 20px 0px 0px 0px;
        }

        .class-sign-up #id-box-container #id-signup-icon img{
            height: 40px;
            width: 40px;
        }

        .class-sign-up #id-box-container #id-signup-icon h1{
            margin: 0px;
        }

        .class-sign-up #id-box-container form{
            width: 500px;
            background-color: var(--BG-sign-up);
            /*border: solid 1px #3c404a2f;*/
            border-radius: 0px;
            color: #fff;
            padding: 25px;
            margin: 0px;
            display: flex;
            flex-direction:column;
            justify-content:  center;
            align-items: center;
            margin-bottom: 20px;
        }

        .class-sign-up #id-box-container form .fields{
            justify-content: center;
            font-size: 16px;
            height: 40px;
            width: 80%;
            padding: 0px 10px;
            border-radius: 50px;
            border: none;
            text-align:center;
        }

        .fields:focus{
            border: solid 1px #57d596;
        }

        .class-sign-up #id-box-container form #id-checkbox{
            width:70%;
            height: auto;
        }

        .class-sign-up #id-box-container form .btn-sign-up{
            height: auto;
            width: 90%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .class-sign-up #id-box-container form .btn-sign-up #id-btn-sign-up{
            height: auto;
            width: 100px;
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

        #btn-sign-up:hover{
            background-color: #4751c0;
            cursor: pointer;
        }

        .sign-in{
            font-size: 17px;
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
                <a href="default.aspx">Home </a>
                <a href="about.aspx"> About </a>
                <a href="faq.aspx"> FAQs </a>
                <a href="contact.aspx"> Contact Us</a>
            </nav>
        </div>

    </header>

    <div class="class-sign-up">
        <div id="id-box-container">
            <div id="id-signup-icon">
                 <img src="favicon_client/favicon.ico" alt="profile-image"/>
                 <h1> Create An Account </h1>
            </div>
            <form id="form" runat="server">

                <label for="name"> Name: </label><br/>
                <input class="fields" type="text" id="name" required="required" placeholder="Enter First Name: "/><br/>

                <label for="lastname"> Surname: </label><br/>
                <input class="fields" type="text" id="lastname" required="required" placeholder="Enter Last Name: "/><br/>

                <label for="phone"> Phone number: </label><br/>
                <input class="fields" type="tel" required="required" placeholder="Enter phone number: "/><br/>

                <label for="pass"> Password: </label><br/>
                <input class="fields" type="password" id="pass" required="required" placeholder="Enter Password: "/><br/><br/>

                <div id="id-checkbox">
                <input type="checkbox" id="agree" required="required"/><label style="font-size: 15px;" for="agree"> I accept to the <a href="google.com"> terms and conditions </a>  of use.</label><br/>
                <br/><br/>
                   </div>
                <div class="btn-sign-up">
                    <asp:Button ID="btn-sign-up" runat="server" type="submit" Text="Sign Up" />
                </div>
                <br/><br/>
                <div class="sign-in">
                    <p> No account?. <br/> Click <a href="signuo.aspx">here</a> To Create an account. </p>
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
