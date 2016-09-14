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
    public partial class NewSpeedController : System.Web.UI.Page
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
                    //Create a new SQL command with parameteres for inserting into SpeedControllers table of Components database
                    using (SqlCommand cmd = new SqlCommand(
                        "INSERT INTO SpeedControllers (name, weight, constCurrent, burstCurrent, minCell, maxCell, circuitType) VALUES(@name, @weight, @constCurrent, @burstCurrent, @minCell, @maxCell, @circuitType)"))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@name", nameTextBox.Text);
                        cmd.Parameters.AddWithValue("@weight", weightTextBox.Text);
                        cmd.Parameters.AddWithValue("@constCurrent", constCurrentLabel.Text);
                        cmd.Parameters.AddWithValue("@burstCurrent", burstCurrentLabel.Text);
                        cmd.Parameters.AddWithValue("@minCell", minCellDropdown.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@maxCell", maxCellDropdown.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@circuitType", circuitDropdown.SelectedValue.ToString());
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            else
            {
                NewComponentValidation.showValidationErrors(errorDiv, Page);
            }
        }
    }
}