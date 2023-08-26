using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace New_Pet_System
{

    public partial class signup : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|/Pet-Pals-Database.mdf;Integrated Security=True");
        SqlCommand command;
        SqlDataReader dataReader;
        SqlDataAdapter dataAdapt;
  
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }

}

