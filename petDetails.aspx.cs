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
    public partial class petDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public void addPetDetails()
        {
            signin record = new signin();
            record.conn.Open();

            string sql = $"INSERT INTO Pets VALUES('{petName}', '{species}', '{dateOfBirth}')";

            record.command = new SqlCommand(sql, record.conn);
            record.dataAdapt = new SqlDataAdapter();

            record.dataAdapt.DeleteCommand = record.command;
            record.dataAdapt.DeleteCommand.ExecuteNonQuery();

            record.conn.Close();
        }




    }
}