<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="New_Pet_System.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <title>Pet-Pals Animal Clinic</title>
    <link rel="icon" type="image/jpg" href="favicon_index/favicon_index.ico"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <style type="text/css">
        :root {
            /* background */
            --bg-off : #f3f3f3;

            /* front */
            --fr-white: #ffffff;

            /* texts */
            --txt-black: #1a1a1a;

            /* sizes */
            --sz-top-header: 25px;
        }
        body{
            background-color: var(--bg-off);
            width: 100%;
        }

        /* top header */
        .top-header {
            height: var(--sz-top-header);
            background-color: var(--fr-white);
            width: 100%;
            display:flex;
            justify-content: left;
            align-items: center;
            font-size: 10px;
            color: var(--txt-black);
        }

        .top-header p{
            color: black;
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
            height: 100px;
            width: 100%;
            background-color: var(--fr-white);
            color: var(--txt-black);
        }

        header .logo-icon{
            height: auto;
            width: 30%;
            display: flex;
            di
        }

    </style>

</head>
<body>
    <div class="top-header">
        <div class="contact-header">
            <p> Contact Details </p>
            <p>Call : 012 232 3243</p>
            <p>Email : info@petpals.com</p>
        </div>
    </div>

    <header>
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
            <div class="signup-signin-nav">
                <a id="id-sign-up" href="signin.aspx"> Sign In </a>
            </div>
        </div>
    </header>

    <!-- bootsrap -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
