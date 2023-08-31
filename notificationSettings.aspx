<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notificationSettings.aspx.cs" Inherits="New_Pet_System.notificationSettings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Profile Details </title>
    <link rel="icon" type="image/jpg" href="favicon_client/favicon.ico"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>

    <style>
        header {
            height: 80px;
            background-color: blue;
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

        .contain-form {
            display: flex;
            align-items: stretch;
            justify-content: center;
            flex-direction: row;
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

    <h1> Notification Settings </h1>


<div class="contain-form">

    <div class="list-container">
        <ul class="list-group">
          <a href="customerProfile.aspx"><li class="list-group-item">Account</li></a>
          <a href="passwordForm.aspx"><li class="list-group-item ">Password</li></a>
         <a href="customerSettings.aspx"><li class="list-group-item">Settings</li></a>
          <li class="list-group-item active">Notification Settings</li>
        </ul>
    </div>

    <form class="customer-form1">
      <div class="form-group">
        <label for="exampleInputEmail1">First Name</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"/>
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
      </div>

      <div class="form-group">
        <label for="exampleInputPassword1">Last Name</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"/>
      </div>
  
      <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1"/>
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
      </div>
      <button type="submit" class="btn btn-primary">Change Password</button>
   </form>
</div>
</body>
</html>
