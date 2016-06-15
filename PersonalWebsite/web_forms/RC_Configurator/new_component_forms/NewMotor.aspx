<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewMotor.aspx.cs" Inherits="PersonalWebsite.web_forms.RC_Configurator.new_component_forms.NewMotor" %>

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
                <h1>New Motor</h1>
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
                <asp:RequiredFieldValidator ID="WeightValidator" runat="server" ControlToValidate="weightTextBox" ErrorMessage="Weight is required"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="kvLabel" runat="server" Text="Speed (KV):"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="kvTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <asp:RequiredFieldValidator ID="kvValidator" runat="server" ControlToValidate="kvTextBox" ErrorMessage="Speed is Required"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="maxCurrentLabel" runat="server" Text="Max. Current(A):"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="maxCurrentTextBox" runat="server"></asp:TextBox>
                    </div>

                </div>
                <asp:RequiredFieldValidator ID="maxCurrentValidator" runat="server" ControlToValidate="maxCurrentTextBox" ErrorMessage="Max Current is Required"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="maxVoltageLabel" runat="server" Text="Max. Voltage(V):"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="maxVoltageTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <asp:RequiredFieldValidator ID="maxVoltageValidator" runat="server" ControlToValidate="maxVoltageTextBox" ErrorMessage="Max Voltage is Required"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="minCellCountLabel" runat="server" Text="Min. Cell Count:"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:DropDownList ID="minCellDropdown" runat="server">
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
                <asp:RequiredFieldValidator ID="minCellValidator" runat="server" ControlToValidate="minCellDropdown" ErrorMessage="Minimum Cell is Required"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="maxCellCountLabel" runat="server" Text="Max. Cell Count:"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:DropDownList ID="maxCellDropdown" runat="server">
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
                <asp:RequiredFieldValidator ID="maxCellValidator" runat="server" ControlToValidate="maxCellDropdown" ErrorMessage="Maximum Cell is Required"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="reqEscAmpsLabel" runat="server" Text="Required ESC Current(A):"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="reqEscAmpsTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <asp:RequiredFieldValidator ID="reqEscCurrentValidator" runat="server" ControlToValidate="reqEscAmpsTextBox" ErrorMessage="ESC Current is Required"></asp:RequiredFieldValidator>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="maxPowerLabel" runat="server" Text="Max Power:"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="maxPowerTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <asp:RequiredFieldValidator ID="maxPowerValidator" runat="server" ControlToValidate="maxPowerTextBox" ErrorMessage="Max. Power is Required"></asp:RequiredFieldValidator>
                <br />
                <br />

                <div class="sumbissionControls">
                    <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
                </div>
            </div>
            <br />


        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ComponentsConnectionString %>" ProviderName="<%$ ConnectionStrings:ComponentsConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Batteries]"></asp:SqlDataSource>
    </form>
</body>
</html>
