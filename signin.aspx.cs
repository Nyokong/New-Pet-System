using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace New_Pet_System
{
    public partial class signin : System.Web.UI.Page
    {

        public SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NewPetPals-Data.mdf;Integrated Security=True");
        public SqlCommand command;
        public SqlDataAdapter dataAdapt;
        public SqlDataReader dataRead;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();

            //lbl_conf.Text = "Successful";

            conn.Close();
        }
    }
}