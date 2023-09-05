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
    public partial class updateMedicalRecord : System.Web.UI.Page
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

        public void updateMedicalRecords()
        {
            signin record = new signin();
            record.conn.Open();

            string sql = $"UPDATE Medical_Records SET Symptoms = 'Symptoms()', Treatment = 'Treatment()', Prescription = 'Prescription()', Medical_Notes = 'MedicalNotes()' WHERE ";

            record.command = new SqlCommand(sql, record.conn);
            record.dataAdapt = new SqlDataAdapter();

            record.dataAdapt.UpdateCommand = record.command;
            record.dataAdapt.UpdateCommand.ExecuteNonQuery();

            record.conn.Close();
        }

        protected void btnUpdateMedicalRecord_Click(object sender, EventArgs e)
        {
            updateMedicalRecords();
        }
    }
}