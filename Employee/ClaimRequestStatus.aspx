<%@ Page Title="Employee- Claim Request Status" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="ClaimRequestStatus.aspx.cs" Inherits="Employee_ClaimRequestStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <center style="height: 261px; margin-top: 45px">
    <asp:Label Text="CLAIM REQUEST DETAILS" Font-Bold="True" Font-Names="Cambria" 
            Font-Size="16pt" ForeColor="Maroon" runat="server" Font-Underline="True"/>
 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" CellSpacing="2"
    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="3"  
            AllowPaging="True" PageSize="5" Width="100%" DataKeyNames="claimno" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="margin-right: 0px; margin-top: 24px">

        <Columns>
            <asp:BoundField DataField="claimno" HeaderText="Claim No" InsertVisible="False" 
                ReadOnly="True" SortExpression="claimno" />
            <asp:BoundField DataField="empno" HeaderText="Emp No" SortExpression="empno" />
            <asp:BoundField DataField="policyid" HeaderText="Policy ID" 
                SortExpression="policyid" />
            <asp:BoundField DataField="policyname" HeaderText="Policy Name" 
                SortExpression="policyname" />
            <asp:BoundField DataField="policyamount" HeaderText="Policy Amount" 
                SortExpression="policyamount" />
            <asp:BoundField DataField="status" HeaderText="Status" 
                SortExpression="status" />
        </Columns>
         <EmptyDataTemplate>NO Claim Request has been taken yet!</EmptyDataTemplate>
        <HeaderStyle BackColor="#00B7B7" Font-Names="Calibri" ForeColor="White" />
        <RowStyle Font-Names="Calibri" ForeColor="Black" />
    </asp:GridView>
 
</center>

</asp:Content>

