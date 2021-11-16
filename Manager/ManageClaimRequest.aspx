<%@ Page Title="Manager- Claim Requests" Language="C#" MasterPageFile="~/Manager/FinanceManager.master" AutoEventWireup="true" CodeFile="ManageClaimRequest.aspx.cs" Inherits="Manager_ManageClaimRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<center style="height: 513px; margin-top: 61px">
    <br />
    <asp:Label ID="Label1" runat="server" Text="CLAIM REQUEST DETAILS" 
        Font-Bold="True" Font-Names="Cambria" Font-Size="16pt" Font-Underline="True" 
        ForeColor="#990000"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="3"
    OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" Width="100%"  
        OnRowCommand="GridView1_RowCommand" style="margin-top: 0px" CellSpacing="2" onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="claimno" HeaderText="Claim No" InsertVisible="False"
                ReadOnly="True" SortExpression="claimno" />
            <asp:BoundField DataField="empno" HeaderText="Emp Id" SortExpression="empno" />
           
            <asp:BoundField DataField="policyid" HeaderText="PolicyId" SortExpression="policyid" />
            <asp:BoundField DataField="policyname" HeaderText="Policyname" SortExpression="policyname" />
            <asp:BoundField DataField="policyamount" HeaderText="PolicyAmount" SortExpression="policyamount" />
            <asp:BoundField DataField="nameofclaimant" HeaderText="Name of Claimant" SortExpression="nameofclaimant" />
            <asp:BoundField DataField="relationship" HeaderText="Relationship" SortExpression="relationship" />
            <asp:BoundField DataField="hospitalid" HeaderText="Hospital ID" SortExpression="hospitalid" />
            <asp:BoundField DataField="reason" HeaderText="Reason" SortExpression="reason" />
            <asp:BoundField DataField="dateofadmit" HeaderText="Date Of Admit" SortExpression="dateofadmit" />
            <asp:BoundField DataField="dateofdischarge" HeaderText="Date of Discharge" SortExpression="dateofdischarge" />
            <asp:BoundField DataField="claimamount" HeaderText="Claim Amount" SortExpression="claimamount" />
           <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
           <asp:TemplateField >
           <ItemTemplate >
<%--           <asp:ImageButton ID="ImgApprove" CommandName="check" CommandArgument='<%("empno") %>' runat="server" ImageUrl="~/Buttons/avd.png" Width="50px" Height="20px" />
--%>
           <asp:LinkButton ID="lblbutton" Text ="Approve Claim" CommandName ="check" CommandArgument ='<%#Eval("empno") %>' runat="server" ></asp:LinkButton>
           <%--<asp:LinkButton ID="lblUnapprove" Text="UnApprove Claim" CommandName="unapprove" CommandArgument='<%Eval("empno") %>' runat="server"></asp:LinkButton>--%>
           </ItemTemplate>
           
           </asp:TemplateField>

           
           
        </Columns>

<EmptyDataRowStyle Width="70px"></EmptyDataRowStyle>
        <EmptyDataTemplate>NO Claim Request</EmptyDataTemplate>
      <FooterStyle BackColor="White" ForeColor="#000066" />
      <RowStyle ForeColor="Black" Font-Names="Calibri" Font-Size="11pt" />
      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
      <HeaderStyle BackColor="#009999" Font-Bold="True" ForeColor="White" 
            Font-Names="calibri" Font-Size="11pt" />
    </asp:GridView>



    </center>




</asp:Content>

