<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewBattery.aspx.cs" Inherits="PersonalWebsite.web_forms.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../../styles/NewComponentStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .sumbissionControls {
            height: 51px;
        }
    </style>
    <script src="../../scripts/jquery-2.2.3.js"></script>
    <script src="../../../scripts/new_component_scripts/newBatteryValidation.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="mainContent">
            <div id="heading">
                <h1>New Battery</h1>
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
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
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
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="WeightValidator" runat="server" ControlToValidate="weightTextBox" ErrorMessage="Weight is required"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="capacityLabel" runat="server" Text="Capacity (mAh): "></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="capacityTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="CapacityValidator" runat="server" ControlToValidate="capacityTextBox" ErrorMessage="Capacity is Required"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="configurationLabel" runat="server" Text="Cell Configuration: "></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:DropDownList ID="configDropdown" runat="server">
                            <asp:ListItem Value="Default">Choose...</asp:ListItem>
                            <asp:ListItem>2S</asp:ListItem>
                            <asp:ListItem>3S</asp:ListItem>
                            <asp:ListItem>4S</asp:ListItem>
                            <asp:ListItem>5S</asp:ListItem>
                            <asp:ListItem>6S</asp:ListItem>
                            <asp:ListItem>7S</asp:ListItem>
                            <asp:ListItem>8S</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="CellConfigValidator" runat="server" ControlToValidate="configDropdown" ErrorMessage="Choose a cell configuration"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="contDischargeLabel" runat="server" Text="Continuous Discharge Rate (C): "></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="contDischargeTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="ContDischargeValidator" runat="server" ControlToValidate="contDischargeTextBox" ErrorMessage="Cont. Discharge Rate is required"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="peakDischargeLabel" runat="server" Text="Peak Discharge Rate (C): "></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="peakDischargeTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="PeakDischargeValidator" runat="server" ControlToValidate="peakDischargeTextBox" ErrorMessage="Peak Discharge Rate is required"></asp:RequiredFieldValidator>
                <br />
                <br />
                <div class="sumbissionControls">
                    <br />
                    <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
                </div>
                <div style="height: 196px; width: 662px;" class="validationContainer">
                    <asp:RegularExpressionValidator CssClass="error" ID="weightRegexValidator" runat="server" ControlToValidate="weightTextBox" ErrorMessage="Weight can only contain a numeric value" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator CssClass="error" ID="nameRegexValidator" runat="server" ErrorMessage="Name must consist of alphanumeric characters" ControlToValidate="nameTextBox" ValidationExpression="^[a-zA-Z0-9_]*$"></asp:RegularExpressionValidator>
                    <asp:Panel ID="validatorPanel" runat="server" Height="163px" Width="646px">
                        <ul id="errors" runat="server">
                        </ul>
                    </asp:Panel>
                </div>
            </div>
            <br />
        </div>
    </form>
</body>
</html>
