<%@ Page Title="Employee- View Policies" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="SearchPolicies.aspx.cs" Inherits="Employee_SearchPolicies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<center>
        <table width="100%">
            <tr>
                <td align="center">
                    <strong>
                    <span style="font-size: 16pt; color: #800000; font-family: Cambria; text-transform: uppercase; text-decoration: underline;">
                        Policy Details</span></strong></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grd" runat="server" AutoGenerateColumns="False" 
                       BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                    CellPadding="4"
                        OnRowCommand="grd_RowCommand" 
                        onselectedindexchanged="grd_SelectedIndexChanged" GridLines="Horizontal">
                        <Columns>
                            <asp:BoundField DataField="policyid" HeaderText="PolicyId" />
                            <asp:BoundField DataField="Policyname" HeaderText="PolicyName" />
                            <asp:BoundField DataField="Policydesc" HeaderText="PolicyDesc" />
                            <asp:BoundField DataField="amount" HeaderText="Amount" />
                     
                            <asp:BoundField DataField="Companyname" HeaderText="CompanyName" />
                            <asp:TemplateField HeaderText="CompanyDeatails">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btn" Text="CompanyDetails" CommandArgument='<%#Eval("companyid") %>' CommandName ="details"
                                        runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <RowStyle ForeColor="Black" Font-Names="Calibri" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#009999" Font-Bold="True" ForeColor="White" 
                            Font-Names="Calibri" />
                    </asp:GridView>
                </td>
            </tr>
            <tr><td>
                <asp:DataList ID="dlist" runat ="server" RepeatLayout="Flow" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="Double" BorderWidth="1px" 
                    CellPadding="3" GridLines="Horizontal" 
                    onselectedindexchanged="dlist_SelectedIndexChanged" CaptionAlign="Left" 
                    HorizontalAlign="Left">
            <HeaderTemplate>Company Details</HeaderTemplate>
           
            <ItemTemplate>
            <table><tr><td align ="left" >
            
          <strong >CompanyId:</strong>  <%#Eval("companyid") %><br />
       <strong >CompanyName:</strong>      <%#Eval("companyname") %><br />
        <strong >Address:</strong>  <%#Eval("address") %><br />
        <strong >Phone: </strong>    <%#Eval("phone") %><br />
        <strong >CompanyUrl:</strong>    <%#Eval("companyurl") %>
            
            
            </td></tr></table>
            
            
            
            </ItemTemplate>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <ItemStyle ForeColor="Black" HorizontalAlign="Left" VerticalAlign="Middle" 
                    Font-Names="Calibri" />
                <HeaderStyle Font-Bold="True" ForeColor="#CC3300" 
                    Font-Names="Calibri" Font-Size="14pt" Font-Underline="True" />
            </asp:DataList></td></tr>
            <tr><td align ="center" >
                <asp:Button ID="Button1" runat="server" Text="APPLY"  OnClick="Apply_Click" 
                    Font-Bold="True" Width="80px"/>
                
               <!--  <asp:LinkButton ID="Apply" runat="server" OnClick="Apply_Click">LinkButton</asp:LinkButton>
           <asp:HyperLink ID="hperlink" Text ="Apply" runat ="server" Font-Bold="True" Font-Underline="True" NavigateUrl="~/Employee/OrderInsurance.aspx" ></asp:HyperLink>-->
           </td></tr>
            
                               
                                
        </table>
        
    </center>


</asp:Content>

