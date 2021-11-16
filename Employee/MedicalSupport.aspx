<%@ Page Title="Employee- Hospital Details" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="MedicalSupport.aspx.cs" Inherits="Employee_MedicalSupport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 34px;
        }
        .style2
        {
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<center style="height: 356px; margin-top: 28px">
        <asp:Panel runat="server" style="margin-top: 58px">
    <asp:Label ID="Label1" runat="server" Font-Names="Cambria" Font-Size="16pt" 
        Font-Underline="True" Text="SUPPORTING MEDICAL HOSPITALS" Font-Bold="True" 
        ForeColor="#990000"></asp:Label></asp:Panel>
  
    <asp:GridView ID="grd" runat ="server" AutoGenerateColumns ="False" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="3" OnRowCommand="grd_RowCommand" 
        onselectedindexchanged="grd_SelectedIndexChanged" style="margin-left: 0px; margin-top: 17px;" 
        Width="860px" GridLines="Horizontal" >
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <Columns>
        <asp:BoundField DataField="HospitalId" HeaderText="Hospital ID" />
        <asp:BoundField DataField="HospitalName" HeaderText="Hospital Name" />
        <asp:BoundField DataField="PhoneNO" HeaderText="Phone No" />
        <asp:BoundField DataField="Location" HeaderText="Location" />
        <asp:BoundField DataField="Url" HeaderText="Url" />
        <asp:TemplateField HeaderText="Supporting Policies">
        <ItemTemplate><asp:LinkButton ID="lnkbtn" runat ="server"  Text =" Supporting Policies" CommandArgument ='<%#Eval("HospitalId") %>' CommandName ="Policy"></asp:LinkButton></ItemTemplate></asp:TemplateField>
    </Columns>
    <EmptyDataTemplate> No Hospital Details!</EmptyDataTemplate>
    <RowStyle ForeColor="Black" Font-Names="Calibri" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <HeaderStyle BackColor="#00BBBB" Font-Bold="True" ForeColor="White" 
        Font-Names="Calibri" />
</asp:GridView>
<%--</td></tr>
<tr><td>--%> 
    <asp:GridView ID="grd1" runat ="server" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" 
        BorderWidth="3px" CellPadding="3" 
        Width="860px" AutoGenerateColumns="False" OnRowCommand="grd1_RowCommand" 
        GridLines="Horizontal" style="margin-top: 13px" >
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <RowStyle ForeColor="Black" Font-Names="Calibri" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <HeaderStyle BackColor="#00BBBB" Font-Bold="True" ForeColor="White" 
            Font-Names="Calibri" />
    <Columns>
        <asp:BoundField DataField="Policyid" HeaderText="Policy ID" />
        <asp:BoundField DataField="Policyname" HeaderText="Policy Name" />
        <asp:BoundField DataField="Companyid" HeaderText="Company ID" />
        <asp:BoundField DataField="companyname" HeaderText="Company Name" />
        <asp:BoundField DataField="address" HeaderText="Address" />
        <asp:TemplateField HeaderText="Policy Description">
        <ItemTemplate ><asp:LinkButton ID="lnk" runat ="server" CommandName="policy"  Text ="Policy Description" CommandArgument ='<%#Eval("policyid") %>'
        
         ></asp:LinkButton></ItemTemplate></asp:TemplateField>
    </Columns>
     <EmptyDataTemplate> No Supporting policies!</EmptyDataTemplate>
</asp:GridView>
<%--</td></tr></table>--%></center>

</asp:Content>

