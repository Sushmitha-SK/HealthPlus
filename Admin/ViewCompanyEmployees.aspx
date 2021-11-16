<%@ Page Title="Admin- Company Employees" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="ViewCompanyEmployees.aspx.cs" Inherits="Admin_ViewCompanyEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
    </center>
    <table width="100%" align="center" style="margin-top: 30px">
        <tr>
            <td style="text-align: center; height: 21px;">
                <asp:Label runat="server" Text="EMPLOYEE DETAILS" CssClass="headingFont" Font-Bold="True"
                    Font-Names="Cambria" Font-Size="18pt" ForeColor="#990000" Font-Underline="True" />&nbsp;
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100%">
                <asp:GridView ID="grdemployes" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="3"
                    OnPageIndexChanging="grdemployes_PageIndexChanging" OnRowCancelingEdit="grdemployes_RowCancelingEdit"
                    OnRowDeleting="grdemployes_RowDeleting" OnRowEditing="grdemployes_RowEditing"
                    OnRowUpdating="grdemployes_RowUpdating" AllowPaging="True" Width="100%" 
                    OnSelectedIndexChanged="grdemployes_SelectedIndexChanged"
                    Style="margin-top: 0px" CellSpacing="2">
                    <Columns>
                        <asp:TemplateField HeaderText="EmployeeID">
                            <ItemTemplate>
                                <asp:Label ID="lblempid" Text='<%#Eval("empno") %>' runat="server"></asp:Label></ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="lbl" runat="server" Text='<%#Eval("empno") %>'></asp:Label></EditItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="username" HeaderText="EmployeeName" />
                        <asp:BoundField DataField="contactno" HeaderText="Phone No" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="joindate" HeaderText="Join Date" />
                        <asp:BoundField DataField="designation" HeaderText="Designation" />
                        <asp:BoundField DataField="salary" HeaderText="Salary" />
                        <asp:CommandField HeaderText="Edit/Delete" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <EmptyDataTemplate>
                                   No employees registered!</EmptyDataTemplate>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <RowStyle BackColor="White" ForeColor="#333333" Font-Names="Calibri" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" Font-Names="Calibri" />
                    <PagerStyle BackColor="#00B7B7" ForeColor="White" HorizontalAlign="Center" Font-Names="Calibri" />
                    <HeaderStyle BackColor="#00B7B7" Font-Bold="True" ForeColor="White" Font-Names="calibri" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
