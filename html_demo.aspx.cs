using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace New_Pet_System
{
    public partial class html_demo : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Scon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string getStudentData()
        {
            string data = "";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "UspGetStudents";
                    cmd.Connection.Open();
                    using (SqlDataReader sqlRdr = cmd.ExecuteReader())
                    {
                        // table = new DataTable();  
                        // table.Load(reader);  
                        if (sqlRdr.HasRows)
                        {
                            while (sqlRdr.Read())
                            {
                                int studentId = sqlRdr.GetInt32(0);
                                string Name = sqlRdr.GetString(1);
                                string EmailAddress = sqlRdr.GetString(2);
                                string Gender = sqlRdr.GetString(3);
                                data += "<tr><td>" + studentId + "</td><td>" + Name + "</td><td>" + EmailAddress + "</td><td>" + Gender + "</td></tr>";
                            }
                        }
                    }
                }
                return data;
            }
        }
    }
}