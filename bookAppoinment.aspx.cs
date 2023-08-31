using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        protected void submit_Click(object sender, EventArgs e)
        {
            signin sign = new signin();
            sign.conn.Open();

            string insertQuery = "INSERT INTO Appointments (UserId, DoctorId, AppointmentDate, AppointmentTime) " + "VALUES (@UserId, @DoctorId, @AppointmentDate, @AppointmentTime)";

            int userId = GetUserById();

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

        public int GetUserById()
        {
            // Retrieve user ID logic here
            return 1; // Replace with actual user ID
        }

        public void SendNotification(int userId, string message)
        {
            // Implement notification logic here (email, SMS, etc.)
            Console.WriteLine($"Notification sent to User ID {userId}: {message}");
        }
    }
}