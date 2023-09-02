<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="New_Pet_System.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet-Pals | Sign-Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="icon" type="image/jpg" href="favicon_index/favicon_index.ico"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <style type="text/css">
        :root {
            /* background */
            --bg-off : #f3f3f3;
            --bg-black: #25252a;
            --bg-tint: #787878;

            /* front */
            --fr-white: #ffffff;

            /* texts */
            --txt-black: #1a1a1a;
            --txt-hover: rgb(219 135 98 / 0.70);
            --txt-white: #fff;
            --txt-hover-dark: #657283;

            /* sizes */
            --sz-top-header: 25px;
            --sz-hero: 400px;
        }

        *{
            margin: 0;
            padding: 0;
        }

        body{
            background-color: var(--bg-off);
            width: auto;
            scroll-behavior: smooth;
            scroll-snap-type: none;
        }

        .main-body{
            width: 80%;
            margin: 0px 10%;
        }

         /* top header */
        .top-header {
            height: var(--sz-top-header);
            width: 100%;
            display:flex;
            align-items: center;
            font-size: 10px;
            background-color: var(--bg-black);
            color: var(--txt-white);
        }

        .top-header p{
            color: var(--txt-white);
            margin: 0px 20px;
            width: auto;
            font-weight: bold;
        }

        .top-header .contact-header{
            display: flex;
            align-items: center;
            flex-direction: row;
            justify-content: center;
        }

        
        /* main nav */
        header{
            height: auto;
            width: 100%;
            background-color: var(--bg-black);
            color: var(--txt-white);
        }

        header #id-logo-link{
            height: auto;
            display: flex;
            flex-direction: row;
            justify-content: center;
        }

        header #id-logo-link:hover{
            color: var(--txt-hover);
        }

        header #id-logo-link i{
            height: 30px;
            width: 30px;
            margin: 0px 10px;
            font-size: 30px;
            color: var(--txt-white);
        }

        header .nav-link{
            height: 40px;
            width: auto;
            margin: 0px 40px;
            border-radius: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

         header #link_signin:hover{
            color: var(--txt-white);
            background-color: var(--txt-hover-dark);
        }

        header #id-logo-link h1{
            height: 30px;
            font-size: 25px;
            width: auto;
            color: var(--txt-white);
            display:flex;
            justify-content: center;
            align-items: center;
        }

        header #id-nav-links{
            margin: 0px 20px;
            color: var(--txt-white);
        }

        header #id-nav-links a{
            margin: 0px 20px;
            color: var(--txt-white);
        }

        .main-nav a:hover{
            color: #fb6376;
        }

        #selected{color: #5762D5}

        /*the main div container*/
        .class-sign-up{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: auto;
            width: 100%;
            margin-top: 20px;
        }

        .class-sign-up #form
        {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height:auto;
            width: 600px;
        }

        .class-sign-up #form .fields{
            justify-content: center;
            font-size: 16px;
            height: 40px;
            width: 100%;
            padding: 0px 10px;
            border-radius: 50px;
            border: none;
            text-align:center;
        }

        .fields:focus{
            border: solid 1px #57d596;
        }

        #id-checkbox{
            font-size: 16px;
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

        .form-group{
            margin: 10px 0px;
            width: 300px;
        }

        label{
            font-size: 21px;
            padding: 5px;
        }

        #form a{
            color: #5762D5;
            text-decoration: none;
            font-size: 18px;
        }

        #btnSubmit{
            width: 200px;
            height: 55px;
            background-color: #5762D5;
            border: none;
            border-radius: 40px;
            color: white;
            padding: 10px 0;
            font-size: 16px;
            font-weight: bold;
        }

        /*The hover link */
        #btnSubmit:hover{
            background-color: #4751c0;
            cursor: pointer;
        }

        .footer{
            padding: 20px;
            background-color: var(--bg-black);
            height: 180px;
            width: auto;
            color: var(--fr-white);
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

        .auto-style1 {
            height: 86px;
            font-size: x-large;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 22px;
            width: 414px;
        }
        .auto-style4 {
            width: 414px;
        }


    </style>
</head>
<body>
   <div class="top-header">
        <div class="main-body">
            <div class="contact-header">
                <p> Contact Details </p>
                <p>Call : 012 232 3243</p>
                <p>Email : info@petpals.com</p>
            </div>
        </div>
    </div>
     <header>
        <div class="main-body">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
          <div class="container-fluid">
            <a class="navbar-brand" id="id-logo-link" href="default.aspx">
                <i class='bx bxs-dog'></i>
                <h1 >Pet Pals</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"><i class='bx bx-menu-alt-right' ></i></span>
            </button>
              
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav" id="id-nav-links">
                  <asp:HyperLink ID="link_signup" CssClass="nav-link" runat="server" NavigateUrl="~/signup.aspx">Sign Up</asp:HyperLink>
                <a class="nav-link" href="faq.aspx">FAQs</a>
                <a class="nav-link" href="contact.aspx">Contact</a>
                <a class="nav-link" href="about.aspx"">About Us</a>
              </div>
            </div>
          </div>
        </nav>
        </div>
    </header>

    <div class="class-sign-up">
        <form id="form" runat="server">
            <div class="row">
                <div class="col">
                  <label for="name"> Name: </label>
                  <asp:TextBox runat="server" class="fields form-control" type="text" ID="txtFirst_name" required="required" placeholder="Enter First Name: " OnTextChanged="First_name_TextChanged"/> 
                </div>
                <div class="col">
                  <label for="lastname"> Surname: </label><br/>
                  <asp:TextBox runat="server" class="fields form-control" type="text" ID="txtLastname" required="required" placeholder="Enter Last Name: " OnTextChanged="Lastname_TextChanged1"/>
                </div>
            </div>
            <div class="form-group">
                <label for="pass"> Password: </label><br/>
                <asp:TextBox runat="server" class="fields form-control" type="password" ID="txtPassword" required="required" placeholder="Enter Password: " OnTextChanged="Password_TextChanged"/>
            </div>
            <div class="form-group">
                <label for="phone"> Email: </label><br/>
                <asp:TextBox runat="server" class="fields form-control" type="tel" required="optional" placeholder="Enter email: " ID="txtEmail" OnTextChanged="Email_TextChanged"/>
            </div>
            <div class="form-group">
                <label for="phone"> Phone number: </label>
                <asp:TextBox runat="server" class="fields" type="tel" required="optional" placeholder="Enter phone number: " ID="txtPhone" OnTextChanged="Phone_TextChanged"/>
            </div>
            <div id="id-checkbox">
                <asp:CheckBox runat="server" type="checkbox" ID="cbbAgree" AutoPostBack="true" required="required" 
                    OnCheckedChanged="cbbAgree_CheckedChanged1"/><label style="font-size: 15px;" for="agree"> I accept to the <a href="google.com"> terms and conditions </a>  of use.</label><br/>
                </div>
            <div class="btn-sign-up">
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn-sign-up" text="Sign Up" OnClick="Signup_Click"/> 
            </div>
            <br/><br/>
            <div class="sign-in">
                <p> Already have an account ? <br/> Click <a href="signin.aspx">here</a> to login </p>
            </div>
            
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
