<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="New_Pet_System.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PetPals | Frequently Asked Questions</title>

    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="icon" type="image/jpg" href="favicon_index/favicon_index.ico"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>


    <link rel="icon" type="favicon_index" href="favicon_index/favicon_index.ico"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
   
    <link rel ="stylesheet" href ="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <script src="script.js" defer></script>


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

        *{
            margin: 0;
            padding: 0;
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

        .main-nav a:hover{
            color: #fb6376;
        }

        #selected{color: #5762D5}

        /*the main div container*/
        .class-sign-up{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: auto;
            width: 100%;
            margin-top: 20px;
        }

        .class-sign-up #form
        {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height:auto;
            width: 600px;
        }

        .class-sign-up #form .fields{
            justify-content: center;
            font-size: 16px;
            height: 40px;
            width: 100%;
            padding: 0px 10px;
            border-radius: 50px;
            border: none;
            text-align:center;
        }

        .fields:focus{
            border: solid 1px #57d596;
        }

        #id-checkbox{
            font-size: 16px;
        }

        .class-sign-up #id-box-container form #id-checkbox{
            width:70%;
            height: auto;
        }

        .class-sign-up #id-box-container form .btn-sign-up{
            height: auto;
            width: 90%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-group{
            margin: 10px 0px;
            width: 300px;
        }

        label{
            font-size: 21px;
            padding: 5px;
        }

        #form a{
            color: #5762D5;
            text-decoration: none;
            font-size: 18px;
        }

        #btnSubmit{
            width: 200px;
            height: 55px;
            background-color: #5762D5;
            border: none;
            border-radius: 40px;
            color: white;
            padding: 10px 0;
            font-size: 16px;
            font-weight: bold;
        }

        /*The hover link */
        #btnSubmit:hover{
            background-color: #4751c0;
            cursor: pointer;
        }

        .footer{
            padding: 20px;
            background-color: var(--bg-black);
            height: 180px;
            width: auto;
            color: var(--fr-white);
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

        .auto-style1 {
            height: 86px;
            font-size: x-large;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 22px;
            width: 414px;
        }
        .auto-style4 {
            width: 414px;
        }

        *{
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
                  <asp:HyperLink ID="link_signin" CssClass="nav-link" runat="server" NavigateUrl="~/signin.aspx" Visible="False">Sign In</asp:HyperLink>
                <a class="nav-link" href="faq.aspx">FAQs</a>
                <a class="nav-link" href="contact.aspx">Contact</a>
                <a class="nav-link" href="about.aspx"">About Us</a>
              </div>
            </div>
          </div>
        </nav>
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
