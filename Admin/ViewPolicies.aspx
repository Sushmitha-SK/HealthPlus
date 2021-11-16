<%@ Page Title="Admin- Policies" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="ViewPolicies.aspx.cs" Inherits="Admin_ViewPolicies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <table width="100%" align="center" style="margin-top: 39px">
            <tr>
                <td style="text-align: center; height: 21px;">
                    <asp:Label ID="Label1" runat="server" Text="POLICY DETAILS" CssClass="headingFont"
                        Font-Bold="True" Font-Names="Cambria" Font-Size="18pt" ForeColor="#990000" Font-Underline="True" />&nbsp;
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 100%">
                    <asp:GridView ID="grdPolicies" runat="server" AutoGenerateColumns="False" Width="100%"
                        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                        OnRowEditing="grdPolicies_RowEditing" OnRowUpdating="grdPolicies_RowUpdating"
                        AllowPaging="True" OnPageIndexChanging="grdPolicies_PageIndexChanging" OnRowCancelingEdit="grdPolicies_RowCancelingEdit"
                        OnSelectedIndexChanged="grdPolicies_SelectedIndexChanged" Style="margin-top: 0px"
                        CellPadding="3">
                        <Columns>
                            <asp:TemplateField HeaderText="EmpId">
                                <ItemTemplate>
                                    <asp:Label ID="lblpolicyid" Text='<%#Eval("policyid") %>' runat="server"></asp:Label></ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lbl" runat="server" Text='<%#Eval("policyid") %>'></asp:Label></EditItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="policyname" HeaderText="PolicyName" SortExpression="policyname" />
                            <asp:BoundField DataField="policydesc" HeaderText="PolicyDesc" SortExpression="policydesc" />
                            <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                            <asp:BoundField DataField="companyid" HeaderText="Companyid" SortExpression="companyid" />
                            <asp:BoundField DataField="medicalid" HeaderText="Medicalid" SortExpression="medicalid" />
                            <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                        </Columns>
                        <EmptyDataTemplate>
                                    No Policy Details!</EmptyDataTemplate>
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
