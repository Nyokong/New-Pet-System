<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="New_Pet_System.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>Frequently Asked Questions</title>

    <link rel="icon" type="favicon_index" href="favicon_index/favicon_index.ico"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
   
    <link rel ="stylesheet" href ="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <script src="script.js" defer></script>


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
            margin-top: 161px;
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
            justify-content: center;
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
        
           margin: 60px auto;
           width: 600px;
        }
       .accordion li 
       {
          list-style:none;
          width: 100%;
          margin: 20px;
          padding: 10px;
          border-radius: 8px;
          background: #e3edf7;
           
       }
       .accordion li label
       {
           display: flex;
           align-items: center;
           padding: 10px;
           font-size: 18px;
           font-weight: 500;
           cursor: pointer;
       }
       label::before{
           content: '+';

       }
       input[type = "radio"]
       {
           display: none;
       }
       .accordion .content
       {
           color: #555;
           padding: 0 10px;
           line-height: 26px;
           max-height: 0;
           overflow: hidden;
           transition: max-height 0.5s, padding 0.5s;

       }
       .accordion input[type="radio"]:checked + label + .content
       {
           max-height: 400px;
           padding: 10px 10px 20px;
       }
        .accordion input[type="radio"]:checked + label::before
       {
           content: '-';
       }
        *
        {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }
        body
        {
            background: #E3F2FD;
        }
        .chatbot-toggler
        {
            position: fixed;
            right: 40px;
            bottom: 35px;
            height: 50px;
            width: 50px;
            color:#fff;
            border: none;
            display: flex;
            align-items: center;
            justify-content: center;
            outline: none;
            cursor: pointer;
            background: #724ae8;
            border-radius: 50%;
            transition: all 0.2s ease;
        }
        .show-chatbot .chatbot-toggler
        {
            transform: rotate(90deg);
        }
        .chatbot-toggler span
        {
            position: absolute;
        } 
        .show-chatbot .chatbot-toggler span:first-child,
        .chatbot-toggler span:last-child
        {
            opacity: 0;
        }
        .show-chatbot .chatbot .chatbot-toggler span:last-child
         {
             opacity: 1;
         }
        .chatbot
        {
            position: fixed;
            right: 40px;
            bottom: 100px;
            width: 420px;
            transform: scale(0.5);
            opacity: 0;
            overflow: hidden;
            background: #fff;
            border-radius: 15px;
            transform-origin: bottom right;
            box-shadow: 0 0 128px 0 rgba(0,0,0,0.1),
                        0 32px 64px -48px rgba(0,0,0,0.5);
            transition: all 0.1s ease;
        }
        .show-chatbot .chatbot
        {
            transform: scale(1);
            opacity: 1;
            pointer-events: auto;
        }
         

        .chatbot header
        {
            background: #724ae8;
            padding: 16px 0;
            text-align: center;
            justify-content: center;
        }
        .chatbot header h2
        {
            color: #fff;
            font-size: 1.4rem;
        }
        .chatbot header span
        {
            position: absolute;
            right: 20px;
            top: 50%;
            color: #fff;
            cursor: pointer;
            display: none;
            transform:translateY(-50%);
        }
        .chatbot .chatbox
        {
            height: 60vh;
            overflow-y: auto;
            padding: 30px 20px 100px;
        }
        .chatbox .chat
        {
            display: flex;
        }
        .chatbox .incoming span
        {
            height: 32px;
            width: 32px;
            color: #724ae8;
            align-self: flex-end;
            text-align: center;
            line-height: 32px;
            border-radius: 4px;
            background: #724ae8;
        }
        .chatbox .outgoing
        {
            margin: 20px 0;
            justify-content: flex-end;

        }
        .chatbox .chat p
        {
            color: #fff;
            max-width: 75%;
            white-space: pre-wrap;
            font-size: 0.95rem;
            padding: 12px 16px;
            border-radius: 10px 10px 0 10px;
            background: #724ae8;
        }
        .chatbox .chat p.error{
            color: #721c24;
            background: #f8d7da;
        }
        .chatbox .incoming p
        {
            color: #000;
            background: #f2f2f2;
            border-radius: 10px 10px 10px 0;
        }
        .chatbot .chat-input
        {
            position:absolute;
            bottom: 0;
            width: 100%;
            display: flex;
            gap: 5px;
            background: #fff;
            padding: 5px 20px;
            border-top: 1px solid #ccc;
        }
        .chat-input textarea
        {
            height: 55px;
            width: 100%;
            border: none;
            outline: none;
            max-height: 180px;
            font-size: 0.95rem;
            resize: none;
            padding: 16px 15px 16px 0;
        }
        .chat-input span
        {
            align-self: flex-end;
            height: 55px;
            line-height: 55px;
            color: #824ae8;
            font-size: 1.35rem;
            cursor: pointer;
            visibility: hidden;
        }
        .chat-input textarea:valid ~ span{
            visibility: visible;
        }
        @media(max-width: 490px)
        {
            .chatbot
            {
                right: 0;
                bottom: 0;
                width: 100%;
                height: 100%;
                border-radius: 0;

            }
            .chatbot .chatbot
            {
                height: 90%;
            }
            .chatbot header span
            {
                display: block;
            }
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
        <div class="logo-icon">
            <img src="FAQ.png" width="120" alt="faq Icon"/>
            <div id="faq Icon">
                <h1 >Frequently Asked Questions</h1>
            </div>
        </div>

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="first" />
               <label for ="first">What is the Pet-Pals Clinic System?</label>
               <div class="content">
                    <p>
                    The Pet-Pals Clinic System is a comprehensive software solution 
                    designed to streamline and enhance the operations of veterinary 
                    clinics and pet care facilities. It offers features like appointment 
                    scheduling, medical record management, billing, and more.
                    </p>
               </div>
           </li>
        </ul>
      </div>
    <div class ="FAQactive">
        <ul class="accordion">
           <li>
                <input type="radio" name ="accordion" id ="second" />
                <label for ="second"> How can I schedule an appointment for my pet?</label>
                <div class="content">
                <p>
                    Scheduling an appointment is easy! You can either call our clinic directly
                    or use our online portal to select a suitable date and time for your pet's visit. 
                    The system will guide you through the process.
                </p>
               </div>
            </li>
          </ul>
        </div>
       <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="third" />
               <label for ="third">Can I access my pet's medical records online?</label>
               <div class="content">
                    <p>
                        Yes, you can! Our clinic system securely stores your pet's medical history,
                        vaccination records, and treatment details. By logging into your account,
                        you can access and review these records at any time.
                    </p>
               </div>
           </li>
        </ul>
      </div>
     <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="fourth" />
               <label for ="fourth">Is my personal and pet's information safe in the system?</label>
               <div class="content">
                    <p>
                        Absolutely. We prioritize the security of your information. Our clinic system 
                        employs advanced encryption and security measures to ensure that all data, 
                        including personal and pet-related details, is protected from unauthorized access.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="firth" />
               <label for ="firth">Is my personal and pet's information safe in the system?</label>
               <div class="content">
                    <p>
                         The billing process is simplified through our clinic system. After each visit, 
                         you'll receive an itemized bill outlining the services provided.
                         You can choose to pay online through the portal or in-person at the clinic.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="sixth" />
               <label for ="sixth">Can I request prescription refills through the system?</label>
               <div class="content">
                    <p>
                        Yes, you can request prescription refills online. Log in to your account, 
                        navigate to your pet's profile, and select the medications that need refilling. 
                        Our team will review the request and notify you when the prescription is ready.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="seventh" />
               <label for ="seventh">What if I need to reschedule or cancel an appointment?</label>
               <div class="content">
                    <p>
                        Life can be unpredictable, and we understand that. You can reschedule or cancel 
                        appointments through the system. Just log in, navigate to the appointment section, 
                        and follow the prompts to make the necessary changes.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="eighth" />
               <label for ="eighth">Is the system mobile-friendly?</label>
               <div class="content">
                    <p>
                        Yes, the Pet-Pals Clinic System is optimized for mobile use. You can access it 
                        through your smartphone or tablet's web browser, making it convenient to manage 
                        your pet's appointments and records on the go.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="nineth" />
               <label for ="nineth">How do I set up reminders for my pet's appointments and treatments?</label>
               <div class="content">
                    <p>
                        Our system provides automatic reminders via email or text messages for upcoming 
                        appointments, vaccinations, and treatments. You can customize your notification
                        preferences within your account settings.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="tenth" />
               <label for ="tenth">Can I update my contact information through the system?</label>
               <div class="content">
                    <p>
                        Certainly. If your contact information changes, you can easily update it in your 
                        account settings. Keeping your information up-to-date helps us communicate effectively 
                        regarding your pet's care.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="eleventh" />
               <label for ="eleventh">Is the system only for dogs and cats, or does it cover other pets too?</label>
               <div class="content">
                    <p>
                        While our system is well-suited for dogs and cats, it can also be adapted to 
                        manage records and appointments for various other pets, including birds, rabbits, and small rodents.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="twelveth" />
               <label for ="twelveth">What do I do if I encounter technical issues with the system?</label>
               <div class="content">
                    <p>
                        If you experience any technical difficulties or have questions about using the system, 
                        please reach out to our support team. They will be more than happy to assist you in resolving any issues.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="thirteenth" />
               <label for ="thirteenth">Can I provide feedback about my experience with the Pet-Pals Clinic System?</label>
               <div class="content">
                    <p>
                        Of course! We value your feedback and strive to improve our services. Feel free to share 
                        your thoughts and suggestions through the system's feedback feature or directly with our staff during your visit.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="fourteenth" />
               <label for ="fourteenth">Is there a mobile app available for the clinic system?</label>
               <div class="content">
                    <p>
                        Currently, we offer the clinic system through web browsers, but we are actively working on 
                        developing a mobile app to provide an even more seamless experience for our users.
                    </p>
               </div>
           </li>
        </ul>
      </div>
        <div class="FAQactive">

        <ul class ="accordion">
            <li>
               <input type="radio" name ="accordion" id ="fifteenth" />
               <label for ="fifteenth">How do I create an account in the Pet-Pals Clinic System?</label>
               <div class="content">
                    <p>
                        Creating an account is simple. You can do so by visiting our clinic's website and following 
                        the "Create Account" or "Sign Up" link. Provide the required information, and you'll be all set to start using the system.
                    </p>
               </div>
           </li>
        </ul>
      </div>
    <footer class="footer">
        <h4> © 2023 Pet-Pals Animal Clinic | All Rights Reserved | Privacy Policy | Cookie Policy | Terms & Conditions </h4>

        <div class="image-container">
            <img src="pukke.png" alt="North-West University (Potch)" width="100px"/>
            <p> Team 7 - System Analyst Corp </p>
        </div>

    </footer>
    <button class="chatbot-toggler">
         <span class ="material-symbols-outlined">mode_comment</span>
        <span class ="material-symbols-outlined">close</span>
    </button>
    <div class="chatbot">
        <header>
            <h2>Chatbot</h2>
            <span class ="close-btn material-symbols-outlined">close</span>
        </header>
        <ul class ="chatbox">
            <li class="chat incoming">
                <span class ="material-symbols-outlined">smart_toy</span>
                <p>Hi there<br/> How can i help you today</p>
            </li>
            
        </ul>
        <div class="chat-input">
            <textarea placeholder="Enter a message..."></textarea>
            <span id="send-btn"  class ="material-symbols-outlined">send</span>
        </div>
    </div>

    <script>
        
    </script>
     
</body>
</html>
