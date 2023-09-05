using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace New_Pet_System
{

    public partial class signup : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NewPetPals-Data.mdf;Integrated Security=True");
        public SqlCommand cmd;
        public SqlDataAdapter adapter;
        public SqlDataReader dataRead;
        string firstname, lastname, email, password, phone;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserID"] != null)
            {
                Response.Redirect("default.aspx");
            }

            // user must agree to terms and conditions
            btnSubmit.Enabled = false;
        }

        protected void First_name_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Lastname_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void cbbAgree_CheckedChanged1(object sender, EventArgs e)
        {
            btnSubmit.Enabled = cbbAgree.Checked;
        }

        protected void Email_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Phone_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            firstname = txtFirst_name.Text;
            lastname = txtLastname.Text;
            email = txtEmail.Text;
            phone = txtPhone.Text;
            password = txtPassword.Text;

            conn.Open();
            string sqlInsert = "INSERT INTO Users VALUES('" + firstname + "','" + lastname + "','" + email + "','" + phone + "','" + password + "')";
            cmd = new SqlCommand(sqlInsert, conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            txtEmail.Text = "";
            txtFirst_name.Text = "";
            txtLastname.Text = "";
            txtPassword.Text = "";
            txtPhone.Text = "";

            Session["UserID"] = email;
            HttpCookie userCookie = new HttpCookie("UserCookie");
            userCookie.Value = email;
            userCookie.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(userCookie);
            Response.Redirect("default.aspx");
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

        }
    }
}