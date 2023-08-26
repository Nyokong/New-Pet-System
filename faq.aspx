<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="New_Pet_System.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Frequently Asked Questions</title>

    <link rel="icon" type="favicon_index" href="favicon_index/favicon_index.ico"/>
    <link
        rel="stylesheet" 
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
        crossorigin="anonymous" referrerpolicy="no-referrer"
        />

    <style type="text/css">
        :root {
            --nav_background : #333333;
            --nav-btn-bg-color: #4f4b4b;
            --off-white: #f3f3f3;
          
            --nav-height : 70px;
            --tab-height: 450px;

            --btn-BG-off-white: #f2f2f2;
            --btn-FR-white: #fff;
            --btn-FR-black: #000;
            --manamela-color: #ac5252;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            width: 100%;
            background-color: #eaeaea;
        
        }
        
        <!--Super links-->
        a{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70px;
            background-color: #4b4b5c;
        }
        /**
        @keyframes scroll {
            0% {
            transform: translateX(-5);
            }
            100% {
            transform: translateX(-100%); 
            }
        }*/


        .footer{
            padding: 20px;
            background-color: var(--nav_background);
            height: 180px;
            width: auto;
            color: #fff;
            text-align: center;
            font-weight: bold;
            margin-top: 638px;
        }

        .image-container {
            width: 100%;
            overflow: auto;
        }

        img{
            float: left;
            margin-right: 10px;
            height: 30px;
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
            margin: 2.5px 25px;
            display: flex;
        }

        .logo-icon img{
            height: 50px;
            width: 50px;
            margin: 5px;
        }

        .logo-icon #logo-name{
            color: white;
            width: 200px;
            display: flex;
            margin: 0px 10px;
        }

        .logo-icon #logo-name h1{
            margin: 15px 0px;
            display: table-cell;
            vertical-align: middle;
        }

        /* the navigation menu starts here */
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

        .nav-menu{
            display: flex;
            height: var(--nav-height);
        }

        .main-nav a{
            text-decoration: none;
            font-size: 20px;
            color: white;
            font-family: Arial, Arial, Helvetica, sans-serif;
        }

        .main-nav a:hover{
            color: #e23b3b;
        }

        #selected{color: #fa8282;}

        .nav-menu .signup-signin-nav{
            height: var(--nav-height ) ;
            width:auto;
            padding: 0px 20px;
            margin: 0px 20px;
            display: flex;
        }

        .nav-menu .signup-signin-nav #id-sign-up{
            color: #fff;
            margin: auto;
            background-color: var(--nav-btn-bg-color);
            height: calc(var(--nav-height) - 30px);
            width: 100px;
            text-decoration: none;
            text-align: center;
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .nav-menu .signup-signin-nav #id-sign-up:hover{
            color: var(--nav-btn-bg-color);
            background-color: #fff;
        }
        *
        {
            padding:0;
            margin: 0;
            box-sizing: border-box;
            font-family: "Roboto",sans-serif;
        }
        .accordion
        {
            background-color: white;
            color: rgba(0,0,0, 0.8);
            cursor: pointer;
            font-size: 1.2rem;
            width: 100%;
            padding: 2rem 2.5rem;
            border: none;
            outline: none;
            transition: 0.4s;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-weight: bold;
        }
       .accordion i 
       {
           font-size: 1.6rem;
           
       }
       .active,
       .accordion::after hover
       {
           background-color: white;

       }
       .panel
       {
           padding: 0 18px;
           background-color: white;
           display: none;
           overflow: hidden;
           background-color: white;
           padding: 0 2rem 2.5rem;
       }
       .panel p
       {
           color: rgba(0,0,0,0.7);
           font-size: 1.2rem;
           line-height: 1.4;
       }
       .FAQ
       {
           border: 1px solid rgba(0,0,0,0.1);
           margin: 10px 0;
       }
       .FAQ.active
       {
           border: none;
       }
    </style>
