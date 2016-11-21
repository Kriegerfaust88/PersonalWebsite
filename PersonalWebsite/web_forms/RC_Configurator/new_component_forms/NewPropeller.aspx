<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPropeller.aspx.cs" Inherits="PersonalWebsite.web_forms.RC_Configurator.new_component_forms.NewPropeller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../../styles/NewComponentStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="mainContent">
            <div id="heading">
                <h1>New Propeller</h1>
            </div>
            <div id="formContainer">
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="nameLabel" runat="server" Text="Name: "></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="paddingDiv"></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="weightLabel" runat="server" Text="Weight (g): "></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="weightTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="bladeLengthLabel" runat="server" Text="Blade Length (inches):"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="bladeLengthTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="bladePitchLabel" runat="server" Text="Blade Pitch (inches):"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="bladePitchTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="bladeCountLabel" runat="server" Text="Blade Count:"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:DropDownList ID="bladeCountDropdown" runat="server">
                            <asp:ListItem Value="Default">Choose...</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div class="sumbissionControls">
                    <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" CausesValidation="False" />
                </div>
                <div id="errorDiv" runat="server">

                </div>
            </div>
            <br />
        </div>
        <div id="validators">
        <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="WeightValidator" runat="server" ControlToValidate="weightTextBox" ErrorMessage="Weight is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="bladeLengthValidator" runat="server" ControlToValidate="bladeLengthTextBox" ErrorMessage="Blade Length is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="bladePitchValidator" runat="server" ControlToValidate="bladePitchTextBox" ErrorMessage="Blade Pitch is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="bladeCountValidator" runat="server" ControlToValidate="bladeCountDropdown" ErrorMessage="Blade Count is required"></asp:RequiredFieldValidator>
    </div>
    </form>
    
</body>
</html>
