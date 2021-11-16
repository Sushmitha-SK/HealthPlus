<%@ Page Title="Employee- Order Insurance" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="OrderInsurance.aspx.cs" Inherits="Employee_OrderInsurance" %>

<%@ Register assembly="DatePickerControl" namespace="DatePickerControl" tagprefix="cc1" %>

<%@ Register assembly="GMDatePicker" namespace="GrayMatterSoft" tagprefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .table
        {
            margin-top: 63px;
        }
        .style10
        {
            width: 310px;
            height: 35px;
        }
        .style11
        {
            width: 12%;
            height: 35px;
        }
        .style12
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    



    <table cellpadding="0" cellspacing="5" width="100%" class="table">
        <tr>
            <td align="center" colspan="3" class="heading">
        <strong>
        <span style="font-size: 16pt; color: #800000; font-family: Cambria; text-transform: uppercase; text-decoration: underline;">
            Order For Insurance Policy</span></strong></td>
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
            <td align="right" valign="top" class="style10">
                </td>
            <td align="left" valign="top" class="style11" style="vertical-align: middle">
                <asp:Label ID="Label9" runat="server" Text="PolicyId:" Font-Bold="False" 
                    Font-Names="Calibri" Font-Size="12pt" ForeColor="Black"></asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:DropDownList ID="ddlpid" runat="server" Width="200px" AutoPostBack="True" 
                    OnSelectedIndexChanged="ddlpid_SelectedIndexChanged" Font-Names="Calibri" 
                    Font-Size="11pt" Height="25px"/>
                 <asp:RequiredFieldValidator ID="rvf" runat="server" 
                    ControlToValidate="ddlpid" ForeColor="#FF3300" 
                    ErrorMessage="* Select Policy ID" Font-Names="Calibri" Font-Size="9pt" 
                    InitialValue="--Select--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                </td>
            <td align="left" class="style11" style="vertical-align: middle">
                <asp:Label ID="Label10" runat="server" Text="PolicyName:" Font-Bold="False" 
                    Font-Names="Calibri" Font-Size="12pt" ForeColor="Black"></asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:TextBox ID="txtpname" runat="server" Width="200px" Font-Names="Calibri" 
                    Font-Size="11pt" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style10">
                </td>
            <td align="left" valign="top" class="style11" style="vertical-align: middle">
                <asp:Label ID="Label11" runat="server" Text="PolicyAmount:" Font-Bold="False" 
                    Font-Names="Calibri" Font-Size="12pt" ForeColor="Black"></asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:TextBox ID="txtpamount" runat="server" Width="200px" Font-Names="Calibri" 
                    Font-Size="11pt" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style10">
                </td>
            <td align="left" valign="top" class="style11" style="vertical-align: middle">
                         <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Calibri" 
                             Font-Size="12pt" ForeColor="Black" Text="Request Date:"></asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                         
                        <%-- <cc2:GMDatePicker ID="GMDatePicker1" runat="server" Width="200px" 
                             Font-Names="Calibri" Font-Size="11pt" Height="25px">
                         </cc2:GMDatePicker>--%>
                <cc1:DatePicker ID="GMDatePicker1" runat="server" Width="200px" 
                             Font-Names="Calibri" Font-Size="11pt" Height="25px" />     
              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                             ControlToValidate="GMDatePicker1" ErrorMessage="* Select request date" 
                             Font-Names="Calibri" Font-Size="9pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style10">
                </td>
            <td align="left" valign="top" class="style11" style="vertical-align: middle">
                <asp:Label ID="Label13" runat="server" Text="CompanyName:" Font-Bold="False" 
                    Font-Names="Calibri" Font-Size="12pt" ForeColor="Black"></asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:TextBox ID="txtCname" runat="server" Width="200px" Font-Names="Calibri" 
                    Font-Size="11pt" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style10">
                </td>
            <td align="left" valign="top" class="style11" style="vertical-align: middle">
                <asp:Label ID="Label14" runat="server" Text="CompanyId:" Font-Bold="False" 
                    Font-Names="Calibri" Font-Size="12pt" ForeColor="Black"></asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:TextBox ID="txtCid" runat="server" Width="200px" Font-Names="Calibri" 
                    Font-Size="11pt" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style10">
                </td>
            <td align="left" valign="top" class="style11" style="vertical-align: middle">
                         <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Names="Calibri" 
                             Font-Size="12pt" ForeColor="Black" Text="Premium:"></asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                         <asp:TextBox ID="txtpremium" runat ="server" 
                             Width="200px" Font-Names="Calibri" Font-Size="11pt" 
                    Height="25px" ></asp:TextBox>
                         
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style10">
                </td>
            <td align="left" valign="top" class="style11">
                <asp:TextBox ID="txtStatus" runat="server" Visible="False" Width="25px" 
                    Text="Inactive" Font-Names="Calibri" Font-Size="11pt" Height="25px"></asp:TextBox>
                         <asp:TextBox ID="txtdob" runat="server" Visible="False" Width="25px"></asp:TextBox>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Names="Calibri" Font-Size="9pt" Text="Calculate Premium" 
                    OnClick="btn_CalculatePremium"/>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" colspan="2">
                &nbsp;</td>
            <td align="left">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Verdana" 
                    Font-Size="11pt" ForeColor="#CC3300"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" valign="top" colspan="2">
                &nbsp;</td>
            <td align="left">
                <asp:Button ID="btnadd" runat ="server" Text ="ADD" 
                OnClick="btnadd_Click" Font-Bold="True" Font-Names="Calibri"/>
            <asp:Button ID="btnCancel" runat ="server" Text ="CANCEL" 
                OnClick="btnCancel_Click" CausesValidation="False" Font-Bold="True" 
                Font-Names="Calibri"/></td>
        </tr>
        <tr>
            <td align="right" valign="top" colspan="2">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" valign="top" colspan="2">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
    </table>





</asp:Content>

