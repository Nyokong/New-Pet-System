<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="New_Pet_System.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
    <title>Admin dashboard</title>

    <style type="text/css">

        :root {
            --light: #f6f6f9;
            --primary: #1976D2;
            --light-primary: #CFE8FF;
            --grey: #eee;
            --dark-grey: #AAAAAA;
            --dark-grey: #363949;
            --danger: #D32F2F;
            --light-danger: #FECDD3;
            --warning: #FBC02D;
            --light-warning: #FFF2C6;
            --succes: #388E3C;
            --light-success: #BBF7D0;
        
        }
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        .bx{
            font-size: 1.7rem;
        }

        a{
            text-decoration: none;
        }
        li{
            list-style: none;
        }

        html{
            overflow-x: hidden;
        }

        body.dark{
            --light: #181a1e;
            --grey: #25252c;
            --dark-grey: #fbfbfb
        }

        body{
            background: var(--grey);
            overflow-x: hidden;
        }

    </style>

</head>
<body>
    <!--sidebar-->
    <div class="sidebar">
        <a href="#" class="logo">
            <i class='bx bx-code-alt'></i>
            <div class="logo-name"><span>Asmr</span>Prog</div>
        </a>
       <ul class="side-menu">
           <li><a href="#"><i class='bx bxs-dashboard' ></i>Dashboard</a></li>
           <li><a href="#"><i class='bx bx-store-alt' ></i>Shop</a></li>
           <li><a href="#"><i class='bx bxs-analyse' ></i>Analytics</a></li>
           <li><a href="#"><i class='bx bx-message-square-dots' ></i>Tickets</a></li>
           <li><a href="#"><i class='bx bx-group' ></i></a>Users</li>
           <li><a href="#"><i class='bx bx-cog' ></i>Settings</a></li>
       </ul>
        <ul class="side-menu">
            <li>
                <a href="#" class="logout">
                    <i class='bx bx-log-out-circle' ></i>
                    Logout

                </a>
            </li>
        </ul>
    </div>
    <!--end of sidebar-->
    <script src="index.js"></script>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
