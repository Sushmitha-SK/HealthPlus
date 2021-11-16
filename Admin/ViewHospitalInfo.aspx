<%@ Page Title="Admin- Hospital Information" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="ViewHospitalInfo.aspx.cs" Inherits="Admin_ViewHospitalInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center style="height: 244px">
        <table width="100%" align="center" style="margin-top: 23px">
            <tr>
                <td style="text-align: center; height: 21px;">
                    <asp:Label ID="Label1" runat="server" Text="HOSPITAL DETAILS" CssClass="headingFont"
                        Font-Bold="True" Font-Names="Cambria" Font-Size="18pt" ForeColor="#990000" Font-Underline="True" />&nbsp;
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 100%">
                    <asp:GridView ID="grdHospitalInfo" runat="server" AutoGenerateColumns="False" DataKeyNames="HospitalId"
                        OnSelectedIndexChanged="grdHospitalInfo_SelectedIndexChanged" OnPageIndexChanging="grdHospitalInfo_PageIndexChanging"
                        Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                        OnRowCancelingEdit="grdHospitalInfo_RowCancelingEdit" OnRowDeleting="grdHospitalInfo_RowDeleting"
                        OnRowEditing="grdHospitalInfo_RowEditing" OnRowUpdating="grdHospitalInfo_RowUpdating"
                        AllowPaging="True" CellPadding="4" Height="70px" Style="margin-top: 5px">
                        <Columns>
                            <asp:TemplateField HeaderText="HospitalId">
                                <ItemTemplate>
                                    <asp:Label ID="lblHospitalId" Text='<%#Eval("HospitalId") %>' runat="server"></asp:Label></ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lbl" runat="server" Text='<%#Eval("HospitalId") %>'></asp:Label></EditItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="HospitalName" HeaderText="HospitalName" SortExpression="HospitalName" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="PhoneNO" HeaderText="PhoneNO" SortExpression="PhoneNO" />
                            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                            <asp:BoundField DataField="Url" HeaderText="Url" SortExpression="Url" />
                            <asp:CommandField HeaderText="Edit/Delete" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <EmptyDataTemplate>No Hospital Details!</EmptyDataTemplate>
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
