using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace New_Pet_System
{
    public partial class passwordForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void updatePassword()
        {
            signin customer = new signin();
            customer.conn.Open();

            string sql = $"UPDATE FROM Customers WHERE Email = '{username}'";

            customer.command = new SqlCommand(sql, customer.conn);
            customer.dataAdapt = new SqlDataAdapter();
            
            customer.dataAdapt.UpdateCommand = customer.command;
            customer.dataAdapt.UpdateCommand.ExecuteNonQuery();
            
            customer.conn.Close();
        }
    }
}