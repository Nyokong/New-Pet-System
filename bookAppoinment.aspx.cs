using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace New_Pet_System
{
    public partial class bookAppoinment : System.Web.UI.Page
    {

        

        // User input (date, time, doctor, etc.)
        DateTime selectedDate = DateTime.Parse("2023-09-01");
        TimeSpan selectedTime = TimeSpan.Parse("14:30:00");
        int selectedDoctorId = 1; // Assuming doctor ID



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void f_name_TextChanged(object sender, EventArgs e)
        {

        }

        protected void calendar_SelectionChanged(object sender, EventArgs e)
        {
            // Get the selected date from the calendar control
            selectedDate = calendar.SelectedDate;

            // Display the selected date to the user
            selectedDateLabel.Text = "Selected Date: " + selectedDate.ToShortDateString();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            signin sign = new signin();
            sign.conn.Open();

            string insertQuery = "INSERT INTO Appointments (UserId, DoctorId, AppointmentDate, AppointmentTime) " + "VALUES (@UserId, @DoctorId, @AppointmentDate, @AppointmentTime)";


            string username = f_name.Text; // Assuming you're using the first name as the username
            int userId = GetUserById(sign.conn, username);

            //int userId = GetUserById();
            //string username = "user's_username"; // Replace with the actual username
           // int userId = GetUserById(username);

            sign.command.Parameters.AddWithValue("@UserId", userId);
            sign.command.Parameters.AddWithValue("@DoctorId", selectedDoctorId);
            sign.command.Parameters.AddWithValue("@AppointmentDate", selectedDate);
            sign.command.Parameters.AddWithValue("@AppointmentTime", selectedTime);

            int rowsAffected = sign.command.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                Console.WriteLine("Appointment booked successfully!");
                // Send notification to user
                SendNotification(userId, "Your appointment has been booked.");
            }
            else
            {
                Console.WriteLine("Failed to book appointment.");
            }

            sign.conn.Close();
        }


        public int GetUserById(SqlConnection connection, string username)
        {
            int userId = -1; // Default value if user ID is not found

            string selectQuery = "SELECT UserId FROM Users WHERE Username = @Username";

            using (SqlCommand command = new SqlCommand(selectQuery, connection))
            {
                command.Parameters.AddWithValue("@Username", username);

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        userId = reader.GetInt32(0);
                    }
                }
            }

            return userId;
        }


        public void SendNotification(int userId, string message)
        {
            // Implement notification logic here (email, SMS, etc.)
            Console.WriteLine($"Notification sent to User ID {userId}: {message}");
        }
    }
}