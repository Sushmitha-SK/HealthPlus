<%@ Page Title="Admin-Manager Details" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="MangerDetails.aspx.cs" Inherits="Admin_MangerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center style="height: 244px">
        <table width="100%" align="center" style="margin-top: 23px">
            <tr>
                <td style="text-align: center; height: 21px;">
                    <asp:Label ID="Label1" runat="server" Text="MANAGER DETAILS" CssClass="headingFont"
                        Font-Bold="True" Font-Names="Cambria" Font-Size="18pt" ForeColor="#990000" Font-Underline="True" />&nbsp;
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 100%">

          



                    <asp:GridView ID="grdManagerDetails" runat="server" AutoGenerateColumns="False" DataKeyNames="managerid"
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="3"
                        OnSelectedIndexChanged="grdManagerDetails_SelectedIndexChanged" 
                        OnPageIndexChanging="grdManagerDetails_PageIndexChanging"
                        AllowPaging="True" Width="100%" OnRowCancelingEdit="grdManagerDetails_RowCancelingEdit"
                        OnRowDeleting="grdManagerDetails_RowDeleting"
                        OnRowEditing="grdManagerDetails_RowEditing" OnRowUpdating="grdManagerDetails_RowUpdating"
                         Style="margin-top: 0px" Font-Size="11" PageSize="5">
                        <Columns>
                            <asp:TemplateField HeaderText="Manager ID" HeaderStyle-Wrap="true">
                                <ItemTemplate>
                                    <asp:Label ID="lblmanagerid" Text='<%#Eval("managerid") %>' runat="server"></asp:Label></ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lbl" runat="server" Text='<%#Eval("managerid") %>'></asp:Label></EditItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="designation" HeaderText="Designation" SortExpression="designation" />
                            <asp:BoundField DataField="firstname" HeaderText="Firstname" SortExpression="firstname" />
                            <asp:BoundField DataField="lastname" HeaderText="Lastname" SortExpression="lastname" />
                            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                            <asp:BoundField DataField="contactno" HeaderText="Contactno" SortExpression="contactno" />
                            <asp:BoundField DataField="comapnyid" HeaderText="CompanyID" SortExpression="comapnyid" />
                            <asp:BoundField DataField="companyname" HeaderText="CompanyName" SortExpression="companyname" />
                            <asp:CommandField HeaderText="Edit/Delete" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <RowStyle BackColor="White" ForeColor="#333333" Font-Names="Calibri" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" Font-Names="Calibri" />
                        <PagerStyle BackColor="#00B7B7" ForeColor="White" HorizontalAlign="Center" Font-Names="Calibri" />
                        <HeaderStyle BackColor="#00B7B7" Font-Bold="True" ForeColor="White" Font-Names="calibri" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
