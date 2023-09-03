<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClinicAdminDashboard.aspx.cs" Inherits="New_Pet_System.ClinicAdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <title>Admin Panel</title>

    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body{
            overflow-x: auto;
        }
        .container{
            position: absolute;
            width: 100%;
        }
        .sidebar{
            position: fixed;
            width: 300px;
            height: 100%;
            background: linear-gradient(45deg, #36d0e0, #0094ff);
            overflow-x: hidden;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            z-index: 2;

        }
        .sidebar ul li{
            width: 100%;
            list-style: none;
        }
        .sidebar ul li:hover{
            background:#fff;
           
        }
        .sidebar ul li a:hover{           
            color: #f74343;
           
        }
        .sidebar ul li:first-child{
            line-height: 60px;
            margin-bottom: 20px;
            font-weight: 600;
            border-bottom: 1px solid #fff;
        }
        .sidebar ul li:first-child:hover{
            background:none;           
        }
        .sidebar ul li a{
            width: 100%;
            text-decoration: none;
            color: #fff;
            height: 60px;
            display: flex;
            align-items: center;
        }
        .sidebar ul li a i{
            min-width: 60px;
            font-size: 24px;
            text-align: center;
        }
        .sidebar .title{
            padding: 0 10px;
            font-size: 20px;
        }
        .main{
            position: absolute;
            width: 115%;
            min-height: 100vh;
            left: 300px;
            background: #f5f5f5;
        }
        .top-bar{
            position: fixed;
            height: 60px;
            width: calc(100% - 300px);
            background: #fff;
            display:grid;
            grid-template-columns: 10fr 0.4fr 1fr;
            grid-gap: 5px;
            align-items: center;
            color: #444;
            padding: 0 20px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            z-index: 1;
        }
        .top-bar .search{
            position: relative;
            max-width: 240px;
        }

        .search .input{
            width: 100%;
            min-width: 128px;
            height: 40px;
            padding: 0 40px;
            font-size: 16px;
            outline: none;
            border: none;
            background: #f5f5f5;
        }
        .search i{
            position: absolute;
            right: 15px;
            top: 9px;
            cursor: pointer;
        }
        .user{
            position: relative;
            width: 50px;
            height: 50px;
        }
        img{
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            object-fit: cover;
        }
        .cards{
            margin-top: 60px;
            width:100%;
            padding: 20px 20px;
            display:flex;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 20px;
        }
        .cards .card{
            background:linear-gradient(45deg, #36d0e0, #0094ff);
            padding: 10px;
            display: flex;
            align-items: baseline;
            justify-content: space-between;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.4);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="sidebar">
                <ul>
                    <li>
                        <a href="#">
                            <i class="fas fa-clinic-medical"></i>
                                <div class="title">PetPals</div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-th-large"></i>
                            <div class="title">Dashboard</div>
                        </a>
                    </li>
                     <li>
                        <a href="#">
                            <i class="fas fa-stethoscope"></i>
                            <div class="title">Appointments</div>
                        </a>
                    </li>
                     <li>
                        <a href="#">
                            <i class="fas fa-user-md"></i>
                            <div class="title">Doctors</div>
                        </a>
                    </li>
                     <li>
                        <a href="#">
                            <i class="fas fa-puzzle-piece"></i>
                            <div class="title">Departments</div>
                        </a>
                    </li>
                     <li>
                        <a href="#">
                            <i class="fas fa-hand-holding-usd"></i>
                            <div class="title">Payments</div>
                        </a>
                    </li>
                     <li>
                        <a href="#">
                            <i class="fas fa-cog"></i>
                            <div class="title">Settings</div>
                        </a>
                    </li>
                     <li>
                        <a href="#">
                            <i class="fas fa-question"></i>
                            <div class="title">Help</div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="main">
                <div class="top-bar">
                    <div class="search">
                        <input type="text" name="search" placeholder=" search here..." />
                        <label for="search"><i class="fas fa-search"></i></label>
                    </div>
                    <i class="fas fa-bell"></i>
                    <div class="user">
                        <img src="vet40.png" alt="" />
                    </div>
                </div>
                <div class="cards">
                    <div class="card">
                        <div class="card-content">
                            <div class="number">
                                <div class="number">67</div>
                                <div class="card-name">Appointmnets</div>
                            </div>
                            <div class="icon-box">
                                <i class="fas fa-briefcase-medical"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cards">
                    <div class="card">
                        <div class="card-content">
                            <div class="number">
                                <div class="number">67</div>
                                <div class="card-name">Patient</div>
                            </div>
                            <div class="icon-box">
                                <i class="fas fa-bed"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cards">
                    <div class="card">
                        <div class="card-content">
                            <div class="number">
                                <div class="number">67</div>
                                <div class="card-name">Available Doctors</div>
                            </div>
                            <div class="icon-box">
                                <i class="fas fa-nurse"></i>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="cards">
                    <div class="card">
                        <div class="card-content">
                            <div class="number">
                                <div class="number">R45000</div>
                                <div class="card-name">Recent Income</div>
                            </div>
                            <div class="icon-box">
                                <i class="fas fa-dollar-sign"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
