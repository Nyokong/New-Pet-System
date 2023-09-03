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



        protected void first_name_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

            customer.conn.Open();

            if (cbxCheck.Checked == true)
            {
                string sql = $"UPDATE Users SET FName = @NewFirstName, LName = @NewLastName, PhoneNumber = @NewPhoneNumber WHERE Email = @UserEmail";

                customer.command = new SqlCommand();

                customer.command.Parameters.AddWithValue("@NewFirstName", first_name);
                customer.command.Parameters.AddWithValue("@NewLastName", last_name);
                customer.command.Parameters.AddWithValue("@UserEmail", userEmail);

                customer.command = new SqlCommand(sql, customer.conn);

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