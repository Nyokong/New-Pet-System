<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="/default.aspx.cs" Inherits="New_Pet_System._default" %>--%>

<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim loggedin_User As HttpCookie = Request.Cookies("Logged-User")

        ' check if the user info cookie Is Not empty
        If loggedin_User IsNot Nothing Then
            If loggedin_User("username") <> "admin@email.com" Then
                ' The user is not an administrator
                link_signin.Visible = False
                link_profile.Visible = True
                link_signup.Visible = False
            ElseIf loggedin_User("username") = "admin@email.com" Then
                ' The user is an administrator
                link_signin.Visible = False
                link_profile.Visible = False
                link_signup.Visible = False
            End If
        ElseIf loggedin_User Is Nothing Then
            ' The user is not logged in
            link_signin.Visible = True
            link_signup.Visible = True
        End If
    End Sub

</script>


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

        .hero-tab #main-hero-tab #id-side-bar #id-form-group input{
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
            height: 150px;
            width: 100%;
            background-color: var(--fr-white);
            color:var(--bg-black);
            display:flex;
            align-items: center;
            justify-content: center;
            padding: 0px 40px;
        }

        .class-label h1{
            font-size: 60px;
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
            flex-direction: column;
            background-image: url("bully.jpg");
            background-size: cover;
        }

        #id-testimonals h1{
            height: 120px;
            font-weight: 800;
            font-size: 70px;
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

        footer{
            height: 300px;
            color: var(--txt-white);
            width: 100%;
            background-color: var(--bg-black);
            margin-top: 20px;
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
    </style>

</head>
<body>
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
                   <p>Lorem ipsum dolor  magna aliqua. Ut enim ad minim veniam, quis nostrud  consequat. </p>
                </div>
                <div id="id-mail-list">
                    <form id="id-form-list">
                      <div class="form-group" id="id-form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"/>
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                      </div>
                      <button type="submit" class="btn btn-primary">Join</button>
                    </form>
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
    </div>

    <div id="id-card-tab">
        <div class="card" style="width: 18rem;">
          <i class='bx bx-medal' ></i>
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>

        <div class="card" style="width: 18rem;">
          <i class='bx bx-plus-medical' ></i>
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>

        <div class="card" style="width: 18rem;">
          <i class='bx bxs-capsule' ></i>
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
    </div>

    <div id="id-testimonals">
        <h1>
            Testimonals
        </h1>
        <div class="class-contains">
            <div class="card">
              <img src="doctor.jpg" alt="Avatar"/>
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>

            <div class="card">
              <img src="doctor1.jpg" alt="Avatar"/>
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="main-body">
            <div class="class-footer-contains">
                <i class='bx bxl-baidu'></i>
            </div>
            <div class="class-footer-contains"></div>
            <div class="class-footer-contains"></div>
        </div>
    </footer>

    <!-- bootsrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
</body>
</html>
