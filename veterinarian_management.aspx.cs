using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Web.UI.HtmlControls;


namespace New_Pet_System
{
    public partial class veterinarian_management : System.Web.UI.Page
    {

        // Define a class to represent your data
        public class Vet
        {
            public int DoctorID { get; set; }
            public string LastName { get; set; }
            public string FirstName { get; set; }
            public string Speciality { get; set; }
            public string ContactNo { get; set; }
        }

        // Replace "YourConnectionString" with your actual database connection string
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\43663575\Source\Repos\Nyokong\New-Pet-System\App_Data\NewPetPals-Data.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateVetTable();
            }
        }

        private void PopulateVetTable()
        {
            List<Vet> vets = GetVetDataFromDatabase(); // Implement this method to fetch data

            if (vets != null && vets.Count > 0)
            {
                StringBuilder tableHtml = new StringBuilder();

                foreach (var vet in vets)
                {
                    tableHtml.Append("<tr>");
                    tableHtml.Append("<td>" + vet.DoctorID + "</td>");
                    tableHtml.Append("<td>" + vet.LastName + "</td>");
                    tableHtml.Append("<td>" + vet.FirstName + "</td>");
                    tableHtml.Append("<td>" + vet.Speciality + "</td>");
                    tableHtml.Append("<td>" + vet.ContactNo + "</td>");
                    tableHtml.Append("</tr>");
                }

                // Assuming you have an HTML element with the ID "vetTable" to inject the table HTML
                var vetTable = Page.FindControl("vetTable") as HtmlGenericControl;

                if (vetTable != null)
                {
                    vetTable.InnerHtml = tableHtml.ToString();
                }
            }
        }

        // Implement this method to retrieve data from your database
        private List<Vet> GetVetDataFromDatabase()
        {
            List<Vet> vets = new List<Vet>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand($"SELECT Doctor_ID, L_Name, F_Name, Speciality, Contact_No FROM Veterinarian", conn))
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Vet vet = new Vet
                        {
                            DoctorID = reader.GetInt32(0),
                            LastName = reader.GetString(1),
                            FirstName = reader.GetString(2),
                            Speciality = reader.GetString(3),
                            ContactNo = reader.GetString(4)
                        };
                        vets.Add(vet);
                    }
                }
            }

            return vets;
        }



    }
}
