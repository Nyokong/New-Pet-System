<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="removePet.aspx.cs" Inherits="New_Pet_System.removePet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Pet Details </title>
    <link rel="icon" type="image/jpg" href="favicon_client/favicon.ico"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>

    <style>
        header{
            height: 80px;
            background-color: grey;
        }

        .heading{
            padding: 50px;
            font-size: 36px;
            text-align: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #ff6a00;
        }

        .container{
            background-color: lightgrey;
            border-radius: 20px;
            margin-top: -20px;
            padding: 90px;
        }

        form{
            margin-top: 0px;
        }

        .form-check{
            margin: 20px;
            padding-left: 5px;
        }

        .nav-link{
            color: black;
        }

        .col-12{
            padding: 10px;
        }

    </style>
</head>
<body>
    <header>

    </header>

    <div class="heading">
        <h1> Remove Pet Information </h1>
    </div>

<div class="container">
    <ul class="nav nav-tabs">
      <li class="nav-item">
        <a class="nav-link" aria-current="page" href="petDetails.aspx">Pet Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="updatePetDetails.aspx">Update Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="removePet.aspx">Remove Pet</a>
      </li>
    </ul>

    <div class="contain-form">
    <form class="row g-3">
      <div class="col-12">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required="required"/>
          <label class="form-check-label" for="invalidCheck2">
            Confirm that you want to remove your pet information!
          </label>
        </div>
      </div>

      <div class="col-12">
        <button class="btn btn-primary" type="submit">Remove Pet</button>
      </div>
    </form>
  </div>
</div>
</body>
</html>
