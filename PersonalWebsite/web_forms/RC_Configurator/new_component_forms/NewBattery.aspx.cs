using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Web.UI.HtmlControls;
using PersonalWebsite.web_forms.RC_Configurator.new_component_forms;

namespace PersonalWebsite.web_forms
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            //Validate the page
            Page.Validate();

            if (IsValid)
            {
                //Create a new SQL connection using the connection string in Web.config
                SqlConnection con = new SqlConnection(
                    WebConfigurationManager.ConnectionStrings["ComponentsConnectionString"].ConnectionString);
                using (con)
                {
                    //Create a new SQL command with parameteres for inserting into Batteries table of Components database
                    using (SqlCommand cmd = new SqlCommand(
                        "INSERT INTO Batteries (name, capacity, configuration, contDischargeRate, peakDischargeRate, weight) VALUES(@name, @capacity, @configuration, @contDischargeRate, @peakDischargeRate, @weight)"))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@name", nameTextBox.Text);
                        cmd.Parameters.AddWithValue("@capacity", capacityTextBox.Text);
                        cmd.Parameters.AddWithValue("@configuration", configDropdown.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@contDischargeRate", contDischargeTextBox.Text);
                        cmd.Parameters.AddWithValue("@peakDischargeRate", peakDischargeTextBox.Text);
                        cmd.Parameters.AddWithValue("@weight", weightTextBox.Text);
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