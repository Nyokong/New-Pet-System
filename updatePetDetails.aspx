<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatePetDetails.aspx.cs" Inherits="New_Pet_System.updatePetDetails" %>

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
            margin-top: 50px;
        }

        .form-check{
            margin: 20px;
            padding-left: 5px;
        }

        .nav-link{
            color: black;
        }

    </style>
</head>
<body>
    <header>

    </header>

    <div class="heading">
        <h1> Update Pet Information </h1>
    </div>

<div class="container">
    <ul class="nav nav-tabs">
      <li class="nav-item">
        <a class="nav-link" aria-current="page" href="petDetails.aspx">Pet Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="updatePetDetails.aspx">Update Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="removePet.aspx">Remove Pet</a>
      </li>
    </ul>

    <div class="contain-form">
    <form class="row g-3">
      <div class="col-md-4">
        <label for="validationDefault01" class="form-label">Pet Name</label>
        <input type="text" class="form-control" id="validationDefault01" required="required"/>
      </div>

      <div class="col-md-4">
        <label for="validationDefault02" class="form-label">Species</label>
        <input type="text" class="form-control" id="validationDefault02" required="required"/>
      </div>

      <div class="col-md-3">
        <label for="validationDefault05" class="form-label">Date Of Birth</label>
        <input type="date" class="form-control" id="validationDefault05" required="required"/>
      </div>

      <div class="col-12">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required="required"/>
          <label class="form-check-label" for="invalidCheck2">
            Agree to terms and conditions
          </label>
        </div>
      </div>

      <div class="col-12">
        <button class="btn btn-primary" type="submit">Update Pet Details</button>
      </div>
    </form>
  </div>
</div>
</body>
</html>
