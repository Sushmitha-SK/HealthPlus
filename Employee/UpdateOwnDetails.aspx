<%@ Page Title="Employee- Update Own Details" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="UpdateOwnDetails.aspx.cs" Inherits="Employee_UpdateOwnDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 315px;
        }
        .style5
        {
            width: 108px;
        }
        .table
        {
            margin-top: 55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<center >
  
     
                    



<table cellpadding="0" cellspacing="5" width="100%" class="table">
        <tr>
            <td align="center" colspan="3" class="heading">
        <strong>
        <span style="font-size: 16pt; color: #800000; font-family: Cambria; text-transform: uppercase; text-decoration: underline;">
            UPDATE EMPLOYEE DETAILS</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                                &nbsp;</td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">First Name:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtfname" runat="server" Width="201px" Font-Names="Calibri" 
                                    Height="25px" Font-Size="11pt" />
                                <asp:RequiredFieldValidator ID="rexv"  runat="server" 
                                    ErrorMessage ="* Enter First name" ControlToValidate ="txtfname" 
                                    ForeColor="Red" Font-Names="Calibri" Font-Size="9pt" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                                &nbsp;</td>
            <td align="left" class="style5" style="vertical-align: middle">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Last Name</span>:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtlname" runat="server" Width="200px" Font-Names="Calibri" 
                                    Height="25px" Font-Size="11pt" />
                                <asp:RequiredFieldValidator ID="rfvphoneno" runat="server" 
                                    ControlToValidate="txtlname" ForeColor="Red" 
                                    ErrorMessage="* Enter last name" Font-Names="Calibri" Font-Size="9pt" />
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                                &nbsp;</td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">User Name:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtusername" runat="server" Height="25px" Width =200px 
                                    Font-Names="Calibri" Font-Size="11pt" />
                                <asp:RequiredFieldValidator ID="rfvaddress" runat="server" 
                                    ControlToValidate ="txtusername" ErrorMessage ="* Enter Username" 
                                    ForeColor="Red" Font-Names="Calibri" Font-Size="9pt" />
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                                &nbsp;</td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Password:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                         
                                <asp:TextBox ID="txtpwd" runat="server" Width="201px" Font-Names="Calibri" 
                                    Height="25px" Font-Size="11pt"/>
                                <asp:RequiredFieldValidator ID="rfvlogin" runat="server" 
                                    ControlToValidate ="txtpwd" ErrorMessage ="* Enter password" 
                                    ForeColor="Red" Font-Names="Calibri" Font-Size="9pt" />
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                                &nbsp;</td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Address:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtaddress" runat="server" Width="203px" TextMode="MultiLine" 
                                    Font-Names="Calibri" Font-Size="11pt"/>
                                <asp:RequiredFieldValidator ID="rfvdisgn"  
                                    ErrorMessage ="* Enter Address" ControlToValidate ="txtaddress" 
                                    runat="server" ForeColor="Red" Font-Names="Calibri" Font-Size="9pt" />
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                            &nbsp;</td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                            <strong style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">
                Contact No:</strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtcontactno" runat ="server" Width="201px" 
                                    Font-Names="Calibri" Height="25px" Font-Size="11pt" ></asp:TextBox><asp:RequiredFieldValidator ID="rfvcontact" 
                                runat ="server" ControlToValidate="txtstate" ForeColor="Red" 
                                    ErrorMessage="* Enter Contact No" Font-Names="Calibri" Font-Size="9pt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                            &nbsp;</td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                            <strong style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">City:</strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                  <asp:TextBox ID="txtcity" runat ="server" Width="201px" Font-Names="Calibri" 
                                      Height="25px" Font-Size="11pt" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat ="server" 
                                      ControlToValidate="txtcity" ForeColor="Red" ErrorMessage="* Enter City" 
                                      Font-Names="Calibri" Font-Size="9pt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                            &nbsp;</td>
            <td align="left" valign="top" class="style5">
                            <strong style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">State:</strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                  <asp:TextBox ID="txtstate" runat ="server" Width="201px" Font-Names="Calibri" 
                                      Height="25px" Font-Size="11pt" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" 
                                      ControlToValidate="txtstate" ForeColor="Red" ErrorMessage="* Enter State" 
                                      Font-Names="Calibri" Font-Size="9pt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                            &nbsp;</td>
            <td align="left" valign="top" class="style5">
                            <strong style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Country:</strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                  <asp:TextBox ID="txtcountry" runat ="server" Width="201px" Font-Names="Calibri" 
                                      Height="25px" Font-Size="11pt" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server" 
                                      ControlToValidate="txtcountry" ForeColor="Red" ErrorMessage="* Enter Country" 
                                      Font-Names="Calibri" Font-Size="9pt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            <asp:Label ID="lblmsg" runat ="server" ForeColor="#CC3300" ></asp:Label></td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                        <asp:Button ID="btnUpdate" 
                                runat ="server" Text ="UPDATE" Width="62px" OnClick="btnUpdate_Click" 
                                Font-Bold="True" Font-Names="Calibri" />
                        <asp:Button ID="btnCancel" runat ="server" Text ="CANCEL" Width="62px" 
                                CausesValidation="False" OnClick="btnCancel_Click" Font-Bold="True" 
                                Font-Names="Calibri" />
                        </td>
        </tr>
        <tr>
            <td align="right" valign="top" colspan="3">
                &nbsp;</td>
        </tr>
        </table>





    </center>








</asp:Content>

