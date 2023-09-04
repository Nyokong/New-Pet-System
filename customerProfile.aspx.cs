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
    public partial class customerProfile : System.Web.UI.Page
    {
        signin customer = new signin();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

            customer.conn.Open();

            if (cbxCheck.Checked == true)
            {
                string sql = $"UPDATE Users SET FName = @NewFirstName, LName = @NewLastName, PNumber = @NewPhoneNumber, Email = @UserEmail WHERE Email = @Username";

                customer.command = new SqlCommand(sql, customer.conn);

                customer.command.Parameters.AddWithValue("@NewFirstName", first_name.Text);
                customer.command.Parameters.AddWithValue("@NewLastName", last_name.Text);
                customer.command.Parameters.AddWithValue("@NewPhoneNumber", txtPhone.Text);
                customer.command.Parameters.AddWithValue("@UserEmail", userMail.Text);

                string userEmail = User.Identity.Name; // Get the user's email from the authenticated user

                customer.command.Parameters.AddWithValue("@Username", userEmail);

                customer.dataAdapt = new SqlDataAdapter();

                customer.dataAdapt.UpdateCommand = customer.command;
                customer.dataAdapt.UpdateCommand.ExecuteNonQuery();

            }

            customer.conn.Close();

        }

        protected void userEmail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}