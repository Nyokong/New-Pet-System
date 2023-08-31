<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="New_Pet_System.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <title>Admin Dashboard</title>

    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins',sans-serif;
        }
        body{
            min-height: 100vh;

        }
        a{
            text-decoration: none;
        }     
        li{
            list-style: none;
        }
        h1,h2{
            color: white;
        }
        .btn{
            background: #f05462;
            color:white;
            padding: 5px 10px;
            text-align: center;
        }
        .btn hover{
            color:#f05462;
            background:white;
            padding: 3px 8px;
            border: 2px solid #f05462;

        }

        .side-menu{
            position:fixed;
            background:  #0094ff;
            width: 15vw;
            min-height: 100vh;
            display: flex;
            flex-direction:column;
        }
        .side-menu .brand-name{
            height: 10vh;
            display: flex;
            align-items:center;
            justify-content: center;
        }
        .side-menu li{
            font-size: 20px;
            padding: 10px 30px;
            color: white;
            display:flex;
            align-items:center;
        }
        .side-menu li:hover{
            background: white;
            color:red;

        }
        .container{
            position:absolute;
            right:0;
            width:80vw;
            height:80vh;

        }
        .container .header{
            position: fixed;
            top:0;
            right:0;
            width: 80vw;
            height: 10vh;
            background: white;
            display: flex;
            align-items: center;
            justify-content:center;
            box-shadow: 0 4px 8px rgba(0, 0 , 0, 0.2);
        }
        .container .header .nav{
            width: 90%;
            display: flex;
            align-items: center;
        }
        .container .header .nav .search{
            flex: 3;
            display: flex;
            justify-content:center;
        }
        .container .header .nav .search input[type=text]{
            border: none;
            background: #d2d3d2;
            padding: 10px;
            width: 50%;
            
        }
        .container .header .nav .search button{
            width:40px;
            height:40px;
            border: none;
            display:flex;
            align-items: center;
            justify-content:center;
        }
        .container .header .nav .search button img{
            width:30px;
            height:30px;
        }
        .container .header .nav .user{
            flex: 1;
            background: #bebbc3;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="side-menu">
            <div class="brand-name">
                <h1>Pet-Pals</h1>
            </div>
            <ul>
                <li><img src="home30.png" alt="" />&nbsp; Home</li>
                <li><img src="admin30.png" alt="" />&nbsp; Admin</li>
                <li><img src="employee30_1.png" alt="" />&nbsp; Employee</li>
                <li><img src="customer30.png" alt="" />&nbsp; Customer</li>
                <li><img src="record30.png" alt="" />&nbsp; Medical Records</li>
                <li><img src="report30_1.png" alt="" />&nbsp; Report</li>
                <li><img src="logout30.png" alt="" />&nbsp; Logout</li>
            </ul>

        </div> 
        <div class="container">
            <div class="header">
                <div class="nav">
                    <div class="search">
                        <input type="text" placeholder="Search..." />
                        <button type="submit"><img src="search30.png" alt="" /></button>
                    </div>
                    <div class="user">
                        <a href="#" class="btn">Add New</a>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- bootsrap -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
