using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace New_Pet_System
{
    public partial class bookAppoinment : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;

        //connectionString declaration
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Source\Repos\Nyokong\New-Pet-System\App_Data\NewPetPals-Data.mdf;Integrated Security=True";

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
            conn = new SqlConnection(connString);

            conn.Open();

            int userId = GetUserById();
            int petId = GetPetById();
            int doctorId = GetVetById();


            conn.Close();
        }
        public int GetUserById()
        {
            // Retrieve the user's ID
            string sqlSelectUser = "SELECT Id FROM Users WHERE Id = @UserId";
            int userId = 1; // Replace with the actual user ID

            using (SqlCommand selectCmdUser = new SqlCommand(sqlSelectUser, conn))
            {
                selectCmdUser.Parameters.AddWithValue("@UserId", userId);
                // Execute the SELECT queries to retrieve IDs
                object userResult = selectCmdUser.ExecuteScalar();

                // Check if all necessary IDs were found
                if (userResult != null && userResult != DBNull.Value)
                {
                    int customerId = (int)userResult;

                    // Insert the appointment
                    string sqlInsert = "INSERT INTO Appointments (Appointment_ID, Customer_Id, Doctor_Id, Pet_Id, Description, App_Date, App_Time, App_Status) " +
                        "VALUES (@AppointmentId, @CustomerId, @DoctorId, @PetId, @Description, @AppDate, @AppTime, @AppStatus)";

                    using (SqlCommand insertCmd = new SqlCommand(sqlInsert, conn))
                    {
                        // Replace with the actual values
                        insertCmd.Parameters.AddWithValue("@AppointmentId", 5); // Replace with the actual Appointment_ID value
                        insertCmd.Parameters.AddWithValue("@CustomerId", customerId);

                        insertCmd.Parameters.AddWithValue("@Description", textArea.Value);
                        insertCmd.Parameters.AddWithValue("@AppDate", dateSelected.Value);
                        insertCmd.Parameters.AddWithValue("@AppTime", timeSelected.Value);
                        insertCmd.Parameters.AddWithValue("@AppStatus", "Scheduled");

                    }

                }


            }

            return userId;
        }
        public int GetVetById()
        {
            // Retrieve the doctor's ID
            string sqlSelectDoctor = "SELECT Doctor_Id FROM Veterinarian WHERE Doctor_Id = @DoctorId";
            int doctorId = 2; // Replace with the actual doctor ID
            using (SqlCommand selectCmdDoctor = new SqlCommand(sqlSelectDoctor, conn))
            {

                selectCmdDoctor.Parameters.AddWithValue("@DoctorId", doctorId);
                // Execute the SELECT queries to retrieve IDs
                object doctorResult = selectCmdDoctor.ExecuteScalar();

                // Check if all necessary IDs were found
                if (doctorResult != null && doctorResult != DBNull.Value)
                {

                    int doctorIdResult = (int)doctorResult;


                    // Insert the appointment
                    string sqlInsert = "INSERT INTO Appointments (Appointment_ID, Customer_Id, Doctor_Id, Pet_Id, Description, App_Date, App_Time, App_Status) " +
                        "VALUES (@AppointmentId, @CustomerId, @DoctorId, @PetId, @Description, @AppDate, @AppTime, @AppStatus)";

                    using (SqlCommand insertCmd = new SqlCommand(sqlInsert, conn))
                    {

                        // Replace with the actual values
                        insertCmd.Parameters.AddWithValue("@AppointmentId", 5); // Replace with the actual Appointment_ID value

                        insertCmd.Parameters.AddWithValue("@DoctorId", doctorIdResult); // Use the retrieved Doctor ID

                        insertCmd.Parameters.AddWithValue("@Description", textArea.Value);
                        insertCmd.Parameters.AddWithValue("@AppDate", dateSelected.Value);
                        insertCmd.Parameters.AddWithValue("@AppTime", timeSelected.Value);
                        insertCmd.Parameters.AddWithValue("@AppStatus", "Scheduled");

                    }

                }
            }
            return doctorId;
        }

        public int GetPetById()
        {
            // Retrieve the pet's ID
            string sqlSelectPet = "SELECT Pet_Id FROM Pets WHERE Pet_Id = @PetId";
            int petId = 3; // Replace with the actual pet ID

            using (SqlCommand selectCmdPet = new SqlCommand(sqlSelectPet, conn))
            {
                selectCmdPet.Parameters.AddWithValue("@PetId", petId);
                // Execute the SELECT queries to retrieve IDs               
                object petResult = selectCmdPet.ExecuteScalar();

                // Check if all necessary IDs were found

                if (petResult != null && petResult != DBNull.Value)
                {

                    int petIdResult = (int)petResult;


                    // Insert the appointment
                    string sqlInsert = "INSERT INTO Appointments (Appointment_ID, Customer_Id, Doctor_Id, Pet_Id, Description, App_Date, App_Time, App_Status) " +
                        "VALUES (@AppointmentId, @CustomerId, @DoctorId, @PetId, @Description, @AppDate, @AppTime, @AppStatus)";

                    using (SqlCommand insertCmd = new SqlCommand(sqlInsert, conn))
                    {
                        // Replace with the actual values
                        insertCmd.Parameters.AddWithValue("@AppointmentId", 5); // Replace with the actual Appointment_ID value

                        insertCmd.Parameters.AddWithValue("@PetId", petIdResult); // Use the retrieved Pet ID
                        insertCmd.Parameters.AddWithValue("@Description", textArea.Value);
                        insertCmd.Parameters.AddWithValue("@AppDate", dateSelected.Value);
                        insertCmd.Parameters.AddWithValue("@AppTime", timeSelected.Value);
                        insertCmd.Parameters.AddWithValue("@AppStatus", "Scheduled");
                    }

                }

            }
            return petId;
        }

        public void SendNotification(int userId, string message)
        {
            // Implement notification logic here (email, SMS, etc.)
            Console.WriteLine($"Notification sent to User ID {userId}: {message}");
        }
    }
}