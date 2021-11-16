<%@ Page Title="Admin- View Claim Request" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="ViewClaimRequest.aspx.cs" Inherits="Admin_ViewClaimRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <br />
        <asp:Label ID="Label1" runat="server" Text="CLAIM REQUEST DETAILS" Font-Bold="True"
            Font-Names="Cambria" Font-Size="16pt" Font-Underline="True" ForeColor="#990000"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="3"
            AllowPaging="True" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging"
            OnRowCommand="GridView1_RowCommand" PageSize="5" DataKeyNames="claimno" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
            Style="margin-right: 0px; font-family: Calibri; font-size: 12px" Font-Names="calibri"
            Font-Size="12pt">
            <Columns>
                <asp:BoundField DataField="claimno" HeaderText="Claim No" InsertVisible="False" ReadOnly="True"
                    SortExpression="claimno" />
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
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lblbutton" Text="CheckForstatus" CommandName="check" CommandArgument='<%#Eval("empno") %>'
                            runat="server"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                No Claim Requests</EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <RowStyle ForeColor="#000066" Font-Names="Calibri" Font-Size="11pt" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#009999" Font-Bold="True" ForeColor="White" Font-Names="calibri"
                Font-Size="11pt" />
        </asp:GridView>
        &nbsp;
    </center>
</asp:Content>
