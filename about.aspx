<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="New_Pet_System.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>

    <link rel="icon" type="favicon_index" href="favicon_index/favicon_index.ico"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">

    <link rel="icon" type="image/jpg" href="favicon_index/favicon_index.ico"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>



    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap');
         @import url('https://fonts.googleapis.com/css2?family=Allura|Josefin+Sans');
         :root {
            /* background */
            --bg-off : #f3f3f3;
            --bg-black: #434e5c;
            --bg-tint: #787878;

            /* front */
            --fr-white: #ffffff;

            /* texts */
            --txt-black: #1a1a1a;
            --txt-hover: rgb(219 135 98 / 0.70);
            --txt-white: #fff;

            /* sizes */
            --sz-top-header: 25px;
            --sz-hero: 400px;
        }
        body{
            background-color: var(--bg-off);
            width: 100%;
        }

        /* top header */
        .top-header {
            height: var(--sz-top-header);
            width: 100%;
            display:flex;
            justify-content: left;
            align-items: center;
            font-size: 10px;
            background-color: var(--bg-black);
            color: var(--txt-white);
        }

        .top-header p{
            color: var(--txt-white);
            margin: 0px 20px;
            width: auto;
            font-weight: bold;
        }

        .top-header .contact-header{
            display: flex;
            align-items: center;
            flex-direction: row;
            justify-content: center;
        }

        /* main nav */
        header{
            height: auto;
            width: 100%;
            background-color: var(--bg-black);
            color: var(--txt-white);
        }

        header #id-logo-link{
            height: auto;
            display: flex;
            flex-direction: row;
            justify-content: center;
        }

        header #id-logo-link:hover{
            color: var(--txt-hover);
        }

        header #id-logo-link i{
            height: 30px;
            width: 30px;
            margin: 0px 10px;
            font-size: 30px;
            color: var(--txt-white);
        }

        header #id-logo-link h1{
            height: 30px;
            font-size: 25px;
            width: auto;
            color: var(--txt-white);
            display:flex;
            justify-content: center;
            align-items: center;
        }

        header #id-nav-links{
            margin: 0px 20px;
            color: var(--txt-white);
        }

        header #id-nav-links a{
            margin: 0px 20px;
            color: var(--txt-white);
        }



        footer{
            height: 300px;
            color: var(--txt-white);
            width: 100%;
            background-color: var(--bg-black);
            margin-top: 4px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .class-footer-contains{
            width: 33%;
            height: auto;
        }

        .class-footer-contains i{
            font-size:200px;
            color: var(--fr-white);
        }
        *
        {
            padding: 0px;
            margin: 0px;
            box-sizing: border-box;
            font-family: 'Poopins', sans-serif;
        }
        .section
        {
            width: 100%;
        }
        .section .container{
            width: 99%;
            display: block;
            margin: 0px auto;
            padding: 50px 0px;
        }
        .container .title
        {
            width: 94%;
            text-align: center;
            margin-bottom: 50px;

        }
        .container .title h1
        {
            text-transform: uppercase;
            font-size : 35px;
            color: #88941e;

        }
        .container .title h1::after
        {
            content:"";
            height: 5px;
            width: 100px;
            background-color: #c4d156;
            border-radius: 25px;
            display: block;
            margin: auto;

        }
        .content
        {
            float: left;
            width: 55%;

        }
        .image-section
        {
            float: right;
            width: 40%;
            
        }
        .image-section img
        {
            width: 82%;
            height: 233px;
        }
        .content .article  h3
        {
            color: ##a3a3a3;
            font-size: 17px;
        }
        .content .article p
        {
            margin-top: 20px;
            font-size: 16px;
            line-height: 1.5;
            color: #333;
        }
        .contact .article .button
        {
            margin-top:  50px;

        }
         .contact .article .button a
        {
           text-decoration: none;
           padding: 8px 25px;
           background-color: #88941e;
           border-radius: 40px;
           color: #fff;
           font-size: 18px;
           letter-spacing: 1.5px;

        }
         .contact .article .button a:hover
        {
            color: #fff;
            background-color: #f28f92;
            transition: 1s ease;
        }
         .container .social
         {
             width: 100%;
             clear: both;
             margin-top: 50px;
             text-align: center;
             display: inline-block;

         }
         .container .social i
         {
             color: #fff;
             font-size: 22px;
             height: 45px;
             width: 45px;
             border-radius: 50%;
             line-height: 45px;
             text-align: center;
             background-color: #f28f92;
             margin: 0px 5px;
         }

          .container .social i:hover
          {
              color: #fff;
              background-color: #88941e;
              transition: 1s ease;
              transform: rotate(360deg);
          }
        
          @media screen and (max-height: 768px)
          {
              .section .container
              {
                  width: 80%;
                  display: block;
                  margin: auto;
              }
              .content 
              {
                  float: left;
                  width: 100%;
                  display: block;
                  margin:auto;
              }
              .image-section
              {
                  float: right;
                  width: 100%;
                  margin-top: 50px;

              }
              .image-section img
              {
                  width: 100%;
                  height: auto;
                  display: block;
                  margin: auto;

              }
              .container .title h1
              {
                  text-align: center;
                  font-size: 30px;
              }
              .container .article .button
              {
                  text-align: center;
              }
              .container .article .button a
              {
                  padding: 6px 15px;
                  font-size: 16px;
              }
              .container .social i
              {
                  font-size: 19px;
                  height: 35px;
                  width: 35px;
                  line-height: 35px;
              }
          }
          .wrapper {
  margin-top: 10%;
  text-align: center; /* Center-align the content inside the wrapper */
}

.wrapper h1 {
  font-family: 'Allura', cursive;
  font-size: 52px;
  margin-bottom: 60px;
  /* Remove text-align:center; */
}

.team {
  display: flex;
  flex-wrap: wrap; /* Ensure the team members wrap to the next line */
  justify-content: center; /* Center-align the team members horizontally */
}

.team .team_member {
  background: #fff;
  margin-bottom: 50px;
  width: 300px;
  padding: 20px;
  line-height: 20px;
  color: #8e8b8b;
  position: relative;
  top: -46px;
  left: 54px;
  margin-left: 5px;
  margin-right: 5px;
  margin-top: 5px;
  text-align: center; /* Center-align the content within each team member */
}

            

        
        

    </style>
</head>
<body>
    <div class="top-header">
        <div class="contact-header">
            <p> Contact Details </p>
            <p>Call : 012 232 3243</p>
            <p>Email : info@petpals.com</p>
        </div>
    </div>
    <header>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
          <div class="container-fluid">
            <a class="navbar-brand" id="id-logo-link" href="main.aspx">
                <i class='bx bxs-dog'></i>
                <h1 >Pet Pals</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"><i class='bx bx-menu-alt-right' ></i></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav" id="id-nav-links">
                <a class="nav-link" href="faq.aspx">FAQs</a>
                <a class="nav-link" href="contact.aspx">Contact</a>
                <a class="nav-link" href="about.aspx"">About Us</a>
              </div>
            </div>
          </div>
        </nav>
    </header>
    <div class="section">
        <div class ="container">
        <div class="title">
            <h1>About Us</h1>
        </div>
        <div class="content">
            <div class="article">
                <h3>
                    At Pet-Pals Clinic System, we believe that pets are more than just animals;
                </h3>
                <p>
                  At Pet-Pals Clinic System, we believe that pets are more than just animals;
                  they are beloved members of our families. Our mission is to provide exceptional 
                  veterinary care and support to ensure the health and well-being of your furry, 
                  feathered, or scaled companions. With a deep-rooted passion for animals and a 
                  commitment to excellence, we have become a trusted partner in the care of pets in our community.   
                </p>
                <div class="button">
                    <a href="">Read More</a>
                </div>
            </div>
            <div class="social">
                <a href=""><i class ="fab fa-facebook-f"></i></a>
                <a href=""><i class ="fab fa-twitter"></i></a>
                <a href=""><i class ="fab fa-instagram"></i></a>
            </div>
        </div>
          <div class ="image-section">
              <img src="about.jpg" />
          </div>
    </div>

    </div>
    <div class ="wrapper">
        <h1>Our Team</h1>
        
        <div class="team">
            <div class =" team_member" style="display: table-column">
                <div class ="team_img">
                    <img src="doctor1.jpg" style="width: 76px; height: 77px" />
                </div>
                <h3>Dr Tshego Smith</h3>
                <p class ="role">Veterenian</p>
                <p>O Binne Mpogo a farafarelwa ke mangeloi</p>
            </div>
        </div>
         <div class="team">
            <div class =" team_member" style="display: table-column">
                 <div class ="team_img">
                    <img src="doctor6.jpg" style="width: 80px; height: 74px" />
                </div>
                <h3>Dr Jameson Anderson</h3>
                <p class ="role">Veterenian</p>
                <p>O Binne Mpogo a farafarelwa ke mangeloi</p>
            </div>
        </div>
         <div class="team">
            <div class =" team_member" style="display: table-column">
                 <div class ="team_img">
                    <img src="doctor4.jpg" style="width: 66px; height: 80px" />
                </div>
                <h3>Dr Micheal Lee</h3>
                <p class ="role">Veterenian</p>
                <p>O Binne Mpogo a farafarelwa ke mangeloi</p>
            </div>
        </div>
    </div>
    

    

    <footer class="footer">
        <div class="class-footer-contains">
            <i class='bx bxl-baidu'></i>
        </div>
        <div class="class-footer-contains"></div>
        <div class="class-footer-contains"></div>
        
    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
    </body>
</html>
