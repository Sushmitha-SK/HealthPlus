<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 344px;
        }
        .style2
        {
            width: 87px;
        }
        .table
        {
            margin-top: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">



    <table cellpadding="0" cellspacing="5" width="100%" class="table">
        <tr>
            <td align="center" colspan="3" class="heading">
                    <span style="font-size: 16pt; color: #FFFF00; font-family: Verdana;">
                        <strong style="border-style: none; color: #990000; font-family: Cambria; font-size: 20px; font-weight: bold; text-transform: uppercase; text-decoration: underline;">FEEDBACK</strong></span></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" style="color: #000000; font-family: calibri;" class="style2">
                User Name:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:TextBox ID="txtUsername" runat="server" Width="201px" Font-Names="Calibri"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rvalidator_username" runat="server" 
                    ErrorMessage="* Enter Username" Font-Names="Calibri" Font-Size="9pt" 
                    ForeColor="#CC3300" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">
                                &nbsp;</td>
            <td align="left" style="color: #000000; font-family: calibri;" class="style2">
                Email Id:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:TextBox ID="txtMail" runat="server" MaxLength="50" Width="201px" 
                    Font-Names="Calibri"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvalidator_email" runat="server" 
                    ErrorMessage="* Enter email id" Font-Names="Calibri" Font-Size="9pt" 
                    ForeColor="#CC3300" ControlToValidate="txtMail"></asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtMail" ErrorMessage="* Please enter valid email id" 
                            
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    Font-Names="calibri" Font-Size="9pt" ForeColor="#CC3300"></asp:RegularExpressionValidator>


            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" style="color: #000000; font-family: calibri;" class="style2">
                Subject:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:TextBox ID="txtSubject" runat="server" MaxLength="50" Width="201px" 
                    Font-Names="Calibri"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvalidator_subject" runat="server" 
                    ErrorMessage="* Enter subject" Font-Names="Calibri" Font-Size="9pt" 
                    ForeColor="#CC3300" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" style="color: #000000; font-family: calibri;" class="style2">
                Feedback:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                         
                <asp:TextBox ID="txtMsg" runat="server" Height="69px" MaxLength="200" TextMode="MultiLine"
                    Width="201px" Font-Names="Calibri"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvalidator_feedback" runat="server" 
                    ErrorMessage="* Enter feedback" Font-Names="Calibri" Font-Size="9pt" 
                    ForeColor="#CC3300" ControlToValidate="txtMsg"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                    Text="SUBMIT" Width="90px" Height="27px" style="margin-left: 0px" 
                    onclick="submit_Click" />
                <asp:Button ID="Reset" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                    Text="RESET" Width="90px" Height="27px" style="margin-left: 0px" 
                    onclick="reset_Click" /></td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Width="297px" 
                    ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" valign="top" colspan="3">
                &nbsp;</td>
        </tr>
        </table>



</asp:Content>

