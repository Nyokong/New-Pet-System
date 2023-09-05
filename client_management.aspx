<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="client_management.aspx.cs" Inherits="New_Pet_System.client_management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <title>Client Management</title>

    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins',sans-serif;
        }
        body{
            min-height: 100vh;
            width: 200px;

        }
        a{
            text-decoration: none;
        }     
        li{
            list-style: none;
        }
        h1 {
            color: white;
            font-size: xx-large;
            padding: 10px 30px;
        }
        h2{
           color: #0094ff;
        }
        h3{
            color: rgba(0, 0, 0, 0.3);
        }
        .btn{
            background:#74caef;
            color:white;
            padding: 5px 30px;
            text-align: center;
        }
        .btn:hover{
            color:#f05462;
            background:white;
            padding: 3px 8px;
            border: 2px solid #f05462;
        }

        .title{
            display:flex;
            align-items:center;
            justify-content: space-around;
            padding: 15px 10px;
            border-bottom: 2px solid #999;
        }
        table{
            padding: 20px;

        }
        th,td{
            text-align: left;
            padding: 8px;
            width:fit-content;
        }

        .side-menu{
            position: fixed;
            width: 300px;
            height: 100%;
            padding:10px 10px;
            background: linear-gradient(45deg, #36d0e0, #0094ff);
            overflow-x: hidden;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.4);
            z-index: 2;
        }
        .side-menu .brand-name{
            height: 10vh;
            display: flex;
            border-block:groove;
            block-size:fit-content;
            border-block-color:aquamarine;
            align-items:center;
            justify-content: center;
            color: white;
        }
        .side-menu li{
            font-size: 25px;
            padding: 15px 30px;
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
            right:88px;
            width:200vw;
            height:90vh;
            top: 5px;
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
            z-index: 1;
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
            width: 46%;
            
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
            flex: 2;
            display:flex;
            justify-content: space-between;
            align-items:center;
        }
        .container .header .nav .user img {
            width: 40px;
            height: 40px;
        }
        .container .header .nav .user .img-case{
            position: relative;
            width:50px;
            height:50px;
        }
        .container .header .nav .user img{
            width: 40px;
            height:40px;
        }
        .container .header .nav .user .img-case{
            position: relative;
            width:50px;
            height:50px;
        }
        .container .header .nav .user .img-case img{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
        }
        .container .content{
            position: relative;
            margin-top: 10vh;
            min-height: 90vh;
            background: #67dff5;
            width: 100%;
            padding-block: 20px 20px;
            top: 1px;
            left: -5px;
        }
        .container .content .cards{
            padding: 30px 10px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .container .content .content-2{
            min-height: 100vh;
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
            flex-wrap: wrap;
        }
        .container .content .content-2 .veterinarian{
            min-height: 80vh;
            flex: 5;
            background: #c3f1f7;
            margin: 0 25px 25px 25px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3) , 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            display: table;
            flex-direction: column;
        }
        .vet{
            width:900px;
        }
        @media screen and (max-width: 1050px){
            .side-menu li{
                font-size: 18px;
            }
        }
        @media screen and (max-width: 940px){
            .side-menu li span{
                display: none;
            }
            .side-menu{
                align-items: center;
            }
            .side-menu li img{
                width: 40px;
                height: 40px;
            }
            .side-menu li:hover{
                background: white;
                padding: 8px 38px;
                border: 2px solid white;
            }
        }
         @media screen and (max-width: 536px){
             .brand-name h1{
                 font-size: 16px;
             }
             .container .content .cards{
                 justify-content: center;
             }
             .side-menu li img{
                 width:  10px;
                 height: 30px;
             }
             .container .content .content-2 .veterinarian table th:nth-child(2),
             .container .content .content-2 .veterinarian table th:nth-child(2){
                 display:none;
             }
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div class="side-menu">
            <div class="brand-name">
                <h1><img src="pet60_w.png" alt="" />Pet-Pals</h1>
            </div>
            <ul>
                <a href="AdminDashboard.aspx"><li><i class="fas fa-th-large"></i>&nbsp;<span> Dashboard</span></li></a>
                <a href="veterinarian_management.aspx"><li><i class="fas fa-hospital-user"></i>&nbsp; <span> Doctors</span></li></a>
                <a href="client_management.aspx"><li><i class="fas fa-users"></i>&nbsp; <span> Client</span></li></a>
                <a href="medical_record_admin.aspx"><li><i class="fas fa-file-medical"></i>&nbsp; <span> Medical Record</span></li></a>
                <a href="main.aspx"><li><i class="far fa-file-alt"></i>&nbsp; <span> Report</span></li></a>
                <a href="PaymentManagement.aspx"><li><i class="fas fa-hand-holding-usd"></i>&nbsp; <span> Payments</span></li></a> 
                <a href="default.aspx" ><li><i class='fas fa-sign-out-alt'></i>&nbsp; <span> Logout</span></li></a>
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
                        <a href="#" class="btn">Delete</a>
                        <img src="notify50.png" altr="" />
                        <div class="img-case">
                            <img src="user50.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="cards">              
                <div class="content-2">
                    <div class="veterinarian">
                        <div class="title">
                            <h2>Client</h2>
                            <a href="#" class="btn">Add New</a>
                            <a href="#" class="btn">Edit</a>
                        </div>
                        <table class="vet">
                            <tr>
                                <th>Doctor_ID</th>
                                <th>Last Name</th>
                                <th>First Name</th>
                                <th>Speciality</th>
                                <th>Contact_No</th>
                            </tr>
                        </table>
                    </div>
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
