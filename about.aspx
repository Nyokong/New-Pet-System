<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="New_Pet_System.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>

    <link rel="icon" type="favicon_index" href="favicon_index/favicon_index.ico"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">

    <style type="text/css">

        body{
            font-family:Arial, Arial, Helvetica, sans-serif;
            margin: 0;
        }


        header{
            width: 100%;
            display: flex;
            justify-content: space-between;
            /*box-shadow: 0px 10px 25px #000000;*/
            height: var(--nav-height);
            background-color: var(--nav_background);
        }
            

        .main-nav{
            display: flex;
            padding: 10px;
            column-gap: 80px;
            padding: 20px;
            margin: auto;
        }

        a{
            text-decoration: none;
            font-size: 20px;
            color: #000000;
            font-family: Arial, Arial, Helvetica, sans-serif;
        }

        .main-nav a:hover{
            color: #fb6376;
        }

        #selected{color: #5762D5}

        .footer{
            padding: 20px;
            background-color: #483D8B;
            height: 180px;
            width: 100%;
            color: black;
            text-align: center;
            font-weight: bold;
        }


        .image-container {
            width: 100%;
            overflow: auto;
        }

        img{
            float: left;
            margin-right: 10px;
        }

        .footer p {
             margin: 0;
             font-size: 16px;
        }

        h4{
            margin-top: 20px;
            padding: 20px 25px;
            font-size: 16px;
        }

        .logo-icon{
            height: 50px;
            width: auto;
            margin:5px;
            display: block;
            vertical-align: central;
        }

        .logo-icon img{
            height: 50px;
            width: 50px;
            margin: 5px;
        }

        .logo-icon #logo-name{
            color: white;
            width: 200px;
            margin-left: 3px;
            margin-right: 3px;
            text-align: center;

        }
        .about-us{
            padding: 80px 0px;
        }

        /*the main about page - container*/

        .container{
            display: flex;
            align-items: center;
            justify-content: center;
            width: auto;
            padding: 20px;
            flex-direction: row;
        }
        .flex{
            max-width: 50%;
            padding: 20px;
        }
        .about-us h2{
            font-size: 45px;
            colour:#333;
        }
        .about-us h3{
            font-size: 22px;
            color:#888;
        }
        .about-us p{
            font-size: 18px;
            line-height: 1.5;
            color: #555;
        }
        .about-us img{
            display: block;
            height: 400px;
            margin: 0 auto;
        }
        .social-links{
            margin-bottom: 20px;
        }
        .social-links a{
            display: inline-block;
            width: 40px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            border-radius: 50%;
            margin-right: 10px;
            color: #fff;
            background-color: #333;
            box-shadow: 0 2px 5px rgba(0,0,0,0.3);
            transition: all 0.4s ease;

        }
        .social-links a:hover{
            transform: translateY(-3px);
        }
        .btn{
            text-decoration: none;
            color: #fff;
            display: inline-block;
            padding:10px 20px;
            font-size: 18px;
            font-weight: bold;
            text-transform:uppercase;
            border-radius: 5px;
            background-color: #333;
            transition: all 0.4s ease;
        }
        .btn:hover{
            transform: translateY(-3px);
        }
        @media screen and (max-width: 768px)
        {
            .row {
                flex-direction: column;
            }

            .flex {
                max-width: 100%;
            }

            .about-us h2 {
                font-size: 31px;
            }

            .about-us p {
                font-size: 16px;
            }

            .social-links a {
                width: 30px;
                height: 30px;
                line-height: 30px;
                font-size: 14px;
                margin-right: 5px;
            }

            .btn {
                font-size: 16px;
                padding: 8px 16px;
                margin-bottom: 30px;
            }
        }
        .why_container{
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 2rem;
            align-items:baseline;


        }
        .why_image{
            max-width: 400px;
            margin: auto;
            border-radius: 10px;
        }
        .why_content p{
            color: var(--text-light);
        }
        .why_grid{
            margin=top: 4rem;
            display: grid;
            grid-template-columns: 80px auto;
            gap: 2rem;

        }
        .why_grid span{
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 2.5rem;
            color: var(--primary-color);
            border-radius: 10px;
            box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.1);
        }
        .why_grid h4{
            margin-bottom: 5rem;
            font-size: 1.2rem;
            font-weight:  600;
            color: var(--text-dark);
        }
        .why_grid p{
            color: var(--text-light);
        }
       
        .doctors_header{
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 2rem;
        }
        .doctors_header_content p{
            max-width: 600px;
            color: var(--text-light);

        }
        .doctors_nav{
            display: flex;
            align-items: center;
            gap: 1rem;
        }
        .doctors_nav span{
            padding: 5px 15px;
            font-size: 1.5rem;
            color: var(--primary-color);
            background-color: var(--primary-color-light);
            cursor: pointer;
        }

        .doctors_grid{
            margin-top: 4rem;
            display: grid;
           
           
            grid-template-columns: repeat(3, 1fr);
            gap: 2rem;

        }
        .doctors_card{
            text-align: center;
            box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            cursor: pointer;
            overflow: hidden;
        }
        
        .doctors_card_image{
            position: relative;
            overflow: hidden;

        }
        .doctors_socials{

            position: absolute;
            left:0;
            bottom: -4rem;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 1rem;
            transition: 0.5s;
        }

        .doctors_socials span{
            display: inline-block;
            padding: 6px 12px;
            font-size: 1.5rem;
            color: var(--text-dark);
            background-color: var(--white);
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        .doctors_socials span:hover{
            color: var(--primary-color);

        }

        .doctors_card:hover .doctors_socials{
            bottom: 2rem;
        }

        .doctors_card h4{
            margin-top: 1rem;
            font-size: 1.2rem;
            font-weight: 600;
            color: var(--text-dark);


        }
        .doctors_card p{
            margin-bottom: 1rem;
            color: var(--text-light);
        }
            

            

        
        

    </style>
</head>
<body>
     <header>
       <div class="logo-icon">
            <img src="icons8-pet-100.png" width="120" alt="Pet-Pals Logo"/>
            <h1 id="logo-name">
                Pet Pals
            </h1>
        </div>

        <nav class="main-nav">
            <a href="default.aspx" >Home </a>
            <a href="about.aspx" id="selected"> About </a>
            <a href="signin.aspx"> Sign In </a>
            <a href="faq.aspx"> FAQs </a>
           <a href="contact.aspx"> Contact Us</a>
        </nav>
    </header>

    <div class="about-us">
        <div class="container">
            <div class="flex">
                <h2>About Us</h2>
                <h3>Discover Our Team's Story</h3>
                <p>Welcome to Pet Pals, your trusted partner in pet care. 
                   Established with a profound love for animals and a commitment 
                   to their well-being, we are a dedicated veterinary clinic offering
                   comprehensive and compassionate care to your beloved pets.</p>
                <div class="social-links">
                    <a href=""><i class="fab fa-facebook-f"></i></a>
                    <a href=""><i class="fab fa-twitter"></i></a>
                    <a href=""><i class="fab fa-instagram"></i></a>
                </div>
                <a href="" class="btn">Learn More</a>
            </div>
            <div class="flex">
                <img src="about.jpg"/>
            </div>
        </div>
    </div>

    <section class="section_container why_container">
        <div class ="why_image">
            <img src ="whyUS.jpg" alt="why choose us" />

        </div>
        <div class ="why_content">
            <h2 class="section_header">Why Choose Us</h2>
            <p>
              With a steadfast commitment to your pet's well-being, our team of highly
              trained healthcare proffessionals ensures that you receive nothing
              short of exceptional patient experiences.
            </p>
            <div class="why_grid">
                <span><i class="ri-hand-heart-fill"></i></span>
                <div>
                    <h4>Intensive Care</h4>
                    <p>
                      Our Intensive Care Unit is equipped with advanced technology and 
                      stafffed by team of proffessionals.
                    </p>
                </div>
                <span><i class="ri-truck-line"></i></span>
                <div>
                    <h4>Free Ambulance Car</h4>
                    <p>
                      A compassionate initiative to prioritize your pet's health and 
                      well-being without any financial burden.
                    </p>
                </div>
                <span><i class="ri-hospital-line"></i></span>
                <div>
                    <h4>Medical and Surgical</h4>
                    <p>
                      Our Medical and Surgical services offer advaced healthcare
                      solutions to address medical needs.
                    </p>
                </div>
            </div>
        </div>
    </section>
    <section class ="section_container doctors_container">
        <div class="doctors_header">
            <div class="doctors_header_content">
                <h2 class="section_header">Our  Special Doctors</h2>
                <p>
                    We take pride in our exceptional team of doctors, each a specialist
                    in their respective fields.
                </p>
            </div>
            <div class="doctors_nav">
                <span><i class="ri-arrow-left-line"></i></span>
                <span><i class="ri-arrow-right-line"></i></span>
            </div>
        </div>
        <div class="doctors_grid">
            <div class="doctors_card">
                <div class="doctors_card_image">
                    <img src="doctor7.jpg" alt="doctor" />
                    <div class="doctors_socials">
                        <span><i class="ri-instagram-line"></i></span>
                        <span><i class="ri-facebook-fill"></i></span>
                        <span><i class="ri-heart-fill"></i></span>
                        <span><i class="ri-twitter-x-line"></i></span>
                    </div>
                </div>
                <h4>Dr. Tshego Smith</h4>
                <p>Speciality here</p>
            </div>
            </div>
            <div class="doctors_grid">
            <div class="doctors_card">
                <div class="doctors_card_image">
                    <img src="doctor6.jpg" alt="doctor" />
                    <div class="doctors_socials">
                        <span><i class="ri-instagram-line"></i></span>
                        <span><i class="ri-facebook-fill"></i></span>
                        <span><i class="ri-heart-fill"></i></span>
                        <span><i class="ri-twitter-x-line"></i></span>
                    </div>
                </div>
                <h4>Dr. JAmeson Anderson</h4>
                <p>Speciality here</p>
            </div>
                </div>
                <div class="doctors_grid">
            <div class="doctors_card">
                <div class="doctors_card_image">
                    <img src="doctor5.jpg" alt="doctor" />
                    <div class="doctors_socials">
                        <span><i class="ri-instagram-line"></i></span>
                        <span><i class="ri-facebook-fill"></i></span>
                        <span><i class="ri-heart-fill"></i></span>
                        <span><i class="ri-twitter-x-line"></i></span>
                    </div>
                </div>
                <h4>Dr. Michael Lee</h4>
                <p>Speciality here</p>
            </div>
        </div>
    </section>


    <footer class="footer">
        <h4> © 2023 Pet-Pals Animal Clinic | All Rights Reserved | Privacy Policy | Cookie Policy | Terms & Conditions </h4>

        <div class="image-container">
            <img src="pukke.png" alt="North-West University (Potch)" width="100"/>
            <p> Team 7 - System Analyst Corp </p>
        </div>
        
    </footer>
    </body>
</html>
