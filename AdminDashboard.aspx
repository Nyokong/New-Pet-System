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
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="side-menu">
            <div class="brand-name">
                <h1>Pet-Pals</h1>
            </div>
            <ul>
                <li><img src="home30.png" alt=""> Home</li>
                <li><img src="admin30.png" alt=""> Admin</li>
                <li><img src="employee30_1.png" alt=""> Employee</li>
                <li><img src="customer30.png" alt=""> Customer</li>
                <li><img src="record30.png" alt=""> Medical Records</li>
                <li><img src="report30_1.png" alt=""> Report</li>
                <li><img src="logout30.png" alt=""> Logout</li>
            </ul>

        </div>
    </form>

    <!-- bootsrap -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
