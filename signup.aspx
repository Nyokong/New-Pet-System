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
            background-image: linear-gradient(to right, #c6ffdd, #fbd786, #f7797d);
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            font-size: 14px;
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

        form{
            width: 400px;
            background-color: #EEEFF1;
            border: solid 1px #3c404a2f;
            border-radius: 15px;
            color:#3d414a;
            padding: 25px;
            margin: 50px auto;
        }

        .fields:focus{
            border: solid 1px #57d596;
        }

        .fields{
            width: 94%;
            font-size: 16px;
            padding: 5px 10px;
            border-radius: 10px;
            border: none;
            margin-bottom: 17px;
        }

        form a{
            color: #5762D5;
            text-decoration: none;
            font-size: 16px;
        }

        button{
            width: 100%;
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

    <h1> Signup </h1>

    <form id="form1" runat="server">

        <label for="name"> Full name: </label><br/>
        <input class="fields" type="text" id="name" required="required"/><br/>

        <label for="email"> Email: </label><br/>
        <input class="fields" type="email" id="email" required="required"/><br/>

        <label for="phone"> Phone number: </label><br/>
        <input class="fields" type="tel" required="required"/><br/>

        <label for="pass"> Password: </label><br/>
        <input class="fields" type="password" id="pass" required="required"/><br/>

        <input type="checkbox" id="agree" required="required"/><label for="agree"> I accept the <a href="google.com"> terms of use. </a></label><br/>

        <br/><br/>
        <button type="submit"> Signup</button>
            
    </form>
</body>
</html>
