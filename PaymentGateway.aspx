<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentGateway.aspx.cs" Inherits="New_Pet_System.PaymentGateway" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PaymentGateway</title>
    <link rel="stylesheet" href="css/style.css" />
    <style>

        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap');

*{
  font-family: 'Poppins', sans-serif;
  margin:0; padding:0;
  box-sizing: border-box;
  outline: none; border:none;
  text-transform: capitalize;
  transition: all .2s linear;
}

.container{
  display: flex;
  justify-content: center;
  align-items: center;
  padding:25px;
  min-height: 100vh;
  background: linear-gradient(90deg, #2ecc71 60%, #27ae60 40.1%);
}

.container form{
  padding:20px;
  width:700px;
  background: #fff;
  box-shadow: 0 5px 10px rgba(0,0,0,.1);
}

.container form .row{
  display: flex;
  flex-wrap: wrap;
  gap:15px;
}

.container form .row .col{
  flex:1 1 250px;
}

.container form .row .col .title{
  font-size: 20px;
  color:#333;
  padding-bottom: 5px;
  text-transform: uppercase;
}

.container form .row .col .inputBox{
  margin:15px 0;
}

.container form .row .col .inputBox span{
  margin-bottom: 10px;
  display: block;
}

.container form .row .col .inputBox input{
  width: 100%;
  border:1px solid #ccc;
  padding:10px 15px;
  font-size: 15px;
  text-transform: none;
}

.container form .row .col .inputBox input:focus{
  border:1px solid #000;
}

.container form .row .col .flex{
  display: flex;
  gap:15px;
}

.container form .row .col .flex .inputBox{
  margin-top: 5px;
}

.container form .row .col .inputBox img{
  height: 34px;
  margin-top: 5px;
  filter: drop-shadow(0 0 1px #000);
}

.container form .submit-btn{
  width: 100%;
  padding:12px;
  font-size: 17px;
  background: #27ae60;
  color:#fff;
  margin-top: 5px;
  cursor: pointer;
}

.container form .submit-btn:hover{
  background: #2ecc71;
}
    </style>
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

                <div class="col">
                <h3 class="title">payment</h3>
                 <div class="inputBox">
                    <span>cards accepted:</span>
                    <img src="method.jpg" alt="" />
                </div>
                <div class="inputBox">
                    <span>name on card :</span>
                    <input type="text" placeholder="mr. john deo" />
                </div>
                <div class="inputBox">
                    <span>credit card number :</span>
                    <input type="number" placeholder="1111-2222-3333-4444" />
                </div>
                <div class="inputBox">
                    <span>exp month :</span>
                    <input type="text" placeholder="january" />
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>exp year :</span>
                        <input type="number" placeholder="2022" />
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" placeholder="1234" />
                    </div>
                </div>

            </div>
    
        </div>

        <input type="submit" value="proceed to checkout" class="submit-btn" />
        </form>
       

            </div>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
