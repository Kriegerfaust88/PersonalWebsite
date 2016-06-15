<%@ Page Title="Components" Language="C#" MasterPageFile="~/web_forms/master_pages/ConfiguratorMaster.Master" AutoEventWireup="true" CodeBehind="Components.aspx.cs" Inherits="PersonalWebsite.web_forms.RC_Configurator.Components" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <script src="../../scripts/jquery-2.2.3.js"></script>
    <script src="../../scripts/Components.js"></script>
    <style>
        .modalBackground {
            background-color: Black;
            filter: alpha(opacity=60);
            opacity: 0.6;
        }

        #PopupFrame {
            height: 500px;
            width: 600px;
        }

        .modalPopup {
            background-color: #FFFFFF;
            border: 3px solid #0DA9D0;
            padding: 0;
        }
    </style>



    <asp:Panel ID="pnlPopup" runat="server" Style="display: none; width: auto; height: auto" CssClass="modalPopup">
        <iframe id="PopupFrame" ></iframe>
        <br />
        <asp:Button ID="cancelButton" runat="server" Text="Cancel" />
    </asp:Panel>


    <div class="HeadingContainer">
        <h2>Components</h2>
        <p>View and add components here</p>
    </div>

    <asp:UpdatePanel runat="server" ID="dataGridPanel">

        <ContentTemplate>
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

            <asp:ModalPopupExtender ID="MPE" BehaviorID="mpe" runat="server" PopupControlID="pnlPopup" BackgroundCssClass="modalBackground" TargetControlID="AddNewButton" CancelControlID="cancelButton"></asp:ModalPopupExtender>
            <div id="DropdownListContainer">
                <asp:DropDownList ID="ComponentSelectDropdown" runat="server" OnSelectedIndexChanged="LoadGridView" AutoPostBack="true">
                    <asp:ListItem Value="Default">Choose a component type...</asp:ListItem>
                    <asp:ListItem>Batteries</asp:ListItem>
                    <asp:ListItem>Motors</asp:ListItem>
                    <asp:ListItem>Propellers</asp:ListItem>
                    <asp:ListItem>Receivers</asp:ListItem>
                    <asp:ListItem>Servos</asp:ListItem>
                    <asp:ListItem>Speed Controllers</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
        <asp:Button ID="AddNewButton" runat="server" Text="Add new..." OnClick="AddNewButton_Click" />

                <br />

                <div id="GridViewContainer">
                    <h3 id="GridViewTitle">
                        <asp:GridView ID="ComponentGridView" runat="server" EnableViewState="False">
                        </asp:GridView>
                        <asp:SqlDataSource ID="ReceiverDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ComponentsConnectionString %>" SelectCommand="SELECT * FROM [Receivers]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="BatteryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ComponentsConnectionString %>" SelectCommand="SELECT * FROM [Batteries]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="MotorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ComponentsConnectionString %>" SelectCommand="SELECT * FROM [Motors]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="ServoDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ComponentsConnectionString %>" SelectCommand="SELECT * FROM [Servos]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="PropellerDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ComponentsConnectionString %>" SelectCommand="SELECT * FROM [Propellers]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SpeedControllerDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ComponentsConnectionString %>" SelectCommand="SELECT * FROM [SpeedControllers]"></asp:SqlDataSource>
                    </h3>

                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
