using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalWebsite.web_forms.RC_Configurator
{
    public partial class Components : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                MPE.Hide();
            }
        }    

        protected void LoadGridView(object sender, EventArgs e)
        {
            //Store the selected value from the component drop down list
            var selectedValue = ComponentSelectDropdown.SelectedValue;

            //Clear Grid view coloumns and make sure AutoGenerateColumns is enabled
            ComponentGridView.Columns.Clear();
            ComponentGridView.AutoGenerateColumns = true;

            //Set new data source based on selection
            switch (selectedValue)
            {
                case "Batteries":
                    ComponentGridView.DataSource = BatteryDataSource;
                    break;

                case "Motors":
                    ComponentGridView.DataSource = MotorDataSource;
                    break;

                case "Propellers":
                    ComponentGridView.DataSource = PropellerDataSource;
                    break;

                case "Receivers":
                    ComponentGridView.DataSource = ReceiverDataSource;
                    break;

                case "Servos":
                    ComponentGridView.DataSource = ServoDataSource;
                    break;

                case "Speed Controllers":
                    ComponentGridView.DataSource = SpeedControllerDataSource;
                    break;
            }

            //Bind the new data source to the control
            ComponentGridView.DataBind();
        }

        protected void AddNewButton_Click(object sender, EventArgs e)
        {       
            //Call the show method of the Modal Popup Extender to display the New Component Popup          
            MPE.Show();
        }
    }
}