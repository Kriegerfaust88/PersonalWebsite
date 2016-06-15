<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewReceiver.aspx.cs" Inherits="PersonalWebsite.web_forms.RC_Configurator.new_component_forms.NewReceiver" %>

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
                <h1>New Receiver</h1>
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
                        <asp:Label ID="channelCountLabel" runat="server" Text="Channels:"></asp:Label>
                    </div>
                    <div class="inputContainer">
                        <asp:DropDownList ID="channelCountDropdown" runat="server">
                            <asp:ListItem Value="Default">Choose...</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <asp:RequiredFieldValidator ID="channelValidator" runat="server" ControlToValidate="channelCountDropdown" ErrorMessage="Channel number is required"></asp:RequiredFieldValidator>
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
                <asp:RequiredFieldValidator ID="minVoltageValidator" runat="server" ControlToValidate="minVoltageTextBox" ErrorMessage="Min. Voltage is required"></asp:RequiredFieldValidator>
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
                <asp:RequiredFieldValidator ID="maxVoltageValidator" runat="server" ControlToValidate="maxVoltageTextBox" ErrorMessage="Max. Voltage is required"></asp:RequiredFieldValidator>
                <br />
                <div class="sumbissionControls">
                    <br />
                    <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
                </div>
            </div>
            <br />


        </div>
    </form>
</body>
</html>
