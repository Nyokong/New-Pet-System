<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="New_Pet_System.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet-Pals | Sign-Up</title>
     <link rel="icon" type="image/jpg" href="favicon_io/favicon.ico"/>

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

        .container{
            width: 80%;
            margin: 50px auto;
        }

        .map{
            padding: 50px;
        }

        .contact-box{
            background: #fff;
            display: flex;
        }

        .contact-left{
            flex-basis: 60%;
            padding: 40px 60px;
        }

        .contact-right{
            flex-basis: 40%;
            padding: 40px;
            background-color: #1c00b5;
            color: #fff;
        }

        h1{
            margin-left: 25px;
            margin-bottom: 10px;
        }

        .container p{
            font-size: 16px;
            margin-left: 25px;
            margin-bottom: 40px;
        }

        .input-row{
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .input-row .input-group{
            flex-basis: 45%;
        }

        input{
            width: 100%;
            border: none;
            border-bottom: 1px solid #ccc;
            outline: none;
            padding-bottom: 5px;
        }

        textarea{
            width: 100%;
            border: 1px solid #ccc;
            outline: none;
            padding: 10px;
            box-sizing: border-box;
        }

        label{
            margin-bottom: 6px;
            display: block;
            color: #1c00b5;
        }

        button{
            background-color: #1c00b5;
            width: 100px;
            border: none;
            outline: none;
            color: #fff;
            height: 35px;
            border-radius: 30px;
            margin-top: 20px;
            box-shadow: 0px 5px 15px 0px rgba(28,0,181,0.3);
        }

        .contact-left h3{
            color: #1c00b5;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .contact-right h3{
            font-weight: 600;
            margin-bottom: 30px;
        }

        tr rd:first-child{
            padding-right: 20px;
        }

        tr td{
            padding-top: 20px; 
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
    <form id="form1" runat="server">
        <div class="form-container">
            
                    <div class="input-row">
                        <div class="input-group">
                            <label> Name: </label>
                            <input type="text" placeholder="Mr Moremi"/> 
                        </div>

                        <div class="input-group">
                            <label> Cellphone: </label>
                            <input type="text" placeholder="+27 67 864 0387"/> 
                        </div>
                    </div>

                    <div class="input-row">
                        <div class="input-group">
                            <label> Email: </label>
                            <input type="email" placeholder="olebogengmoremi84@gmail.com"/> 
                        </div>

                        <div class="input-group">
                            <label> Subject: </label>
                            <input type="text" placeholder="Vet Service"/> 
                        </div>
                    </div>

                    <label> Message </label>
                    <textarea rows="5" placeholder="Your Message"></textarea>

                    <button type="submit"> SEND </button>

               
        </div>
    </form>
</body>
</html>
