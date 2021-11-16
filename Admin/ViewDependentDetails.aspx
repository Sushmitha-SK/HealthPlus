<%@ Page Title="Admin- View Dependent Details" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="ViewDependentDetails.aspx.cs" Inherits="Admin_ViewDependentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table width="100%" align="center" style="margin-top: 39px">
        <tr>
            <td style="text-align: center; height: 21px;">
                <asp:Label ID="Label1" runat="server" Text="DEPENDENT DETAILS" CssClass="headingFont"
                    Font-Bold="True" Font-Names="Cambria" Font-Size="18pt" ForeColor="#990000" Font-Underline="True" />&nbsp;
                &nbsp;&nbsp;<br />
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100%">
                <asp:GridView ID="grd_dependentdetails" runat="server" AutoGenerateColumns="False"
                    DataKeyNames="DependentID" BackColor="White" BorderColor="#336666" BorderStyle="Double"
                    BorderWidth="3px" OnPageIndexChanging="grd_dependentdetails_PageIndexChanging"
                    OnRowCancelingEdit="grd_dependentdetails_RowCancelingEdit" OnRowDeleting="grd_dependentdetails_RowDeleting"
                    OnRowEditing="grd_dependentdetails_RowEditing" OnRowUpdating="grd_dependentdetails_RowUpdating"
                    AllowPaging="True" Width="100%" OnSelectedIndexChanged="grd_dependentdetails_SelectedIndexChanged"
                    CellPadding="3" CellSpacing="2">
                    <Columns>
                        <asp:TemplateField HeaderText="DepID" HeaderStyle-Wrap="true">
                            <ItemTemplate>
                                <asp:Label ID="lbldependentid" Text='<%#Eval("dependentid") %>' runat="server"></asp:Label></ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="lbl" runat="server" Text='<%#Eval("dependentid") %>'></asp:Label></EditItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="EmployeeId" HeaderText="EmpId" SortExpression="EmployeeId" />
                        <asp:BoundField DataField="EmployeeName" HeaderText="EmpName" SortExpression="EmployeeName" />
                        <asp:BoundField DataField="DependentName" HeaderText="DepName" SortExpression="DependentName" />
                        <asp:BoundField DataField="Relationship" HeaderText="Relationship" SortExpression="Relationship" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:CommandField HeaderText="Edit/Delete" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <EmptyDataTemplate>No Dependent Details!</EmptyDataTemplate>
                    <HeaderStyle Font-Bold="True" Font-Names="Calibri" ForeColor="White" BackColor="#009999" />
                    <RowStyle Font-Names="Calibri" Font-Size="11pt" ForeColor="Black" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
