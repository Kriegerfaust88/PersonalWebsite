<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewSpeedController.aspx.cs" Inherits="PersonalWebsite.web_forms.RC_Configurator.new_component_forms.NewSpeedController" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../../styles/NewComponentStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form2" runat="server">
        <div id="mainContent">
            <div id="heading">
                <h1>New Speed Controller</h1>
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
                        <asp:Label ID="constCurrentLabel" runat="server" Text="Constant Current (A):"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="constCurrentTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="burstCurrentLabel" runat="server" Text="Burst Current (A):"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:TextBox ID="burstCurrentTextBox" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="minCellLabel" runat="server" Text="Min. Cell Count:"></asp:Label>
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
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="maxCellLabel" runat="server" Text="Max. Cell Count:"></asp:Label>
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
                <div></div>
                <br />
                <div class="fieldContainer">
                    <div class="labelContainer">
                        <asp:Label ID="circuitLabel" runat="server" Text="Circuit Type:"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:DropDownList ID="circuitDropdown" runat="server">
                            <asp:ListItem Value="Default">Choose...</asp:ListItem>
                            <asp:ListItem>No BEC</asp:ListItem>
                            <asp:ListItem>BEC</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="sumbissionControls">
                    <br />
                    <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" CausesValidation="False" />
                </div>
                <div id ="errorDiv" runat="server">

                </div>
            </div>
            <br />
        </div>
        <div id="validators">
            <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="WeightValidator" runat="server" ControlToValidate="weightTextBox" ErrorMessage="Weight is required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="constCurrentValidator" runat="server" ControlToValidate="constCurrentTextBox" ErrorMessage="Constant Current is required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="burstCurrentValidator" runat="server" ErrorMessage="Burst Current is required" ControlToValidate="burstCurrentTextBox"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="minCellValidator" runat="server" ErrorMessage="Min. Cell is required" ControlToValidate="minCellDropdown"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="maxCellValidator" runat="server" ErrorMessage="Max. Cell is required" ControlToValidate="maxCellDropdown"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="circuitValidator" runat="server" ControlToValidate="circuitDropdown" ErrorMessage="Circuit Type is required"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>
