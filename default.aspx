<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="New_Pet_System._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet-Pals Animal Clinic</title>

    <link rel="icon" type="image/jpg" href="favicon_index/favicon.ico"/>

    <style type="text/css">

        body{
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            /*background-image: url('back.jp \g');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;*/
        }
        .auto-style1 {
            width: 305px;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style20 {
            width: 548px;
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

        #intro{
            display: flex;
            width: 1100px;
            margin: 100px auto;
            justify-content: space-between;
        }

        #intro h1{
            font-size: 30px;
        }

        #intro p{
            font-size: 18px;
            margin-bottom: 40px;
            color: #3c404A;
        }
        .b-come{
            background-color: #5762d5;
            color: white;
            padding: 10px 25px;
            font-size: 22px;
            font-weight: bold;
            border-radius: 15px;
            transition-duration: 0.3s;
            display: block;
            width: fit-content;
            animation: slide-up 1s;
            height: 70px;
            width: 250px;
        }

        #intro a:hover{
            cursor: pointer;
            background-color: #454fc1;
        }

        video{
            width: 40%;
            border-radius: 20px;
        }

        #middle1{
            height: 100%;
            background-color: #FF7F50;
        }

        #middle1 h1{
            text-align: center;
            color: black;
        }

        .gallery-container {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }

        .image_container {
            margin: auto;
            border-radius: 5px;
            width: 100%;
            overflow: hidden;
            white-space: nowrap; 
        }

        .image-content {
            display: inline-flex;
        }

        .pic {
            width: 95px;
            flex: 0 0 100%; 
            margin: 0 5px; 
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }

        .pic img {
            width: 75%; 
            height: auto; 
        }

        .arrow {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            font-size: 24px;
            cursor: pointer;
        }

        .scroll-container {
            height: 150%;
            background-image: url("back.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            overflow: hidden; 
        }

        .scroll-container h1{
            text-align: center;
            color: white;
        }

        .scroll-content {
            display: flex;
            justify-content: center; 
            animation: scroll 40s linear infinite;
        }

        .item {
            background-color: #5762d5;
            color: white;
            padding: 10px 25px;
            font-size: 22px;
            font-weight: bold;
            flex: 0 0 300px; 
            height: 200px; 
            margin: 10px;
            border: 1px solid #ddd;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 18px;
        }

        @keyframes scroll {
            0% {
            transform: translateX(-5);
            }
            100% {
            transform: translateX(-100%); 
            }
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

        .b-come{
            height: 80px;
            width: 200px;
            background-color: #454fc1;
            color: #F7C5CC;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
