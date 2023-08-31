using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace New_Pet_System
{
    public partial class signin : System.Web.UI.Page
    {

        public SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NewPetPals-Data.mdf;Integrated Security=True");
        public SqlCommand command;
        public SqlDataAdapter dataAdapt;
        public SqlDataReader dataRead;

        protected void Page_Load(object sender, EventArgs e)
        { 
        
        
        
        
        
        
        }
        class Program
        {
            static void Main(string[] args)
            {
                string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
                SqlConnection connection = new SqlConnection(connectionString);

                try
                {
                    connection.Open();
                    Console.WriteLine("Connection successful!");

                    string query = "INSERT INTO Chatbot (Question, Answer) VALUES ('What is your name?', 'My name is Chatbot')";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.ExecuteNonQuery();

                    Console.WriteLine("Data inserted successfully!");
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }

        }

    }
}
