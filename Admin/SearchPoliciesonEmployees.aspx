<%@ Page Title="Admin- Search Policies" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="SearchPoliciesonEmployees.aspx.cs" Inherits="Admin_SearchPoliciesonEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <br />
        <asp:Label ID="Label1" runat="server" Text="EMPLOYEES BASED ON POLICIES" Font-Bold="True"
            Font-Names="Cambria" Font-Size="14pt" Font-Underline="True" ForeColor="#990000"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Policies:" Font-Names="Calibri" ForeColor="Black"></asp:Label>
        <asp:DropDownList ID="ddlpolacyname" runat="server" DataValueField="policyid" AutoPostBack="True"
            OnSelectedIndexChanged="ddlpolacyname_SelectedIndexChanged" Font-Names="Calibri"
            Font-Size="11pt" Width="180px" Height="25px" Style="margin-left: 8px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="grd" runat="server" AutoGenerateColumns="False" AllowPaging="True"
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="3"
            Width="100%" OnSelectedIndexChanged="grd_SelectedIndexChanged" Style="margin-top: 0px"
            CellSpacing="2">
            <FooterStyle BackColor="White" ForeColor="Black" Font-Names="Calibri" />
            <Columns>
                <asp:BoundField DataField="policyid" HeaderText="PolicyId" />
                <asp:BoundField DataField="policydesc" HeaderText="Policydesc" />
                <asp:BoundField DataField="amount" HeaderText="amount" />
                <asp:BoundField DataField="empno" HeaderText="empno" />
            </Columns>
            <EmptyDataTemplate>
                No employee has taken the policy till now!</EmptyDataTemplate>
            <RowStyle ForeColor="Black" Font-Names="Calibri" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" Font-Names="Calibri" />
            <HeaderStyle BackColor="#009999" Font-Bold="True" ForeColor="White" Font-Names="Calibri" />
        </asp:GridView>
    </center>
</asp:Content>
