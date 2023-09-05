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
    public partial class medicalRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string Symptoms()
        {
            return symptoms.Text;
        }
        private string Treatment()
        {
            return treatment.Text;
        }

        private string Prescription()
        {
            return prescription.Text;
        }

        private string MedicalNotes()
        {
            return medicalNotes.Text;
        }

        public void createMedicalRecord()
        {
            signin record = new signin();
            record.conn.Open();

            string sql = $"INSERT INTO Medical_Records VALUES('{Symptoms()}', '{Treatment()}', '{Prescription()}', '{MedicalNotes()}')";

            record.command = new SqlCommand(sql, record.conn);
            record.dataAdapt = new SqlDataAdapter();

            record.dataAdapt.InsertCommand = record.command;
            record.dataAdapt.InsertCommand.ExecuteNonQuery();

            record.conn.Close();
        }

        protected void btnAddRecord_Click(object sender, EventArgs e)
        {
            createMedicalRecord();
        }
    }
}