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

namespace PersonalWebsite.web_forms
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            //If there are any validation errors, this method displays them at the bottom of the form
            

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
            } else
            {
                showValidationErrors();
            }
        }

        protected void showValidationErrors()
        {     
            //Insert a new message and a list under the Submit button to house validation error messages
            HtmlGenericControl errorListMessage = new HtmlGenericControl("p");
            errorListMessage.InnerText = "Please fix the following errors before submitting:";
            errorDiv.Controls.Add(errorListMessage);
        
            HtmlGenericControl errorList = new HtmlGenericControl("ul");
            errorDiv.Controls.Add(errorList);

            //Iterate through each validator on the page and validate them individually           
            foreach (BaseValidator validator in Page.Validators)
            {
                validator.Validate();
                //If the validator is not valid, add the error message to the errorList in errorDiv
                if (!validator.IsValid)
                {
                    HtmlGenericControl newLi = new HtmlGenericControl("li");
                    newLi.InnerText = validator.ErrorMessage;
                    errorList.Controls.Add(newLi);
                }
            }
        }
    }
}