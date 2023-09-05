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
    public partial class deleteMedicalRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string petNames()
        {
            return petName.Text;
        }

        public void deleteMedicalRecords()
        {
            signin record = new signin();
            record.conn.Open();

            string sql = $"DELETE FROM Medical_Records WHERE Pet_Name = '{petNames()}'";

            record.command = new SqlCommand(sql, record.conn);
            record.dataAdapt = new SqlDataAdapter();

            record.dataAdapt.DeleteCommand = record.command;
            record.dataAdapt.DeleteCommand.ExecuteNonQuery();

            record.conn.Close();
        }


        public void btnDelete_Click(object sender, EventArgs e)
        {
            deleteMedicalRecords();
        }
    }
}