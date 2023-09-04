﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="medicalRecords.aspx.cs" Inherits="New_Pet_System.medicalRecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Medical Records </title>

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

    <h1> Account Settings </h1>


<div class="contain-form">

    <div class="list-container">
        <ul class="list-group">
          <li class="list-group-item active">Add Medical Records</li>
          <a href="passwordForm.aspx"><li class="list-group-item">Update Medical Records </li></a>
          <a href="customerSettings.aspx"><li class="list-group-item"> Update Medical Records </li></a>
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
      <div class="form-group">
        <label for="exampleInputEmail1">Email Address</label>
        <asp:TextBox runat="server" type="email" class="form-control" id="userMail" aria-describedby="emailHelp" placeholder="Enter email" OnTextChanged="userEmail_TextChanged"/>
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
      </div>
      <div class="form-group form-check">
        <asp:CheckBox runat="server" class="form-check-label" text="Check me out" for="exampleCheck1" ID="cbxCheck"/>
      </div>
      <asp:Button runat="server" type="submit" Text="Update" class="btn btn-primary" OnClick="Unnamed2_Click"/>
   </form>
</div>

</body>
</html>
