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
        public SqlCommand command;
        public SqlDataAdapter dataAdapt;
        public SqlDataReader dataRead;
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void Signup_Click(object sender, EventArgs e)
        {

        }

        protected void Agree_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}

