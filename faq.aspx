<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="New_Pet_System.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Frequently Asked Questions</title>

    <link rel="icon" type="favicon_index" href="favicon_index/favicon_index.ico"/>
   

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
        .floating-tab {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #e23b3b;
            color: white;
            padding: 10px 20px;
            border-radius: 10px;
            cursor: pointer;
            z-index: 9999;
        }

        /* Chatbot container */
        #chatbot-container {
            display: none;
            position: fixed;
            height: 50vh;
            bottom: 80px;
            right: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            z-index: 9998;
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
            <img src="pukke.png" alt="North-West University (Potch)" width="100%"/>
            <p> Team 7 - System Analyst Corp </p>
        </div>

    </footer>
     <div class ="chat-bar-collapsible">
         <button id="chat-button" type="button" class="collapsible">Chat With Us!
             <i id="chat-icon" style ="color: #fff"; class="fa fa-fw fa-comments-o"></i>
         </button>

         <div class="content">
             <div class ="full-chat-block">
                 <!--Message Container-->
                 <div class ="outer-container">
                     <div class="chat-container">
                         <!--Messages-->
                         <div id="chatbox">
                             <h5 id="chat-timestamp"></h5>
                             <p id="botStarterMessage" class="botText"><span>Loading...</span></p>
                         </div>
                         <!--User input box-->
                         <div class="chat-bar-input-black">
                             <div id="userInput">
                                 <input type="text" id="textInput" class="input-box" name ="msg" 
                                  placeholder="Tap Enter to send a message"/>
                                 <p></p>
                             </div>

                             <div class ="chat-bar-icons">
                                   <i id="chat-icon" style ="color: crimson"; class="fa fa-fw fa-comments-o"
                                       oneclick="heartButton()"></i>
                                 <i id="chat-icon" style ="color: #333"; class="fa fa-fw fa-comments-o"
                                       oneclick="heartButton()"></i>
                             </div>
                         </div>
                         <div id="chat-bar-button">
                             <p></p>
                         </div>

                     </div>
                 </div>
             </div>
         </div>
     </div>

    <script>
        // JavaScript to handle the floating tab and chatbot
        const tab = document.getElementById("ask-question-tab");
        const chatbotContainer = document.getElementById("chatbot-container");

        function toggleChatbot() {
            chatbotContainer.style.display = chatbotContainer.style.display === "block" ? "none" : "block";
        }

        // Attach click event to the tab
        tab.addEventListener("click", toggleChatbot);
    </script>
</body>
</html>
