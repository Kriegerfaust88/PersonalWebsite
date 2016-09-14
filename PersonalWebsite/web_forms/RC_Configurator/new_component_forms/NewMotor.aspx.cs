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
    public partial class NewMotor : System.Web.UI.Page
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
                    //Create a new SQL command with parameteres for inserting into Motors table of Components database
                    using (SqlCommand cmd = new SqlCommand(
                        "INSERT INTO Motors (name, kv, maxCurrent, maxVoltage, maxPower, battMinCell, battMaxCell, requiredEscAmps, weight) VALUES(@name, @kv, @maxCurrent, @maxVoltage @maxPower, @battMinCell, @battMaxCell, @requiredEscAmps, @weight)"))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@name", nameTextBox.Text);
                        cmd.Parameters.AddWithValue("@kv", kvTextBox.Text);
                        cmd.Parameters.AddWithValue("@maxCurrent", maxCurrentTextBox.Text);
                        cmd.Parameters.AddWithValue("@maxVoltage", maxVoltageTextBox.Text);
                        cmd.Parameters.AddWithValue("@maxPower", maxPowerTextBox.Text);
                        cmd.Parameters.AddWithValue("@weight", weightTextBox.Text);
                        cmd.Parameters.AddWithValue("@battMinCell", minCellDropdown.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@battMaxCell", maxCellDropdown.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@requiredEscAmps", reqEscAmpsTextBox.Text);
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