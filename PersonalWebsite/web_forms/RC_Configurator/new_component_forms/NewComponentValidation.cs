using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace PersonalWebsite.web_forms.RC_Configurator.new_component_forms
{
    public class NewComponentValidation
    {

        public static void showValidationErrors(HtmlGenericControl errorDiv, Page page)
        {
            //Insert a new message and a list under the Submit button to house validation error messages
            HtmlGenericControl errorListMessage = new HtmlGenericControl("p");
            errorListMessage.InnerText = "Please fix the following errors before submitting:";
            errorDiv.Controls.Add(errorListMessage);

            HtmlGenericControl errorList = new HtmlGenericControl("ul");
            errorDiv.Controls.Add(errorList);

            //Iterate through each validator on the page and validate them individually           
            foreach (BaseValidator validator in page.Validators)
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
