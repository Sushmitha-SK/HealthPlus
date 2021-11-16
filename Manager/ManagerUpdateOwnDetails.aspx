<%@ Page Title="Manager- Update Details" Language="C#" MasterPageFile="~/Manager/FinanceManager.master" AutoEventWireup="true" CodeFile="ManagerUpdateOwnDetails.aspx.cs" Inherits="Manager_ManagerUpdateOwnDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 311px;
        }
        .style2
        {
            width: 92px;
        }
        .table
        {
            margin-top: 59px;
        }
        .style3
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<center>


<%--<table>

            <tr>
                <td style="width: 392px">
                    <table align="right">
                        <tr>
                            <td style="font-weight: bold; font-family: Calibri; color: #FFFFFF; font-size: 14px; font-style: normal;" 
                                align="center" class="style1" colspan="3">
                                <asp:Label ID="Label1" runat="server" Font-Names="Cambria" Font-Size="16pt" 
                                    ForeColor="#990000" Text="UPDATE OWN DETAILS" Font-Bold="True" 
                                    Font-Underline="True"></asp:Label>
                                    <br />
                                    <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-family: Calibri; color: #FFFFFF; font-size: 14px; font-style: normal;" 
                                align="left" class="style1">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">First Name:</span></td>
                            <td align ="left" class="style2"  >
                                &nbsp;</td>
                            <td align="left" class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-family: Calibri; color: #FFFFFF; font-size: 14px; font-style: normal;" 
                                align="left" class="style1">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Last Name</span>:</td>
                            <td align ="left" class="style2" >
                                &nbsp;</td>
                            <td align="left" class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td  valign ="top" 
                                style="font-weight: bold; font-family: Calibri; color: #FFFFFF; font-size: 14px; font-style: normal;" 
                                align="left" class="style1">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">User Name:</span></td>
                            <td align ="left" class="style2" >
                                &nbsp;</td>
                            <td align="left" class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-family: Calibri; color: #FFFFFF; font-size: 14px; font-style: normal;" 
                                align="left" class="style1">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Password:</span></td>
                            <td align ="left" class="style2" >
                                &nbsp;</td>
                            <td align="left" class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-family: Calibri; color: #FFFFFF; font-size: 14px; font-style: normal;" 
                                align="left">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Address:</span></td>
                            <td align ="left" style="width: 212px" >
                                &nbsp;</td>
                            <td style="width: 11px" align="left">
                                &nbsp;</td>
                        </tr>
                        
                        <tr>
                        <td align ="left" 
                                style="font-size: 12pt; font-family: Calibri; font-weight: bold;" 
                                class="style1" >
                            <strong style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Contact No:</strong></td>
                            <td align ="left" class="style2">
                                &nbsp;</td>
                        <td align ="left" class="style3" >&nbsp;</td>
                         </tr>
                          <tr>
                        <td align ="left" 
                                  style="font-size: 12pt; font-family: Calibri; font-weight: bold;" 
                                  class="style1" >
                            &nbsp;</td>
                              <td align ="left" class="style2">
                                  &nbsp;</td>
                        <td align ="left" class="style3" >
                            &nbsp;</td>
                         </tr>
                          <tr>
                        <td align ="center" 
                                  style="font-size: 12pt; font-family: Calibri; font-weight: bold;" 
                                  class="style1" colspan="2" >
                            &nbsp;</td>
                        <td align ="left" class="style3" >
                            &nbsp;</td>
                         </tr>
                          </table>
                </td>
                <td style="width: 146px">
                    &nbsp;</td>
            </tr>
            
        </table>--%>



<table cellpadding="0" cellspacing="5" width="100%" class="table">
        <tr>
            <td align="center" colspan="3" class="heading">
        <strong>
        <span style="font-size: 16pt; color: #800000; font-family: Cambria; text-transform: uppercase; text-decoration: underline;">
            UPDATE OWN DETAILS</span></strong></td>
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
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" valign="top" class="style2" style="vertical-align: middle">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">First Name:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtfname" runat="server" Width="201px" Font-Names="Calibri" 
                                    Height="25px" Font-Size="11pt" />
                                <asp:RequiredFieldValidator ID="rexv"  runat="server" 
                                    ErrorMessage ="* Enter first name" ControlToValidate ="txtfname" 
                                    ForeColor="Red" Font-Names="Calibri" Font-Size="9pt" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">
                                &nbsp;</td>
            <td align="left" class="style2" style="vertical-align: middle">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Last Name</span>:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtlname" runat="server" Width="200px" Font-Names="Calibri" 
                                    Height="25px" Font-Size="11pt" />
                                <asp:RequiredFieldValidator ID="rfvlastname" runat="server" 
                                    ControlToValidate="txtlname" ForeColor="Red" 
                                    ErrorMessage="* Enter last name" Font-Names="Calibri" Font-Size="9pt" />
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" valign="top" class="style2" style="vertical-align: middle">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">User Name:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtusername" runat="server" Height="25px" Width =200px 
                                    Font-Names="Calibri" Font-Size="11pt" />
                                <asp:RequiredFieldValidator ID="rfvusername" runat="server" 
                                    ControlToValidate ="txtusername" ErrorMessage ="* Enter Username" 
                                    ForeColor="Red" Font-Names="Calibri" Font-Size="9pt" />
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" valign="top" class="style2" style="vertical-align: middle">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Password:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                         
                                <asp:TextBox ID="txtpwd" runat="server" Width="201px" Font-Names="Calibri" 
                                    Height="25px" Font-Size="11pt"/>
                                <asp:RequiredFieldValidator ID="rfvpassword" runat="server" 
                                    ControlToValidate ="txtpwd" ErrorMessage ="* Enter password" 
                                    ForeColor="Red" Font-Names="Calibri" Font-Size="9pt" />
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" valign="top" class="style2" style="vertical-align: middle">
                                <span style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">Address:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtaddress" runat="server" Width="203px" TextMode="MultiLine" 
                                    Font-Names="Calibri" Font-Size="11pt"/>
                                <asp:RequiredFieldValidator ID="rfvaddress"  
                                    ErrorMessage ="* Enter address" ControlToValidate ="txtaddress" 
                                    runat="server" ForeColor="Red" Font-Names="Calibri" Font-Size="9pt" />
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
            <td align="left" valign="top" class="style2" style="vertical-align: middle">
                            <strong style="font-size: 12pt; font-family: Calibri; font-weight: lighter; color: #000000;">
                Contact No:</strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtcontactno" runat ="server" Width="201px" 
                                    Font-Names="Calibri" Height="25px" Font-Size="11pt" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvcontact" 
                                runat ="server" ControlToValidate="txtcontactno" ForeColor="Red" 
                                ErrorMessage="* Enter contact no" Font-Names="Calibri" Font-Size="9pt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3" class="style3">
                            <asp:Button ID="update" runat="server" Font-Bold="True" Text="UPDATE" 
                                OnClick="update_btnclick" Font-Names="Calibri"/>
                            <asp:Button ID="cancel" runat="server" Font-Bold="True" Text="CANCEL" 
                                OnClick="cancel_btnclick" Font-Names="Calibri" />
                              </td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                        &nbsp;</td>
        </tr>
        <tr>
            <td align="right" valign="top" colspan="3">
                &nbsp;</td>
        </tr>
        </table>


        
</center>
</asp:Content>

