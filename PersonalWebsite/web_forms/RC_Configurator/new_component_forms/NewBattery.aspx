﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewBattery.aspx.cs" Inherits="PersonalWebsite.web_forms.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../../styles/NewComponentStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .sumbissionControls {
            height: auto;
        }
    </style>
    
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
                <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Name is required" style="display:none"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="nameRegexValidator" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Name must consist only of alphanumeric characters" style="display:none" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
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
                <asp:RequiredFieldValidator ID="WeightValidator" runat="server" ControlToValidate="weightTextBox" ErrorMessage="Weight is required" style="display:none"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="weightRegexValidator" runat="server" ControlToValidate="weightTextBox" ErrorMessage="Weight must be a numeric value with no decimals" ValidationExpression="^[0-9]*$" style="display:none"></asp:RegularExpressionValidator>
                <asp:RangeValidator ID="weightRangevalidator" runat="server" ControlToValidate="weightTextBox" ErrorMessage="Weight must be a value from 1 - 1500" MaximumValue="1500" MinimumValue="1" style="display:none"></asp:RangeValidator>
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
                <asp:RequiredFieldValidator ID="CapacityValidator" runat="server" ControlToValidate="capacityTextBox" ErrorMessage="Capacity is Required" style="display:none"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="capacityRegexValidator" runat="server" ControlToValidate="capacityTextBox" ErrorMessage="Capacity must be a numeric value" ValidationExpression="^[0-9]*$" style="display:none"></asp:RegularExpressionValidator>
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
                <asp:RequiredFieldValidator ID="CellConfigValidator" runat="server" ControlToValidate="configDropdown" ErrorMessage="Choose a cell configuration" style="display:none"></asp:RequiredFieldValidator>
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
                <asp:RequiredFieldValidator ID="ContDischargeValidator" runat="server" ControlToValidate="contDischargeTextBox" ErrorMessage="Continuous Discharge Rate is required" style="display:none"></asp:RequiredFieldValidator>
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
                <asp:RequiredFieldValidator ID="PeakDischargeValidator" runat="server" ControlToValidate="peakDischargeTextBox" ErrorMessage="Peak Discharge Rate is required" style="display:none"></asp:RequiredFieldValidator>
                <br />
                <br />
                <div class="sumbissionControls">
                    <br />
                    <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" CausesValidation="False" />
                </div>
                <br />
                <div id="errorDiv" runat="server">
                    
                </div>
            </div>
            <br />
        </div>
    </form>
</body>
</html>
