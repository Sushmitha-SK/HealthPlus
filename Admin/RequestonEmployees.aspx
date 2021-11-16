<%@ Page Title="Admin- Policy Request Details" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="RequestonEmployees.aspx.cs" Inherits="Admin_RequestonEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <br />
        <strong><span style="font-size: 16pt; color: #800000; font-family: Cambria; text-transform: uppercase;
            text-decoration: underline;">Policy Request Details
            <br />
        </span></strong>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="3"
            OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
            PageSize="4" DataKeyNames="RequestId" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
            Font-Names="calibri" Style="margin-top: 0px" CellSpacing="2" AllowPaging="True"
            Width="100%">
            <Columns>
                <asp:BoundField DataField="RequestId" HeaderText="RequestId" InsertVisible="False"
                    ReadOnly="True" SortExpression="RequestId" />
                <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" SortExpression="RequestDate" />
                <asp:BoundField DataField="Empno" HeaderText="Empno" SortExpression="Empno" />
                <asp:BoundField DataField="PolicyId" HeaderText="PolicyId" SortExpression="PolicyId" />
                <asp:BoundField DataField="Policyname" HeaderText="Policyname" SortExpression="Policyname" />
                <asp:BoundField DataField="PolicyAmount" HeaderText="PolicyAmount" SortExpression="PolicyAmount" />
                <asp:BoundField DataField="premium" HeaderText="premium" SortExpression="premium" />
                <asp:BoundField DataField="CompanyId" HeaderText="CompanyId" SortExpression="CompanyId" />
                <asp:BoundField DataField="Companyname" HeaderText="Companyname" SortExpression="Companyname" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lblbutton" Text="CheckForstatus" CommandName="check" CommandArgument='<%#Eval("empno") %>'
                            runat="server"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                NO Request here</EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#000066" Font-Names="calibri" />
            <RowStyle ForeColor="#000066" Font-Names="calibri" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" Font-Names="calibri" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" Font-Names="calibri" />
            <HeaderStyle BackColor="#00B7B7" Font-Bold="True" ForeColor="White" Font-Names="calibri" />
        </asp:GridView>
        &nbsp;
    </center>
</asp:Content>
