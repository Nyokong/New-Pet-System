Appointment Booking System

For our second-year System Analysis & Design module, my team and I developed this online system to streamline appointment booking. It offers a user-friendly experience and is hosted locally for better performance and management.
Table of Contents

    Overview
    Features
    Technologies Used
    Setup
    How to Run
    Usage
    Contributing
    License

Overview

This appointment booking system was developed as a part of our second-year System Analysis & Design module. The system is designed to simplify and automate the process of booking appointments, providing a seamless and efficient user experience. It is hosted locally to ensure better performance and ease of management.
Features

    User Registration and Authentication: Secure sign-up and login for users.
    Appointment Scheduling: Users can easily book, reschedule, and cancel appointments.
    Admin Dashboard: Admins can manage appointments, view user activity, and generate reports.
    Email Notifications: Automated email notifications for appointment confirmations and reminders.
    Local Hosting: The system is hosted locally for optimal performance and control.

Technologies Used

    Python: Used for backend development and server-side scripting.
    Flask: Web framework for building the backend services.
    SQLite: Lightweight database for storing user and appointment data.
    HTML/CSS/JavaScript: Frontend development.
    Bootstrap: For responsive and user-friendly design.

Setup

To set up and run this project on your local machine, follow these steps:

    Clone the Repository:

    bash

git clone https://github.com/your-username/appointment-booking-system.git
cd appointment-booking-system

Create and Activate Virtual Environment:

bash

python -m venv venv
source venv/bin/activate  # On Windows, use `venv\Scripts\activate`

Install Dependencies:

bash

pip install -r requirements.txt

Set Up Environment Variables:
Create a .env file in the project root directory and add the necessary environment variables.

makefile

FLASK_APP=app.py
FLASK_ENV=development
SECRET_KEY=your_secret_key

Initialize the Database:

bash

    flask db init
    flask db migrate -m "Initial migration."
    flask db upgrade

How to Run

    Start the Server:

    bash

    flask run

    Access the System:
    Open your web browser and go to http://127.0.0.1:5000 to access the appointment booking system.

Usage

    Register: Create a new account by providing a username, email, and password.
    Login: Log in using your credentials.
    Book Appointments: Navigate to the booking page, select a service, choose a time slot, and confirm the appointment.
    Manage Appointments: Users can view, reschedule, or cancel their appointments from their dashboard.
    Admin Dashboard: Admins can log in to view all appointments, manage users, and generate reports.

Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to create an issue or submit a pull request.
License

This project is licensed under the MIT License - see the LICENSE file for details.
