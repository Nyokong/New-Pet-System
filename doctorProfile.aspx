<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctorProfile.aspx.cs" Inherits="New_Pet_System.doctorProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Doctor Profile </title>
    <link rel="icon" type="image/jpg" href="favicon_io/favicon_staff.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>

    <style>
        .contain-menu{
            margin-top: 70px;
        }

        body{
            background-image: url("doctor1.jpg");
            background-size: cover;
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

        .nav-item {
            display: flex;
            text-align: center;
            justify-content: center;
        }

    </style>

</head>
<body>
<nav class="navbar" style="background-color: #e3f2fd;">
  <!-- Navbar content -->
</nav>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <img src="favicon_io/favicon_staff.ico" alt="doctor image"/>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="main.aspx"> Home </a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="doctorProfile.aspx"> Employee Dashboard </a>
        </li>
      </ul>
      <form runat="server" class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
        <asp:Button runat="server" Text="Search" class="btn btn-outline-success" type="submit"/>
      </form>
    </div>
  </div>
</nav>

<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop">
  Profile Menu
</button>

<div class="offcanvas offcanvas-start" data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="staticBackdropLabel">Options</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div class="contain-menu">
      <ul class="list-group list-group-flush">
        <li class="list-group-item"> Profile Management </li>
        <li class="list-group-item"> Appointment Management </li>
        <a href="medicalRecords.aspx"><li class="list-group-item"> Medical Records </li></a>
     </ul>
    </div>
    <div class="logout">
        <img src="logout_icon.png" alt="logout icon" /> 
        <a href="main.aspx"><h2> Logout </h2></a>
    </div>
  </div>
</div>

</body>
</html>
