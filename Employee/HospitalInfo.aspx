<%@ Page Title="Employee- Policy Details" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="HospitalInfo.aspx.cs" Inherits="Employee_HospitalInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<table width ="100%" >
   <tr><td align ="center" 
           style="font-family: Cambria; font-size: 18px; font-weight: bold; text-decoration: underline; color: #990000;" >
       
       <asp:ImageButton ID="ImageButton1" runat="server" Height="44px" 
           ImageAlign="Right" ImageUrl="~/icons/BACK.png" onclick="ImageButton1_Click" 
           Width="90px" />
       
       POLICY DETAILS</td></tr>
   <tr><td align ="center" >
       <strong><span style="color: #CC3300; font-family: Calibri; font-size: 18px;" 
           dir="ltr">Policy ID: </span></strong>
       <asp:Label 
           ID="lblid" runat ="server" Font-Bold="False" ForeColor="Black" 
           Font-Names="Calibri" Font-Size="11pt" ></asp:Label>
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>
       <span style="color: #CC3300; font-family: Calibri; font-size: 18px;">
           Policy Name: </span></strong>
       <asp:Label ID="lblname" 
           runat ="server" Font-Bold="False" ForeColor="Black" Font-Names="Calibri" 
           Font-Size="11pt" ></asp:Label></td></tr>
   <tr><td>
    
       <center>
           <br />
       <asp:Label runat="server" Text="Policy Description" Font-Bold="True" 
               Font-Names="Calibri" Font-Size="13pt" ForeColor="#CC3300" /><br /><br />
       
       <asp:Panel runat="server" Height="225px" style="margin-left: 0px; margin-top: 0px;" 
               Width="100%">
       
       <asp:Label ID="PolicyDesc" runat="server" ForeColor="Black" Font-Names="Calibri" 
               Font-Size="11pt"></asp:Label>
       </asp:Panel>
       
       
       
       </center>
       
      
   </td></tr></table>
</asp:Content>

