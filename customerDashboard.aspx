<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerDashboard.aspx.cs" Inherits="New_Pet_System.customerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Profile </title>
    <link rel="icon" type="image/jpg" href="favicon_client/favicon.ico"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
    
    <style>

        header img{
            margin-top: 10px;
            margin-left: 30px;
        }

        header{
            height:80px;
            background-color: antiquewhite;
        }
    
        body{
            background-color: grey;
        }

        .list-group-item{
            color: darkblue;
        }

        .logout{
            display: flex;
            flex-direction: row;
            padding: 10px;
            margin-top: 450px;
        }

        .logout a:hover{
            color: #00ff21;          
            cursor: pointer;
        }

        h2{
            padding: 5px;
            font-size: 26px;
        }

    </style>

</head>
<body>

<header>
    <img src="favicon_client/favicon.ico" />
</header>

     <div class="contain-button">
        <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop"> Profile Settings </button>
    </div>

<div class="offcanvas offcanvas-start" data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="staticBackdropLabel">Options</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div class="contain-nav">
      <ul class="list-group list-group-flush">
        <a href="customerProfile.aspx"><li class="list-group-item"> Profile Management </li></a>
        <a href="petDetails.aspx"><li class="list-group-item"> Pet Management </li></a>
        <a href="bookAppoinment.aspx"><li class="list-group-item"> Book Appointment </li></a>
        <a href="medicalRecord.aspx"><li class="list-group-item"> Medical Records </li></a>
     </ul>
    </div>
    <div class="logout">
        <img src="logout_icon.png" alt="logout icon" /> 
        <a href="main.aspx"><h2> Logout </h2></a>
    </div>
  </div>
</div>
    
<form runat="server">
    <div class="dataGridView">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</div>
</form>

</body>
</html>
