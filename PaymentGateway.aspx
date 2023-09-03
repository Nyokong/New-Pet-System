<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentGateway.aspx.cs" Inherits="New_Pet_System.PaymentGateway" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PaymentGateway</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <div class="container">
        <form action="">
            <div class="row">
            <div class="col">
                <h3 class="title">Billing Address</h3>
                <div class="inputBox">
                    <span>full name:</span>
                    <input type="text" placeholder="john doe" />
                </div>
                 <div class="inputBox">
                    <span>email:</span>
                    <input type="email" placeholder="example@example.com" />
                </div>
                 <div class="inputBox">
                    <span>address:</span>
                    <input type="text" placeholder="room -streeet-locality" />
                </div>
                 <div class="inputBox">
                    <span>city:</span>
                    <input type="text" placeholder="pretoria" />
                </div>
                <div class="flex">
                     <div class="inputBox">
                    <span>state:</span>
                    <input type="text" placeholder="gauteng" />
                </div>
                     <div class="inputBox">
                    <span>zipcode:</span>
                    <input type="text" placeholder="123 456" />
                </div>
                </div>
            </div>
    </div>
        </form>
       

            </div>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
