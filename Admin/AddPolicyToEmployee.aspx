<%@ Page Title="Admin- Add Policy To Employee" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="AddPolicyToEmployee.aspx.cs" Inherits="Admin_AddPolicyToEmployee" %>

<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc1" %>
<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="ASP.Web.UI.PopupControl" Namespace="ASP.Web.UI.PopupControl"
    TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style28
        {
            height: 30px;
            width: 118px;
        }
        .style29
        {
            height: 37px;
            width: 118px;
        }
        .style30
        {
            width: 118px;
        }
        .style31
        {
            height: 43px;
            width: 118px;
        }
        .style32
        {
            height: 30px;
            width: 321px;
        }
        .table
        {
            margin-top: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <table cellpadding="0" cellspacing="5" width="100%" class="table">
            <tr>
                <td align="center" colspan="3" class="heading">
                    <span style="font-size: 16pt; color: #FFFF00; font-family: Verdana;"><strong style="border-style: none;
                        color: #990000; font-family: Cambria; font-size: 20px; font-weight: bold; text-transform: uppercase;
                        text-decoration: underline;">Add POLICY ON EMPLOYEE</strong></span>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td style="color: #000000; font-family: Calibri;" align="justify" rowspan="1" class="style28"
                    height="30">
                    Employee ID:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1"
                        Width="180px" Font-Names="calibri" Height="25px">
                        <asp:ListItem Text="--Select--" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Select Employee Id"
                        ForeColor="#CC3300" InitialValue="--Select--" ControlToValidate="DropDownList1"
                        Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style32">
                    &nbsp;
                </td>
                <td align="justify" class="style28" height="30" style="font-family: Calibri; color: #000000">
                    Policy ID:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:DropDownList ID="ddlpolicyid" runat="server" Width="180px" AutoPostBack="True"
                        OnSelectedIndexChanged="ddlpolicyid_SelectedIndexChanged" Font-Names="calibri"
                        Height="25px">
                        <asp:ListItem Text="--Select--" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlpolicyid"
                        InitialValue="--Select--" ForeColor="#CC3300" ErrorMessage="* Select Policy ID"
                        Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td align="justify" class="style28" height="30" style="font-family: Calibri; color: #000000">
                    Policy Name:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px" Font-Names="calibri" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="* Enter policy name" ForeColor="#CC3300" Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td align="justify" class="style29" height="30" style="font-family: Calibri; color: #000000">
                    Policy Amount:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:TextBox ID="TextBox3" runat="server" OnKeypress="return onlyNumbersdot(event)"
                        Width="180px" Font-Names="calibri" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                        ErrorMessage="* Enter policy amount" ForeColor="#CC3300" Font-Names="Calibri"
                        Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td align="justify" class="style30" height="30" style="font-family: Calibri; color: #000000">
                    Policy Start Date:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <cc1:DatePicker ID="GMDatePicker1" runat="server" InitialValueMode="Null" Width="180px"
                        Font-Names="calibri" AutoPosition="True" Height="25px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="GMDatePicker1"
                        ForeColor="#CC3300" ErrorMessage="* Select policy start date" Font-Names="Calibri"
                        Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td align="justify" class="style30" height="30" style="font-family: Calibri; color: #000000">
                    Policy End Date:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <cc1:DatePicker ID="GMDatePicker2" runat="server" runat="server" InitialValueMode="Null"
                        Width="180px" Font-Names="calibri" Height="25px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="GMDatePicker2"
                        ForeColor="#CC3300" ErrorMessage="* Select policy end date" Font-Names="Calibri"
                        Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td style="color: #000000; font-family: Calibri;" align="justify" class="style31"
                    height="30">
                    Policy Duration:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:DropDownList ID="txtduration" runat="server" Width="180px" Font-Names="calibri"
                        Height="25px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                       
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="* Select policy duration"
                        ForeColor="#CC3300" InitialValue="--Select--" ControlToValidate="txtduration"
                        Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td style="color: #000000; font-family: Calibri;" align="justify" class="style30"
                    height="30">
                    Company ID:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <%--<asp:DropDownList ID ="ddlcompanyid" runat ="server" Width="180px" 
                                    AutoPostBack="True" 
                                    OnSelectedIndexChanged="ddlcompanyid_SelectedIndexChanged" 
                                    Font-Names="calibri" Height="25px">
                                    <asp:ListItem Text="--Select--" />
                                    </asp:DropDownList>--%>
                    <asp:TextBox ID="txtcid" runat="server" Font-Names="calibri" Height="25px" Width="180px"
                        Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcid"
                        InitialValue="--Select--" ForeColor="#CC3300" ErrorMessage="* Select Company ID"
                        Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td style="color: #000000; font-family: Calibri;" align="justify" class="style30"
                    height="30">
                    Company Name:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <%--<asp:TextBox ID="TextBox8" runat ="server" 
                                    Width="180px" Font-Names="calibri" Height="25px" ></asp:TextBox>--%>
                    <asp:TextBox ID="txtcname" runat="server" Font-Names="calibri" Height="25px" Width="180px"
                        Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtcname"
                        ErrorMessage="* Enter company name" ForeColor="#CC3300" Font-Names="Calibri"
                        Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td style="color: #000000; font-family: Calibri;" align="justify" class="style30"
                    height="30">
                    Medical ID:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:TextBox ID="txtmedical" runat="server" Width="180px" Font-Names="calibri" Height="25px"
                        Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="* Enter Medical ID"
                        ForeColor="#CC3300" ControlToValidate="txtmedical" Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td style="color: #000000; font-family: Calibri;" align="justify" class="style30"
                    height="30">
                    Policy Premium:
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:TextBox ID="TextBox4" runat="server" OnKeypress="return onlyNumbersdot(event)"
                        Width="180px" Font-Names="calibri" Height="25px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" class="style32">
                    &nbsp;
                </td>
                <td style="color: #000000;" align="justify" class="style30" height="30">
                    <asp:TextBox ID="txtdob" runat="server" Visible="False" Width="111px" Height="19px"></asp:TextBox>
                </td>
                <td align="left" class="style12" style="vertical-align: middle">
                    <asp:Button ID="Button1" runat="server" Font-Names="Calibri" Font-Size="8pt" Text="Calculate Premium"
                        OnClick="btn_CalculatePremium" Font-Bold="True" Font-Italic="True" />
                </td>
            </tr>
            <tr>
                <td align="center" valign="top" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" valign="top" colspan="3">
                    <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" Font-Bold="True"
                        Font-Names="Verdana" Font-Size="X-Small" Width="90px" Height="30px" />
                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" CausesValidation="False"
                        OnClick="btncancel_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                        Width="90px" Height="30px" />
                </td>
            </tr>
            <tr>
                <td align="center" valign="top" colspan="3">
                    <asp:Label ID="lblmsg" runat="server" Width="251px" ForeColor="#CC3300"></asp:Label>
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
