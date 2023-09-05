<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="New_Pet_System.default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet-Pals Animal Clinic</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="icon" type="image/jpg" href="favicon_index/favicon_index.ico"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <style type="text/css">
        :root {
            /* background */
            --bg-off : #f3f3f3;
            --bg-black: #25252a;
            --bg-tint: #787878;

            /* front */
            --fr-white: #ffffff;

            /* texts */
            --txt-black: #1a1a1a;
            --txt-hover: rgb(219 135 98 / 0.70);
            --txt-white: #fff;
            --txt-hover-dark: #657283;

            /* sizes */
            --sz-top-header: 25px;
            --sz-hero: 400px;

            /* footer */
            --footer-opac: rgb(247 247 247 / 0.45);
        }
        body{
            background-color: var(--bg-off);
            width: auto;
            scroll-behavior: smooth;
            scroll-snap-type: none;
        }

        .main-body{
            width: 80%;
            margin: 0px 10%;
        }

        /* top header */
        .top-header {
            height: var(--sz-top-header);
            width: 100%;
            display:flex;
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

        header .nav-link{
            height: 40px;
            width: auto;
            margin: 0px 40px;
            border-radius: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

         header #link_signin:hover{
            color: var(--txt-white);
            background-color: var(--txt-hover-dark);
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

        /* hero tab */
        .hero-tab{
            height: auto;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .hero-tab #main-hero-tab{
            width: 100%;
            padding: 10px 10%;
            background-color: var(--bg-black);

            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
        }

        .hero-tab #main-hero-tab #carouselExampleSlidesOnly{
            height: calc(var(--sz-hero) - 40px);
            width: 560px;
            height: 490px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hero-tab #main-hero-tab .carousel-item{
            height: 400px;
            width: 100%;
        }

        .hero-tab #main-hero-tab .carousel-item img{
            object-fit: fill;
        }

        .hero-tab #main-hero-tab #id-side-bar{
            height: 400px;
            width: 40%;
            display: flex;
            flex-direction: column;
            justify-content: left;
            align-items: center;
            padding:10px;
            color: var(--txt-white);
        }

        .hero-tab #main-hero-tab #id-side-bar #id-mail-list-label{
            height: 40%;
            width: 100%;
            display: flex;
            justify-content: flex-start;
            flex-direction: column;
            align-items: center;
        }

        .hero-tab #main-hero-tab #id-side-bar #id-form-list{
            height: 60%;
            width: 100%;
            display: flex;
            justify-content: flex-start;
            flex-direction: column;
            margin: 30px 0px;
        }

        .hero-tab #main-hero-tab #id-side-bar #id-form-group{
            width: 100%;
        }

        .hero-tab #main-hero-tab #id-side-bar input{
            width: 350px;
            border-radius: 30px;
            margin: 0px;
        }

        .hero-tab #main-hero-tab #id-side-bar button{
            width: calc(350px-100px);
            border-radius: 30px;
            height: 60px;
        }

        .class-label{
            height: 120px;
            padding-top: 60px;
            width: 100%;
            background-color: var(--fr-white);
            color:var(--bg-black);
            display:flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }

        .class-label h1{
            font-size: 40px;
            font-weight: 700;
        }

        #id-card-tab{
            width: 100%;
            padding: 30px 50px;
            height: 450px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
            background-color: var(--fr-white);
        }

        #id-card-tab .card{
            width: 286px;
            height: auto;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0px 20px;
            height: calc(400px - 50px);
            background-color: var(--fr-card);
        }

        #id-card-tab .card i{
            height: 286px;
            width: 286px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 70px;
            background-color: var(--bg-black);
            color: var(--fr-white);
        }

        #id-card-tab .card a{
            width: 200px;
            border-radius: 40px;
        }

        #id-testimonals{
            height: auto;
            padding-top: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;/*
            background-image: url("bully.jpg");
            background-size: cover;*/
        }

        #id-testimonals h1{
            height: 80px;
            font-weight: 800;
            font-size: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #id-testimonals .class-contains{
            height: 500px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #id-testimonals .card{
            height: 350px;
            margin: 0px 20px;
            width: 300px;
            background-color: var(--fr-white);
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: rgb(0 0 0 / 0.55) 10px inset;
            border-radius: 30px;
            flex-direction: column;
        }

        #id-testimonals .card img{
            border-radius: 50%;
            height: 100px;
            width: 100px;
            margin: 40px 0px 10px 0px;
        }

        #id-testimonals .card .card-body{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        /* The pricing tab */
        .desk-container{
            height: auto;
            width: 100%;
        }

        .desk-container .intro-container{
            margin-top: 40px;
            height: 120px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items:center;
            flex-direction: column;
            color: var(--bg-black);
        }

        .desk-container .intro-container h1{
            font-weight: 700;
        }

        .desk-container .pricing-tabs{
            height: auto;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
            margin-bottom: 30px;
          
        }

        .desk-container .pricing-tabs .card-container{
            height: 320px;
            width: 250px;
            background-color: var(--fr-white);
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
             margin: 0px 10px;
        }

        .desk-container .pricing-tabs .card-container .h1-block{
           height: 60px;
           width: 100%;
           background-color: var(--bg-black);
           color: var(--fr-white);
           font-size: 15px;
           display:flex;
           justify-content:center;
           align-items:center;
        }

        .desk-container .pricing-tabs .card-container .h1-block span{
           font-weight: 800;
           margin: 0px 3px;
        }

        .desk-container .pricing-tabs .card-container .p-i-tab{
           height: calc(100% - 50px);
           width: 100%;
           display:flex;
           justify-content:center;
           align-items:center;
           flex-direction: column;
        }

        .desk-container .pricing-tabs .card-container .p-i-tab h1{
            font-size: 40px;
            width: 100%;
            margin: 5px 0px; 
            height: auto;
            display:flex;
           justify-content:center;
           align-items:center;
        }
        .desk-container .pricing-tabs .card-container .p-i-tab h1 span{
            font-size: 20px;
            margin: 0px 4px;
        }

        .desk-container .pricing-tabs .card-container .p-i-tab label{
            font-size: 10px;
            width: 100%;
            height: auto;
            display:flex;
            justify-content:center;
            align-items:center;
        }

        .desk-container .pricing-tabs .card-container .p-i-tab h4{
            font-size: 12px;
            width: 100%;
            font-weight: 800;
            height: auto;
            display:flex;
            justify-content:center;
            align-items:center;
        }

        .desk-container .pricing-tabs .card-container .p-i-tab .btn{
            font-size: 12px;
            width: 130px;
            height: 40px;
            display:flex;
            justify-content:center;
            align-items:center;
            margin: 30px calc(100%-100px);
            border-radius: 40px;
        }

        /* footer begins here */
        footer{
            height: auto;
            padding: 40px 0px;
            color: var(--txt-white);
            width: 100%;
            background-color: var(--bg-black);
            margin-top: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        footer .main-footer{
            height: auto;
            display:flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
            width: 100%;
        }

        footer .main-footer .class-footer-contains{
            height: auto;
           width: 33%;
           margin: 0px;
           display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
        }

        .class-footer-contains #i-footer-logo{
            font-size:200px;
            color: var(--footer-opac);
        }

        footer .main-footer .class-footer-contains .middle-footer{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 100%;
            height: auto;
        }

        .class-footer-contains .middle-footer h1{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
            width: 100%;
            height: auto;
            font-size: 20px;
            margin: 10px;
        }

        .class-footer-contains .middle-footer h1 i{
            width: 25px;
            height: 25px;
            font-size: 25px;
            opacity: 0.6;
            margin: 0px 10px;
        }

        footer .main-footer .base-footer{
            width: 100%;
            height: auto;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: var(--fr-white);
            color: var(--bg-black);
        }

        footer .main-footer .base-footer #nwu{
            height: 100px;
            width: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        footer .main-footer .base-footer #nwu img{
            height: 100px;
            width: 100px;
        }

        /* footer ends here */
    </style>

