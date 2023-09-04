<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateMedicalRecord.aspx.cs" Inherits="New_Pet_System.updateMedicalRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Update Medical Records </title>
    <link rel="icon" type="image/jpg" href="favicon_client/favicon.ico"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
    
    <style>
        header {
            height: 80px;
            background-color: blue;
        }

        .contain-button{
            padding: 30px;
        }

        h1{
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            font-size: 32px;
            text-align: center;
            justify-content: center;
            margin-top: 50px;
        }

        .list-container{
            margin-top: 200px;
            margin-bottom: 80px;
            margin-right: 250px;
            width: 400px;
        }

        .list-container a{
            color: black;
            text-decoration: none;
        }

        .list-container:hover{
            cursor: pointer;
            text-decoration: none;
        }

        .contain-form {
            display: flex;
            align-items: stretch;
            justify-content: center;
            flex-direction: row;
            margin-top: -50px;
        }

        .customer-form1 {
            margin-top: 140px;
            margin-bottom: 80px;
            margin-right: 250px;
            width: 300px;
        }
        
    </style>
</head>
<body>
   <header>

    </header>

    <h1> Update A Medical Record </h1>


<div class="contain-form">

    <div class="list-container">
        <ul class="list-group">
          <a href="medicalRecords.aspx"><li class="list-group-item">Add Medical Records</li></a>
          <a href="updateMedicalRecord.aspx"><li class="list-group-item active">Update Medical Records </li></a>
          <a href="deleteMedicalRecord.aspx"><li class="list-group-item"> Delete Medical Records </li></a>
        </ul>
    </div>

    <form class="customer-form1" runat="server">
      <div class="form-group">
        <label for="firstName">First Name</label>
        <asp:TextBox runat="server" type="text" class="form-control" id="first_name" aria-describedby="emailHelp" placeholder="Enter First Name"/>
      </div>
      <div class="form-group">
        <label for="lastName">Last Name</label>
        <asp:TextBox runat="server" type="text" class="form-control" id="last_name" placeholder="Enter Last Name"/>
      </div>
      <div class="form-group">
        <label for="lastName"> Phone Number</label>
        <asp:TextBox runat="server" type="phone" class="form-control" id="txtPhone" placeholder="Enter Phone Number"/>
      </div>
      <div class="form-group form-check">
        <asp:CheckBox runat="server" class="form-check-label" text="Check me out" for="exampleCheck1" ID="cbxCheck"/>
      </div>
      <asp:Button runat="server" type="Update Record" Text="Update" class="btn btn-primary"/>
   </form>
</div>

</body>
</html>
