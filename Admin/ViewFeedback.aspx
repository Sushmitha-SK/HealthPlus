<%@ Page Title="Admin- Feedback" Language="C#" EnableEventValidation="false" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="Admin_ViewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style1
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <table width="100%" align="center" style="margin-top: 39px">
            <tr>
                <td style="text-align: center; height: 21px;">
                    <asp:Label ID="Label1" runat="server" Text="FEEDBACK DETAILS" CssClass="headingFont"
                        Font-Bold="True" Font-Names="Cambria" Font-Size="18pt" ForeColor="#990000" Font-Underline="True" />&nbsp;
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 100%">
                    <%--<asp:ImageButton ID="btnPDF" runat="server" Height="32px" 
                    ImageUrl="~/icons/ExcelImage.jpg" onclick="btnPDF_Click" 
                    ToolTip="Export to Excel" Width="32px" />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="32px" 
                    ImageUrl="~/icons/WordImage.jpg" onclick="ExportGridToword" 
                    ToolTip="Export to Word" Width="32px" />--%>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 100%">
                    <asp:GridView ID="grdFeedback" runat="server" AutoGenerateColumns="False" GridLines="Horizontal"
                        Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                        AllowPaging="True" OnPageIndexChanging="grdFeedback_PageIndexChanging" OnSelectedIndexChanged="grdFeedback_SelectedIndexChanged"
                        Style="margin-top: 0px" CellPadding="3" OnRowDeleting="grdFeedback_RowDeleting">
                        <Columns>
                            <asp:TemplateField HeaderText="SlNo">
                                <ItemTemplate>
                                    <asp:Label ID="lblSlNo" Text='<%#Eval("SlNo") %>' runat="server"></asp:Label></ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lbl" runat="server" Text='<%#Eval("SlNo") %>'></asp:Label></EditItemTemplate>
                            </asp:TemplateField>
                            <%--  <asp:BoundField DataField="SlNo" HeaderText="SlNo" InsertVisible="False" 
                ReadOnly="True" SortExpression="SlNo" />--%>
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                            <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                        </Columns>
                        <EmptyDataTemplate>
                                    No New Feedbacks</EmptyDataTemplate>
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
