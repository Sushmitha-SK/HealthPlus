<%@ Page Title="Admin- Insurance Company Details" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="ViewInsuranceCompanyDetails.aspx.cs" Inherits="Admin_ViewInsuranceCompanyDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <table width="100%" align="center" style="margin-top: 39px">
            <tr>
                <td style="text-align: center; height: 21px;">
                    <asp:Label ID="Label1" runat="server" Text="INSURANCE COMPANY DETAILS" CssClass="headingFont"
                        Font-Bold="True" Font-Names="Cambria" Font-Size="18pt" ForeColor="#990000" Font-Underline="True" />&nbsp;
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 100%">
                    <asp:GridView ID="grdInsuranceCompany" runat="server" AutoGenerateColumns="False"
                        GridLines="Horizontal" Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double"
                        BorderWidth="3px" OnRowCancelingEdit="grdInsuranceCompany_RowCancelingEdit" OnRowDeleting="grdInsuranceCompany_RowDeleting"
                        OnRowEditing="grdInsuranceCompany_RowEditing" OnRowUpdating="grdInsuranceCompany_RowUpdating"
                        AllowPaging="True" OnPageIndexChanging="grdInsuranceCompany_PageIndexChanging"
                        OnSelectedIndexChanged="grdInsuranceCompany_SelectedIndexChanged" Style="margin-top: 0px"
                        CellPadding="3">
                        <Columns>
                            <asp:TemplateField HeaderText="companyid">
                                <ItemTemplate>
                                    <asp:Label ID="lblCompanyId" Text='<%#Eval("companyid") %>' runat="server"></asp:Label></ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lbl" runat="server" Text='<%#Eval("companyid") %>'></asp:Label></EditItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:BoundField DataField="CompanyURL" HeaderText="CompanyURL" SortExpression="CompanyURL" />
                            <asp:CommandField HeaderText="Edit Details" ShowEditButton="True" />
                        </Columns>
                        <EmptyDataTemplate>
                                    No Hospital Details!</EmptyDataTemplate>
                        <HeaderStyle BackColor="#009999" ForeColor="White" Font-Names="Calibri" />
                        <PagerStyle Font-Names="Calibri" />
                        <RowStyle BackColor="White" Font-Names="Calibri" ForeColor="Black" />
                        <SelectedRowStyle Font-Names="Calibri" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
