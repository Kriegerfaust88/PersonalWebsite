using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalWebsite.web_forms.RC_Configurator.new_component_forms
{
    public partial class NewServo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (IsValid)
            {
                //Create a new SQL connection using the connection string in Web.config
                SqlConnection con = new SqlConnection(
                    WebConfigurationManager.ConnectionStrings["ComponentsConnectionString"].ConnectionString);

                using (con)
                {
                    //Create a new SQL command with parameteres for inserting into Servos table of Components database
                    using (SqlCommand cmd = new SqlCommand(
                        "INSERT INTO Servos (name, weight, minVoltage, maxVoltage) VALUES(@name, @weight, @minVoltage, @maxVoltage)"))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@name", nameTextBox.Text);
                        cmd.Parameters.AddWithValue("@weight", weightTextBox.Text); ;
                        cmd.Parameters.AddWithValue("@minVoltage", minVoltageTextBox.Text);
                        cmd.Parameters.AddWithValue("@maxVoltage", maxVoltageTextBox.Text);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            } else
            {
                NewComponentValidation.showValidationErrors(errorDiv, Page);
            }
         
        }
    }
}