</head>
<body>
   <header class="header-menu">
        <div class="logo-icon">
            <img src="icons8-pet-100.png" width="120" alt="Pet-Pals Logo"/>
            <div id="logo-name">
                <h1 >Pet Pals</h1>
            </div>
        </div>

        <div class="nav-menu">
            <nav class="main-nav">
                <a href="default.aspx">Home </a>
                <a href="about.aspx"> About </a>
                <a href="faq.aspx" id ="selected"> FAQs </a>
               <a href="contact.aspx"> Contact Us</a>
            </nav>
            <div class="signup-signin-nav">
                <a id="id-sign-up" href="signup.aspx"> Sign Up </a>
            </div>
        </div>

    </header>

    <div class="FAQactive">

        <button class ="accordion">
           1. What is the Pet-Pals Clinic System?
           <i class="fa-solid fa-chevron-down" ></i>
        </button>
        <div class="panel">
            <p>
                The Pet-Pals Clinic System is a comprehensive software solution 
                designed to streamline and enhance the operations of veterinary 
                clinics and pet care facilities. It offers features like appointment 
                scheduling, medical record management, billing, and more.
            </p>
        </div>
    </div>
    <div class ="faq">
        <button class=" accordion">
            2. How can I schedule an appointment for my pet?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Scheduling an appointment is easy! You can either call our clinic directly
            or use our online portal to select a suitable date and time for your pet's visit. 
            The system will guide you through the process.
            </p>
        </div>
       </div>
      <div class ="faq">
        <button class=" accordion">
            3. Can I access my pet's medical records online?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Yes, you can! Our clinic system securely stores your pet's medical history,
            vaccination records, and treatment details. By logging into your account,
            you can access and review these records at any time.
            </p>
        </div>
       </div>
      <div class ="faq">
        <button class=" accordion">
            4. Is my personal and pet's information safe in the system?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Absolutely. We prioritize the security of your information. Our clinic system 
            employs advanced encryption and security measures to ensure that all data, 
            including personal and pet-related details, is protected from unauthorized access.
            </p>
        </div>
       </div>
      <div class ="faq">
        <button class=" accordion">
           5. Is my personal and pet's information safe in the system?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            The billing process is simplified through our clinic system. After each visit, 
            you'll receive an itemized bill outlining the services provided.
            You can choose to pay online through the portal or in-person at the clinic.
            </p>
        </div>
       </div>
      <div class ="faq">
        <button class=" accordion">
            6. Can I request prescription refills through the system?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Yes, you can request prescription refills online. Log in to your account, 
            navigate to your pet's profile, and select the medications that need refilling. 
            Our team will review the request and notify you when the prescription is ready.
            </p>
        </div>
       </div>
          <div class ="faq">
        <button class=" accordion">
            7. What if I need to reschedule or cancel an appointment?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Life can be unpredictable, and we understand that. You can reschedule or cancel 
            appointments through the system. Just log in, navigate to the appointment section, 
            and follow the prompts to make the necessary changes.
            </p>
        </div>
       </div>
          <div class ="faq">
        <button class=" accordion">
            8. Is the system mobile-friendly?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Yes, the Pet-Pals Clinic System is optimized for mobile use. You can access it 
            through your smartphone or tablet's web browser, making it convenient to manage 
            your pet's appointments and records on the go.
            </p>
        </div>
       </div>
          <div class ="faq">
        <button class=" accordion">
            9. How do I set up reminders for my pet's appointments and treatments?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Our system provides automatic reminders via email or text messages for upcoming 
            appointments, vaccinations, and treatments. You can customize your notification
            preferences within your account settings.
            </p>
        </div>
       </div>
          <div class ="faq">
        <button class=" accordion">
            10. Can I update my contact information through the system??
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Certainly. If your contact information changes, you can easily update it in your 
            account settings. Keeping your information up-to-date helps us communicate effectively 
            regarding your pet's care.
            </p>
        </div>
       </div>
          <div class ="faq">
        <button class=" accordion">
            11. Is the system only for dogs and cats, or does it cover other pets too?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            While our system is well-suited for dogs and cats, it can also be adapted to 
            manage records and appointments for various other pets, including birds, rabbits, and small rodents.
            </p>
        </div>
       </div>
          <div class ="faq">
        <button class=" accordion">
            12. What do I do if I encounter technical issues with the system?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            If you experience any technical difficulties or have questions about using the system, 
            please reach out to our support team. They will be more than happy to assist you in resolving any issues.
            </p>
        </div>
       </div>
          <div class ="faq">
        <button class=" accordion">
            13. Can I provide feedback about my experience with the Pet-Pals Clinic System?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Of course! We value your feedback and strive to improve our services. Feel free to share 
            your thoughts and suggestions through the system's feedback feature or directly with our staff during your visit.
            </p>
        </div>
       </div>
      <div class ="faq">
        <button class=" accordion">
            14. Is there a mobile app available for the clinic system?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Currently, we offer the clinic system through web browsers, but we are actively working on 
            developing a mobile app to provide an even more seamless experience for our users.
            </p>
        </div>
       </div>
      <div class ="faq">
        <button class=" accordion">
            15. How do I create an account in the Pet-Pals Clinic System?
             <i class="fa-solid fa-chevron-down" ></i>

        </button>
        <div class ="panel">
            <p>
            Creating an account is simple. You can do so by visiting our clinic's website and following 
            the "Create Account" or "Sign Up" link. Provide the required information, and you'll be all set to start using the system.
            </p>
        </div>
       </div>

    <script>
        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++)
        {
            acc[i].addEventListener("click", function () {

                this.classList.toggle("active");
                this.parentElement.classList.toggle("active");

                var panel = this.nextElementSibling;
                if (panel.style.display == "block") {
                    panel.style.display = "none";

                }
                else
                {
                    panel.style.display = "block";

                }
            });
            

        }
    </script>

    
        
    

    <footer class="footer">
        <h4> © 2023 Pet-Pals Animal Clinic | All Rights Reserved | Privacy Policy | Cookie Policy | Terms & Conditions </h4>

        <div class="image-container">
            <img src="pukke.png" alt="North-West University (Potch)" width="100px"/>
            <p> Team 7 - System Analyst Corp </p>
        </div>

    </footer>

</body>
</html>
