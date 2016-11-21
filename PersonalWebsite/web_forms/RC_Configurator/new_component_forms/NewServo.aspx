<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewServo.aspx.cs" Inherits="PersonalWebsite.web_forms.RC_Configurator.new_component_forms.NewServo" %>

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
                <h1>New Servo</h1>
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
                <br />
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="minVoltageLabel" runat="server" Text="Min. Voltage (V):"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="minVoltageTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="maxVoltageLabel" runat="server" Text="Max. Voltage (V):"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="maxVoltageTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="sumbissionControls">
                    <br />
                    <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" CausesValidation="False" />
                </div>
                <div id="errorDiv" runat="server">
                    
                </div>
            </div>
            <br />


        </div>
        <div id="validators">
                <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Name is required" Display="None"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="WeightValidator" runat="server" ControlToValidate="weightTextBox" ErrorMessage="Weight is required"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="minVoltageValidator" runat="server" ControlToValidate="minVoltageTextBox" ErrorMessage="Min. Voltage is required" Display="None"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="maxVoltageValidator" runat="server" ControlToValidate="maxVoltageTextBox" ErrorMessage="Max. Voltage is required" Display="None"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>