</head>
<body>
    <form runat="server">
    <div class="top-header">
        <div class="main-body">
            <div class="contact-header">
                <p> Contact Details </p>
                <p>Call : 012 232 3243</p>
                <p>Email : info@petpals.com</p>
            </div>
        </div>
    </div>
    <header>
        <div class="main-body">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
          <div class="container-fluid">
            <a class="navbar-brand" id="id-logo-link" href="default.aspx">
                <i class='bx bxs-dog'></i>
                <h1 >Pet Pals</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"><i class='bx bx-menu-alt-right' ></i></span>
            </button>
              
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav" id="id-nav-links">
                <asp:HyperLink ID="link_profile" CssClass="nav-link" runat="server" NavigateUrl="~/customProfile.aspx" Visible="False">Profile</asp:HyperLink>
                <asp:HyperLink ID="link_signin" CssClass="nav-link" runat="server" NavigateUrl="~/signin.aspx">Sign In</asp:HyperLink>
                <asp:HyperLink ID="link_signup" CssClass="nav-link" runat="server" NavigateUrl="~/signup.aspx">Sign Up</asp:HyperLink>
                <a class="nav-link" href="faq.aspx">FAQs</a>
                <a class="nav-link" href="contact.aspx">Contact</a>
                <a class="nav-link" href="about.aspx"">About Us</a>
                  <asp:HyperLink ID="link_booking" CssClass="nav-link" runat="server" NavigateUrl="~/bookAppointment.aspx">Book an Appointment</asp:HyperLink>
              </div>
            </div>
          </div>
        </nav>
        </div>
    </header>

    <div class="hero-tab">
        <div id="main-hero-tab">
            <div id="id-side-bar">
                <div id="id-mail-list-label">
                    <h1>Join our mail list</h1>
                    <h2>Get updates and coupons</h2>
                   <p>The love and care your pet needs, Treatment delivery medication all-year. </p>
                </div>
                <div id="id-mail-list">
                
                      <div class="form-group" id="id-form-group">
                        <label for="txtEmailMail">Email address</label>
                           <asp:TextBox runat="server" class="form-control" type="email" ID="txtEmailMail" placeholder="Enter Email and Join"/>
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                      </div>
                      <asp:Button ID="btn_join" runat="server" type="submit" CssClass="btn btn-primary" Text="Join"/>
                    
                </div>
            </div>

            <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="doc.jpg" class="d-block w-100" alt="..."/>
                </div>
                <div class="carousel-item">
                  <img src="doctor2.jpg" class="d-block w-100" alt="..."/>
                </div>
                <div class="carousel-item">
                  <img src="doctor3.jpg" class="d-block w-100" alt="..."/>
                </div>
              </div>
            </div>
        </div>
    </div>

    <div class="class-label">
        <h1>
            Our Services.
        </h1>
        <p>Different types of care and Treatments</p>
    </div>

    <div id="id-card-tab">
        <div class="card" style="width: 18rem;">
          <i class='bx bx-medal' ></i>
          <div class="card-body">
            <h5 class="card-title">Wellness Examination</h5>
            <p class="card-text">Our experienced veterinarians perform thorough physical examinations on your pets during wellness visits. 
                These check-ups help us monitor your pet's overall health.</p>
            <a href="#" class="btn btn-primary">Read More</a>
          </div>
        </div>

        <div class="card" style="width: 18rem;">
          <i class='bx bx-plus-medical' ></i>
          <div class="card-body">
            <h5 class="card-title">Surgery</h5>
            <p class="card-text">Our skilled veterinarians perform a wide range of surgical procedures, from routine spaying and neutering to 
                complex soft tissue and orthopedic surgeries</p>
            <a href="#" class="btn btn-primary">Read More</a>
          </div>
        </div>

        <div class="card" style="width: 18rem;">
          <i class='bx bxs-capsule' ></i>
          <div class="card-body">
            <h5 class="card-title">Medication</h5>
            <p class="card-text">Our experienced veterinarians are dedicated to ensuring your pet's health and well-being. 
                We offer a range of medication services to address various medical conditions:</p>
            <a href="#" class="btn btn-primary">Read More</a>
          </div>
        </div>
    </div>

    <div class="desk-container">
        <div class="intro-container">
            <h1>Pricing tables</h1>
            <p>Best affordable pet care in the country</p>
        </div>
         
        <div class="pricing-tabs">
            <!-- free Service -->
            <div class="card-container">
                <h1 class="h1-block">Preventive <span>Inspection</span></h1>
                <div class="p-i-tab">
                    <h1><span>R </span>0.00</h1>
                    <asp:Label ID="Label1" runat="server" Text="Free Service"></asp:Label>
                    <h4>Ex Minim</h4>
                    <h4>Adipisicing</h4>
                    <h4>Non offica</h4>
                    <h4>Turducken</h4>
                    <asp:Button ID="btn_order_now1" runat="server" type="submit" CssClass="btn btn-primary" Text="Order Now" OnClick="btn_order_now1_Click" OnLoad="Page_Load" PostBackUrl="~/default.aspx" />
                </div>
            </div>

            <!-- Nutritional Service -->
            <div class="card-container">
                <h1 class="h1-block">Nutritional <span>Counseling</span></h1>
                <div class="p-i-tab">
                    <h1><span>R </span>99.99</h1>
                    <asp:Label ID="Label2" runat="server" Text="Nutritional Service"></asp:Label>
                    <h4>Pancetta aliquip</h4>
                    <h4>Pork Belly</h4>
                    <h4>Ut Exceptue</h4>
                    <h4>Tip-Tip</h4>
                    <asp:Button ID="Button1" runat="server" type="submit" CssClass="btn btn-primary" Text="Order Now" OnClick="btn_order_now1_Click" OnLoad="Page_Load" PostBackUrl="~/default.aspx" />
                </div>
            </div>

            <!-- Vaccination Care -->
            <div class="card-container">
                <h1 class="h1-block">Vaccination <span>Care</span></h1>
                <div class="p-i-tab">
                    <h1><span>R </span>199.99</h1>
                    <asp:Label ID="Label3" runat="server" Text="Vaccination Care"></asp:Label>
                    <h4>Tenderion</h4>
                    <h4>Occaecat aute</h4>
                    <h4>Et nullia</h4>
                    <h4>Ullamco sed</h4>
                    <asp:Button ID="Button2" runat="server" type="submit" CssClass="btn btn-primary" Text="Order Now" OnClick="btn_order_now1_Click" OnLoad="Page_Load" PostBackUrl="~/default.aspx" />
                </div>
            </div>
        </div>
    </div>

    <div id="id-testimonals">
        <h1>
            Testimonals
        </h1>
        <p>Hear what past clients are saying about our clinic.</p>
        <div class="class-contains">
            <div class="card">
              <img src="id_photo.jpg" alt="Avatar"/>
              <div class="card-body">
                <h5 class="card-title">Rose Haaland</h5>
                <p class="card-text">I can't thank the team at Pet-Pals enough! When my dog, Max, had an unexpected emergency, 
                    they were there 24/7, ready to help. The care and attention they provided during a stressful time were truly remarkable</p>
              </div>
            </div>

            <div class="card">
              <img src="id_photo2.jpg" alt="Avatar"/>
              <div class="card-body">
                <h5 class="card-title">Dean Musk</h5>
                <p class="card-text">At Pet-Pals, they go above and beyond for your pets. From routine check-ups to surgeries, they've 
                    always been professional, caring, and compassionate.</p>
              </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="main-footer">
            <p>Pet Pals Clinic The care your pet needs :)</p>
        </div>
        <div class="main-footer">
            <div class="class-footer-contains">
                <i id="i-footer-logo" class='bx bxl-baidu'></i>
            </div>
            <div class="class-footer-contains">
                <div class="middle-footer">
                    <h1><i class='bx bxs-location-plus'></i> Free State</h1>
                    <h1><i class='bx bxs-time' ></i> 09:00 - 15:00</h1>
                    <h1><i class='bx bxs-phone' ></i> 012 232 3243</h1>
                </div>
            </div>
            <div class="class-footer-contains">
                
            </div>
        </div>

        <div class="main-footer">
            <div class="base-footer">
                <span id="nwu">
                    <img src="nwu.png" alt="nwu logo"/>
                </span>
                <h1>Designed by Team-7</h1>
            </div>
        </div>
    </footer>
    </form>
    <!-- bootsrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
</body>
</html>

