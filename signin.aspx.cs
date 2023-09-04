using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


/*namespace New_Pet_System
{
    public partial class signin : System.Web.UI.Page
    {

        public SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NewPetPals-Data.mdf;Integrated Security=True");
        public SqlCommand command;
        public SqlDataAdapter dataAdapt;
        public SqlDataReader dataRead;

        protected void Page_Load(object sender, EventArgs e)
        { 
            // check for remember me cookie
            if (Request.Cookies["Email"] != null && Request.Cookies["Password"] != null)
            {
                txt_email.Text = Request.Cookies["Email"].Value;
                txt_pass.Attributes["value"] = Request.Cookies["Password"].Value;
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string email = txt_email.Text.Trim();
            string password = txt_pass.Text;

            if (AuthenticateUser(email, password))
            {
                Session["Email"] = email;

                if (RememberMe.Checked)
                {
                    HttpCookie rememberMeCookie = new HttpCookie("RememberMe");
                    rememberMeCookie.Values["Username"] = email;
                    rememberMeCookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(rememberMeCookie);
                    /**
                    // Show the modal
                    string script = "showModal();";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "ShowModalScript", script, true);*/
                /*}
                else
                {
                    if (Request.Cookies["RememberMe"] != null)
                    {
                        HttpCookie rememberMeCookie = new HttpCookie("RememberMe");
                        rememberMeCookie.Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies.Add(rememberMeCookie);
                    }
                }

                // Register a startup script to show the modal using jQuery
                string script = @"<script type='text/javascript'>
                            $(document).ready(function() {
                                $('#loginSuccessModal').modal('show');
                            });
                          </script>";

                ClientScript.RegisterStartupScript(this.GetType(), "ShowModalScript", script);

                // Trigger the Bootstrap modal after successful login
                ScriptManager.RegisterStartupScript(this, GetType(), "LoginSuccessScript", "$('#loginSuccessModal').modal('show');", true);

                //Response.Redirect("default.aspx"); // Redirect to the home page
            }
            else
            {
                lbl_conf.Text = "Invalid username or password.";
            }
        }

        // authenticate user
        private bool AuthenticateUser(string email, string password)
        {
            conn.Open();

            string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email AND Password = @Password";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@Email", email);
            command.Parameters.AddWithValue("@Password", password);
            int count = Convert.ToInt32(command.ExecuteScalar());

            
            // close the connection
            conn.Close();

            // if the user is available return true;
            return count > 0;
/*
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

*/
  //      }

//    }
//}
