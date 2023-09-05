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
    public partial class customerSettings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void deleteCustomer()
        {
            signin customer = new signin();
            customer.conn.Open();

            string sql = $"DELETE FROM Customer WHERE Email = '{exampleCheck1}'";

            customer.command = new SqlCommand(sql, customer.conn);
            customer.dataAdapt = new SqlDataAdapter();

            customer.dataAdapt.DeleteCommand = customer.command;
            customer.dataAdapt.DeleteCommand.ExecuteNonQuery();

            customer.conn.Close();
        }
    }
}