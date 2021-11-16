<%@ Page Title="Admin- Add Hospital Information" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddHospitalInfo.aspx.cs" Inherits="Admin_AddHospitalInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 22px;
            width: 306px;
        }
        .style12
        {
            height: 34px;
        }
        .style20
        {
            height: 35px;
            width: 117px;
        }
        .style21
        {
            height: 32px;
            width: 117px;
        }
        .table
        {
            margin-top: 50px;
        }
        .style22
        {
            width: 117px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <center>


<table cellpadding="0" cellspacing="5" width="100%" class="table">
        <tr>
            <td align="center" colspan="3" class="heading">
                    <span style="font-size: 16pt; color: #FFFF00; font-family: Verdana;">
                        <strong style="border-style: none; color: #990000; font-family: Cambria; font-size: 20px; font-weight: bold; text-transform: uppercase; text-decoration: underline;">Add Hospital Info</strong></span></td>
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
            <td align="left" valign="top" class="style22" 
                style="vertical-align: middle; font-family: Calibri; color: #000000;">
                                Hospital Name:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="HospitalName" runat="server" Width="180px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate ="HospitalName"     
                                    ErrorMessage="* Enter hospital name" ForeColor="Red" Font-Names="Calibri" 
                                    Font-Size="10pt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                                &nbsp;</td>
            <td align="left" class="style22" style="vertical-align: middle">
                                <span style="font-family: calibri; color: #000000; font-weight: 500;">Hospital Address:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="HospitalAddress" runat="server" Width="180px" Height="30px" 
                                    style="margin-top: 8px" Font-Names="Calibri" Font-Size="11pt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                 ControlToValidate ="HospitalAddress"    
                                    ErrorMessage="* Enter hospital address" ForeColor="Red" 
                                    Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                                &nbsp;</td>
            <td align="left" valign="top" class="style22" style="vertical-align: middle">
                                <span style="font-size: 10pt; font-family: Verdana; left: auto; font-weight: 500; color: #000000;">Phone No:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="PhoneNo" runat ="server" Width="180px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvamt" 
                                    ControlToValidate ="PhoneNo" runat ="server" ForeColor="Red" 
                                    ErrorMessage="* Enter phone no" Font-Names="Calibri" Font-Size="10pt" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                                &nbsp;</td>
                            <td align="left" 
                                style="color: #000000; font-family: calibri; font-weight: 500;" 
                                class="style20">
                                Location<strong><span style="font-size: 10pt"><span style="font-family: Verdana">:</span></span></strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                         
                            <asp:TextBox ID="Location" MaxLength ="6"  runat ="server" 
                                     Width="180px" Height="25px" Font-Names="Calibri" Font-Size="11pt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvemi" ControlToValidate ="Location" 
                                    runat ="server"  ErrorMessage="* Enter location" Font-Names="Calibri" 
                                    Font-Size="10pt" Height="20px" ForeColor="Red" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style4">
                                &nbsp;</td>
                            <td align="left" 
                                style="color: #000000; font-family: calibri; font-weight: 500;" 
                                class="style21">
                                URL:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="URL" runat="server" Width="180px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt"></asp:TextBox>
                                
                               
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate ="URL"
                                    ErrorMessage="* Enter URL" 
                                    ForeColor="Red" Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_url" runat="server" 
                                    ControlToValidate="URL" ErrorMessage="* Enter valid URL" Font-Names="Calibri" 
                                    Font-Size="10pt" ForeColor="#FF3300" 
                                    ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            <asp:Label ID="labelMessage" 
                    runat ="server" Font-Bold="True" Font-Size="11pt" ForeColor="Red" 
                    Font-Names="Calibri"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                <asp:Button ID="btnAdd" runat ="server" 
                    Text ="ADD" Font-Bold="True" Font-Italic="False" OnClick="btnAdd_Click" 
                    Width="80px" Font-Names="Verdana" Font-Size="X-Small" Height="24px" />
                <asp:Button ID="btnCancel" Text ="CANCEL" runat="server" 
                    CausesValidation="False" Font-Bold="True" Font-Italic="False" 
                    OnClick="btnCancel_Click" Font-Names="Verdana" Font-Size="X-Small" 
                    Height="24px" Width="80px" /></td>
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

