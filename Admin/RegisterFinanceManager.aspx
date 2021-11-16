<%@ Page Title="Admin- Register Finance Manager" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="RegisterFinanceManager.aspx.cs" Inherits="Admin_RegisterFinanceManager" %>
<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" tagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 313px;
        }
        .style2
        {
            width: 134px;
        }
        .style3
        {
            height: 24px;
        }
        .style4
        {
            width: 313px;
            height: 24px;
        }
        .style5
        {
            width: 134px;
            height: 24px;
        }
        .table
        {
            margin-top: 35px;
        }
        .style6
        {
            width: 313px;
            height: 13px;
        }
        .style7
        {
            width: 134px;
            height: 13px;
        }
        .style8
        {
            height: 13px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<table cellpadding="0" cellspacing="5" width="100%" class="table">
        <tr>
            <td align="center" colspan="3" class="heading">
                    <span style="font-size: 16pt; color: #FFFF00; font-family: Verdana;">
                        <strong style="border-style: none; color: #990000; font-family: Cambria; font-size: 20px; font-weight: bold; text-transform: uppercase; text-decoration: underline; text-align: center;">Register Finance Manager</strong></span></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
                            <td style="font-weight: normal; font-family: Calibri; color: #000000;" 
                                align="left" class="style2">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">Designation:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtdesignation" runat="server" Width="200px" Height="25px" 
                                    Font-Names="Calibri" />
                                <asp:RequiredFieldValidator ID="rfvdesignation" runat="server" 
                                    ControlToValidate="txtdesignation" 
                                    ForeColor="#CC3300" ErrorMessage="* Enter Designation" 
                                    Font-Names="calibri" Font-Size="10pt" /></td>
        </tr>
        <tr>
            <td align="right" class="style1">
                                &nbsp;</td>
            <td align="left" class="style2" 
                style="font-weight: normal; font-family: Calibri; color: #000000;">
                                <span style="font-size: 11pt; font-family: Calibri; color: #000000;">First Name:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtfname" runat="server" Width="200px" Height="25px" 
                                    Font-Names="Calibri" />
                                <asp:RequiredFieldValidator ID="rfvfirstname"  runat="server" ControlToValidate ="txtfname" 
                                    ForeColor="#CC3300" ErrorMessage="* Enter first name" Font-Names="Calibri" 
                                    Font-Size="10pt" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" valign="top" class="style2" 
                style="font-weight: normal; font-family: Calibri; color: #000000;">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">Last Name</span>:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtlname" runat="server" Width="200px" Height="25px" 
                                    Font-Names="Calibri" />
                                <asp:RequiredFieldValidator ID="rfvlastname" runat="server" 
                                    ControlToValidate="txtlname" 
                                    ForeColor="#CC3300" ErrorMessage="* Enter last name" Font-Names="Calibri" 
                                    Font-Size="10pt" /></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
                            <td  valign ="top" 
                                style="font-weight: normal; font-family: Calibri; color: #000000;" 
                                align="left" class="style2">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">User Name:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                         
                                <asp:TextBox ID="txtusername" runat="server" Height="25px" Width ="200px" 
                                    Font-Names="Calibri" ontextchanged="txtUsername_TextChanged" AutoPostBack="true"/>
                                <asp:RequiredFieldValidator ID="rfvusername" runat="server" 
                                    ControlToValidate ="txtusername" 
                                    ForeColor="#CC3300" ErrorMessage=" * Enter username" Font-Names="Calibri" 
                                    Font-Size="10pt" /></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                                </td>
                            <td  valign ="top" 
                                style="font-weight: normal; font-family: Calibri; color: #000000;" 
                                align="left" class="style7">
                                </td>
            <td align="left" class="style8" style="vertical-align: middle">
                           <div id="checkusername" runat="server"  Visible="false">
                                    <asp:Image ID="imgstatus" runat="server" Width="16px" Height="16px"/>
               
                                    <asp:Label ID="lblStatus" runat="server" Font-Italic="False" 
                                    Font-Names="Calibri" Font-Size="9pt" ForeColor="Green"></asp:Label>
                                    </div>
                                </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
                            <td style="font-weight: normal; font-family: Calibri; color: #000000;" 
                                align="left" class="style2">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">Password:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtpwd" runat="server" Width="200px" Height="25px" 
                                    Font-Names="Calibri" />
                                <asp:RequiredFieldValidator ID="rfvpassword" runat="server" 
                                    ControlToValidate ="txtpwd" 
                                    ForeColor="#CC3300" ErrorMessage="* Enter password" Font-Names="Calibri" 
                                    Font-Size="10pt" /></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
                            <td style="font-weight: normal; font-family: Calibri; color: #000000;" 
                                align="left" class="style2">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">Address:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                            
                                <asp:TextBox ID="txtaddress" runat="server" Width="203px" TextMode="MultiLine" 
                                    Wrap="true" Font-Names="Calibri"/>
                                <asp:RequiredFieldValidator ID="rfvaddress" ControlToValidate ="txtaddress" 
                                    runat="server" ForeColor="#CC3300" ErrorMessage="* Enter Address" 
                                    Font-Names="Calibri" Font-Size="10pt" /></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
                        <td align ="left" 
                                style="font-weight: normal; font-family: Calibri; color: #000000;" 
                                class="style2" >
                            <span style="font-size: 11pt; font-family: calibri; color: #000000;">Contact No</span>:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtcontactno" runat ="server" 
                                    OnKeypress="return onlyNumbers(event)" Width="200px" Height="25px" 
                                    Font-Names="Calibri" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvcontact" runat ="server" 
                                ControlToValidate="txtcontactno" ForeColor="#CC3300" 
                                ErrorMessage="* Enter contact no" Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="revcontact" runat="server" 
                                    ControlToValidate="txtcontactno" ErrorMessage="* Enter valid contact no" 
                                    Font-Names="Calibri" Font-Size="9pt" ForeColor="#CC3300" 
                                    ValidationExpression="^[1-9][0-9]{9}$"></asp:RegularExpressionValidator> 
                                </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                            </td>
                        <td align ="left" 
                                style="font-weight: normal; font-family: Calibri; color: #000000;" 
                                class="style5" >
                            Company ID:</td>
            <td align="left" class="style3" style="vertical-align: middle">
                                <asp:DropDownList ID="dpcompanyid" runat="server" AutoPostBack="true" 
                                    Font-Names="Calibri" Font-Size="11pt" Height="25px" 
                                    onselectedindexchanged="dpcompanyid_SelectedIndexChanged" Width="200px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvcompanyid" runat="server" 
                                    ControlToValidate="dpcompanyid" ErrorMessage="* Select Company ID" 
                                    Font-Names="Calibri" Font-Size="9pt" ForeColor="#CC3300" InitialValue="--Select--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
                        <td align ="left" 
                                  style="font-weight: normal; font-family: Calibri; color: #000000;" 
                                  class="style2" >
                            Company Name:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                  <asp:TextBox ID="txtcompanyname" runat ="server"
                                      Width="200px" Height="25px" Font-Names="Calibri" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvcompanyname" runat ="server" 
                                ControlToValidate="txtcompanyname" ForeColor="#CC3300" 
                                ErrorMessage="* Enter company name" Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            <asp:Label ID="lblmsg" runat ="server" ForeColor="#CC3300" Font-Bold="True" ></asp:Label></td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            <asp:Button ID="btnAdd" runat ="server" 
                                Text ="ADD" Width="73px" OnClick="btnAdd_Click" Font-Bold="True" 
                                style="margin-left: 0px" />
                        <asp:Button ID="btnCancel" runat ="server" Text ="CANCEL" Width="76px" 
                                CausesValidation="False" OnClick="btnCancel_Click" Font-Bold="True" /></td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3" class="style3">
                        </td>
        </tr>
        <tr>
            <td align="right" valign="top" colspan="3">
                &nbsp;</td>
        </tr>
        </table>

    </asp:Content>

