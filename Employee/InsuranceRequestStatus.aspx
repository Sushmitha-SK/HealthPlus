<%@ Page Title="Employee- Polciy Request Status" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="InsuranceRequestStatus.aspx.cs" Inherits="Employee_InsuranceRequestStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<center>
<br />
<br />
<asp:Label Font-Bold="True" Font-Names="Cambria" Font-Size="16pt" 
        Text="POLICY REQUEST DETAILS" runat="server" Font-Underline="True" 
        ForeColor="#990000"/>


          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" CellSpacing="2"
    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="3"  
            AllowPaging="True" PageSize="5" Width="100%" DataKeyNames="RequestId" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="margin-right: 0px; margin-top: 24px">

   <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" CellPadding="3" CellSpacing="1" DataKeyNames="RequestId" 
        DataSourceID="SqlDataSource1" Width="881px" style="margin-top: 15px" 
        Font-Names="Calibri" Height="127px">--%>
        <Columns>
            <asp:BoundField DataField="RequestId" HeaderText="RequestId" 
                InsertVisible="False" ReadOnly="True" SortExpression="RequestId" />
            <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" 
                SortExpression="RequestDate" />
            <asp:BoundField DataField="PolicyId" HeaderText="PolicyId" 
                SortExpression="PolicyId" />
            <asp:BoundField DataField="Policyname" HeaderText="Policyname" 
                SortExpression="Policyname" />
            <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                SortExpression="Companyname" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="Empno" HeaderText="Empno" SortExpression="Empno" />
        </Columns>
        
          <EmptyDataRowStyle Font-Names="Calibri" ForeColor="Black" />
        
          <EmptyDataTemplate>No Policy Request has been taken yet!</EmptyDataTemplate>
        <FooterStyle BackColor="#00BFBF" Font-Names="Calibri" />
        <HeaderStyle BackColor="#00BFBF" Font-Names="Calibri" ForeColor="White" />
        <PagerStyle BackColor="#00BFBF" Font-Names="Calibri" />
        <RowStyle Font-Names="Calibri" />
        <SelectedRowStyle Font-Names="Calibri" Font-Size="11pt" />
    </asp:GridView>
 
    </center>
</asp:Content>

