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

            if(Session["UserID"] !=null)
            {
                Response.Redirect("default.aspx");
            }
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

        protected void Email_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Phone_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Agree_CheckedChanged(object sender, EventArgs e)
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

            string script = @"<script type='text/javascript'>
                            $(document).ready(function() {
                                $('#SignUpSuccessModal').modal('show');
                            });
                          </script>";

            ClientScript.RegisterStartupScript(this.GetType(), "ShowModalScript", script);

            // Trigger the Bootstrap modal after successful login
            ScriptManager.RegisterStartupScript(this, GetType(), "SignUpSuccessScript", "$('#SignUpSuccessModal').modal('show');", true);

        }
    }
}

