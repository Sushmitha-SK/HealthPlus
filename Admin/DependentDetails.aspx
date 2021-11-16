<%@ Page Title="Admin- Add Dependent Details" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="DependentDetails.aspx.cs" Inherits="Admin_DependentDetails" %>

<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style4
        {
            height: 23px;
            width: 295px;
        }
        .style5
        {
            height: 23px;
            width: 127px;
        }
        .table
        {
            margin-top: 35px;
        }
        .style6
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <table cellpadding="0" cellspacing="5" width="100%" class="table">
            <tr>
                <td align="center" colspan="3" class="heading">
                    <asp:Label ID="Label1" runat="server" Text="DEPENDENT DETAILS" Font-Names="Cambria"
                        Font-Bold="True" Font-Size="16pt" ForeColor="#990000" Font-Underline="True" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style4" style="vertical-align: middle">
                    &nbsp;
                </td>
                <td align="left" valign="top" class="style5" style="vertical-align: middle">
                    <asp:Label ID="Label2" runat="server" Text="Employee ID:" Font-Bold="False" Font-Names="Calibri"
                        Font-Size="12pt" ForeColor="Black"></asp:Label>
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:DropDownList ID="ddleid" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddleid_SelectedIndexChanged"
                        Font-Names="Calibri" Font-Size="11pt" Height="25px" />
                    <asp:RequiredFieldValidator ID="rfveid" runat="server" InitialValue="--Select--"
                        ControlToValidate="ddleid" ForeColor="#FF3300" ErrorMessage="* Select Employee ID"
                        Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style4" style="vertical-align: middle">
                </td>
                <td align="left" class="style5" style="vertical-align: middle">
                    <asp:Label ID="Label3" runat="server" Text="Employee Name:" Font-Bold="False" Font-Names="Calibri"
                        Font-Size="12pt" ForeColor="Black"></asp:Label>
                </td>
                <td align="left" class="style6" style="vertical-align: middle">
                    <asp:TextBox ID="txtename" runat="server" Width="200px" Font-Names="Calibri" Font-Size="11pt"
                        Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvename" runat="server" ControlToValidate="txtename"
                        ErrorMessage="* Enter employee name" Font-Names="Calibri" Font-Size="10pt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style4" style="vertical-align: middle">
                    &nbsp;
                </td>
                <td align="left" valign="top" class="style5" style="vertical-align: middle">
                    <asp:Label ID="Label4" runat="server" Text="Dependant Name:" Font-Bold="False" Font-Names="Calibri"
                        Font-Size="12pt" ForeColor="Black"></asp:Label>
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:TextBox ID="txtdependentname" runat="server" Width="200px" Font-Names="Calibri"
                        Font-Size="11pt" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvdname" runat="server" ControlToValidate="txtdependentname"
                        ForeColor="#FF3300" ErrorMessage="* Enter dependent name" Font-Names="Calibri"
                        Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style4" style="vertical-align: middle">
                    &nbsp;
                </td>
                <td align="left" valign="top" class="style5" style="vertical-align: middle">
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                        ForeColor="Black" Text="Relationship:"></asp:Label>
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:DropDownList ID="ddlrelationship" runat="server" Font-Names="Calibri" Font-Size="11pt"
                        OnSelectedIndexChanged="ddlrelationship_SelectedIndexChanged" Width="200px">
                        <asp:ListItem Text="--Select--" />
                        <asp:ListItem Text="Father" Value="Father" />
                        <asp:ListItem Text="Mother" Value="Mother" />
                        <asp:ListItem Text="Spouse" Value="Spouse" />
                        <asp:ListItem Text="Child" Value="Child" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvrelationship" runat="server" InitialValue="--Select--"
                        ControlToValidate="ddlrelationship" ErrorMessage="* Select Relationship" Font-Names="Calibri"
                        Font-Size="10pt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style4" style="vertical-align: middle">
                    &nbsp;
                </td>
                <td align="left" valign="top" class="style5" style="vertical-align: middle">
                    <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                        ForeColor="Black" Text="Address:"></asp:Label>
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:TextBox ID="txtaddress" runat="server" Width="200px" TextMode="MultiLine" Wrap="true"
                        Font-Names="Calibri" Font-Size="12pt" Height="30px" />
                    <asp:RequiredFieldValidator ID="rfvaddress" runat="server" ControlToValidate="txtaddress"
                        ErrorMessage="* Enter Address" Font-Names="Calibri" Font-Size="10pt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style4" style="vertical-align: middle">
                    &nbsp;
                </td>
                <td align="left" valign="top" class="style5" style="vertical-align: middle">
                    <asp:Label ID="Label5" runat="server" Text="Phone No:" Font-Bold="False" Font-Names="Calibri"
                        Font-Size="12pt" ForeColor="Black"></asp:Label>
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:TextBox ID="txtPhoneno" runat="server" Width="200px" Font-Names="Calibri" Font-Size="11pt"
                        Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvphoneno" runat="server" ControlToValidate="txtPhoneno"
                        ErrorMessage="* Enter Phone no" Font-Names="Calibri" Font-Size="10pt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style4" style="vertical-align: middle">
                </td>
                <td align="left" valign="top" class="style5" style="vertical-align: middle">
                    <asp:Label ID="Label6" runat="server" Text="Email ID:" Font-Bold="False" Font-Names="Calibri"
                        Font-Size="12pt" ForeColor="Black"></asp:Label>
                </td>
                <td align="left" class="style6" style="vertical-align: middle">
                    <asp:TextBox ID="txtemailid" runat="server" Width="200px" Font-Names="Calibri" Font-Size="11pt"
                        Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvemailid" runat="server" ControlToValidate="txtemailid"
                        ErrorMessage="* Enter Email id" Font-Names="Calibri" Font-Size="10pt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Enter valid EmailID"
                        Font-Names="Calibri" Font-Size="9pt" ForeColor="#FF3300" ControlToValidate="txtemailid"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style4" style="vertical-align: middle">
                    &nbsp;
                </td>
                <td align="left" valign="top" class="style5" style="vertical-align: middle">
                    <asp:Label ID="Label9" runat="server" Text="DOB:" Font-Bold="False" Font-Names="Calibri"
                        Font-Size="12pt" ForeColor="Black"></asp:Label>
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <cc1:DatePicker ID="dpdob" runat="server" Font-Names="Calibri" Font-Size="11pt" Width="200px" />
                    <asp:RequiredFieldValidator ID="rfvdob" runat="server" ControlToValidate="dpdob"
                        ErrorMessage="* Enter DOB" Font-Names="Calibri" Font-Size="10pt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" valign="top" colspan="3" class="style6" style="vertical-align: middle">
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="11pt"
                        ForeColor="#CC3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" valign="top" colspan="3" style="vertical-align: middle">
                    <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" Font-Bold="True"
                        Font-Names="Calibri" />
                    <asp:Button ID="btnCancel" runat="server" Text="CANCEL" OnClick="btnCancel_Click"
                        CausesValidation="False" Font-Bold="True" Font-Names="Calibri" />
                </td>
            </tr>
            <tr>
                <td align="center" valign="top" colspan="3">
                    &nbsp;
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
