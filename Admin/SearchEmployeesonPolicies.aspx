<%@ Page Title="Admin- Search Employees" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="SearchEmployeesonPolicies.aspx.cs" Inherits="Admin_SearchEmployeesonPolicies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style3
        {
            height: 25px;
        }
        .style4
        {
            height: 342px;
        }
        .style5
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <br />
        <asp:Label ID="Label2" runat="server" Text="POLICIES BASED ON EMPLOYEES" Font-Names="Cambria"
            Font-Size="14pt" Font-Underline="True" ForeColor="#990000" Font-Bold="True"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Employee Designation:" Font-Bold="False"
            Font-Names="Calibri" ForeColor="Black"></asp:Label>
        <asp:DropDownList ID="ddldisnation" runat="server" DataValueField="designation" AutoPostBack="True"
            OnSelectedIndexChanged="ddlpolacyname_SelectedIndexChanged" Font-Names="calibri"
            Height="25px" Width="180px" Font-Size="11pt" Style="margin-left: 12px">
            <asp:ListItem Text="--Select--" Value="--Select--" />
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="grd" runat="server" AutoGenerateColumns="False" AllowPaging="True"
            BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
            CellPadding="3" Width="100%" OnSelectedIndexChanged="grd_SelectedIndexChanged"
            Height="16px" Font-Names="Calibri" Style="margin-top: 0px" CellSpacing="2">
            <FooterStyle BackColor="White" ForeColor="#000066" Font-Names="Calibri" />
            <AlternatingRowStyle Font-Names="Calibri" />
            <Columns>
                <%--  <asp:BoundField DataField ="empno" HeaderText ="Empno" />--%>
                <asp:BoundField DataField="empno" HeaderText="Empno" />
                <asp:BoundField DataField="firstname" HeaderText="FirstName" />
                <asp:BoundField DataField="lastname" HeaderText="LastName" />
                <asp:BoundField DataField="contactno" HeaderText="Contactno" />
                <asp:BoundField DataField="policyid" HeaderText="Policyid" />
                <asp:BoundField DataField="policyname" HeaderText="policyname" />
                <asp:BoundField DataField="policyamount" HeaderText="policyamount" />
                <asp:BoundField DataField="companyname" HeaderText="InsuranceCompanyname" />
            </Columns>
            <EditRowStyle Font-Names="Calibri" />
            <EmptyDataTemplate>
                NO Employee has taken a policy having this designation.</EmptyDataTemplate>
            <RowStyle ForeColor="Black" Font-Names="Calibri" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" Font-Names="Calibri" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#009999" Font-Bold="True" ForeColor="White" Font-Names="Calibri" />
        </asp:GridView>
    </center>
</asp:Content>
