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
    public partial class signin : System.Web.UI.Page
    {
        public SqlConnection conn;
        public DataSet ds;
        public SqlDataAdapter adapter;
        public SqlCommand cmd;

        private string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PetPalsClinic.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);

            conn = new SqlConnection(constr);
            adapter = new SqlDataAdapter();
            ds = new DataSet();

            conn.Open();

            lbl_conf.Text = "Database Connection Successfull";

            string sql = @"SELECT * FROM Users";
            cmd = new SqlCommand(sql, conn);
            adapter.SelectCommand = cmd;
            adapter.Fill(ds);


            conn.Close();
        }
    }
}