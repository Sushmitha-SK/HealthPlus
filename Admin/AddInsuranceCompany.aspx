<%@ Page Title="Admin- Add Insurance Company" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="AddInsuranceCompany.aspx.cs" Inherits="Admin_AddInsuranceCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style25
        {
            width: 544px;
            height: 30px;
        }
        .style26
        {
            height: 30px;
            width: 118px;
        }
        .table
        {
            margin-top: 30px;
        }
        .style27
        {
            height: 30px;
            width: 328px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <strong><span style="font-size: 14pt"></span></strong>
        <br />
        <table cellpadding="0" cellspacing="5" width="100%" class="table">
            <tr>
                <td align="center" colspan="3" class="heading">
                    <span style="font-size: 16pt; color: #FFFF00; font-family: Verdana;"><strong style="border-style: none;
                        color: #990000; font-family: Cambria; font-size: 20px; font-weight: bold; text-transform: uppercase;
                        text-decoration: underline;">ADD INSURANCE COMPANY DETAILS</strong></span>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style27">
                </td>
                <td align="left" valign="top" class="style26" style="vertical-align: middle">
                    <span style="font-size: 11pt; color: Black; font-family: Calibri;">Company Name:</span>
                </td>
                <td align="left" class="style25" style="vertical-align: middle">
                    <asp:TextBox ID="txtcname" runat="server" Width="200px" Font-Names="Calibri" Font-Size="11pt" />
                    <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtcname"
                        ErrorMessage="* Enter Company Name" ForeColor="Red" Font-Names="Calibri" Font-Size="10pt" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style27">
                </td>
                <td align="left" class="style26">
                    <span style="font-size: 11pt; font-family: Calibri; color: #000000;">Address:</span>
                </td>
                <td align="left" class="style25">
                    <asp:TextBox ID="txtaddress" runat="server" Width="201px" TextMode="MultiLine" Font-Names="Calibri"
                        Font-Size="11pt" Height="30px" />
                    <asp:RequiredFieldValidator ID="rexv" runat="server" ControlToValidate="txtaddress"
                        ErrorMessage="* Enter Company Address" ForeColor="Red" Font-Names="Calibri" Font-Size="10pt" />
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style27">
                </td>
                <td align="left" valign="top" class="style26" style="vertical-align: middle">
                    <span style="font-size: 11pt; color: #000000; font-family: calibri;">Phone no: </span>
                </td>
                <td align="left" class="style25" style="vertical-align: middle">
                    <asp:TextBox ID="txtpno" runat="server" Width="200px" OnKeypress="return onlyNumbers(event)"
                        Font-Names="Calibri" Font-Size="11pt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvpho" runat="server" ControlToValidate="txtpno"
                        ErrorMessage="* Enter Phone No" ForeColor="Red" Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style27">
                </td>
                <td align="left" valign="top" class="style26" style="vertical-align: middle">
                    <span style="font-size: 11pt; color: #000000; font-family: calibri;">Company URL:</span>
                </td>
                <td align="left" class="style25" style="vertical-align: middle">
                    <asp:TextBox ID="txtcurl" runat="server" Width="200px" Font-Names="Calibri" Font-Size="11pt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvurl" runat="server" ControlToValidate="txtcurl"
                        ErrorMessage="* Enter Company Url" ForeColor="Red" Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revcompanyurl" runat="server" ControlToValidate="txtcurl"
                        ErrorMessage="* Enter valid URL" Font-Names="Calibri" Font-Size="10pt" ForeColor="#FF3300"
                        ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center" valign="top" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" valign="top" colspan="3">
                    <asp:Button ID="btnAdd" runat="server" Text="ADD" Width="80px" Height="25px" OnClick="btnAdd_Click"
                        Font-Names="Calibri" Font-Bold="True" Font-Size="11pt" />
                    <asp:Button ID="btnCancel" runat="server" Text="CANCEL" Width="80px" Height="25px"
                        CausesValidation="False" OnClick="btnCancel_Click" Font-Bold="True" Font-Names="Calibri"
                        Font-Size="11pt" />
                </td>
            </tr>
            <tr>
                <td align="center" valign="top" colspan="3">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="#990000" Width="329px" Font-Names="calibri"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" colspan="3">
                    &nbsp;
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
