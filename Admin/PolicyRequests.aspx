<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="PolicyRequests.aspx.cs" Inherits="Admin_PolicyRequests" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc2" %>
<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style5
        {
            height: 30px;
            width: 114px;
        }
        .style6
        {
            height: 30px;
            width: 324px;
        }
        .table
        {
            margin-top: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table cellpadding="0" cellspacing="5" width="100%" class="table">
        <tr>
            <td align="center" colspan="3" class="heading">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="16pt"
                    Font-Underline="True" ForeColor="Maroon" Text="POLICY REQUEST DETAILS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                <asp:Label ID="Label21" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" Width="150px">Employee ID:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblEmployeeId" runat="server" Font-Names="Calibri" ForeColor="Black"
                    Text="Label" Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style6">
                &nbsp;
            </td>
            <td align="left" class="style5" style="vertical-align: middle">
                <asp:Label ID="Label22" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" Width="150px">Employee Name:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblEmployeeName" runat="server" Font-Names="Calibri" ForeColor="Black"
                    Text="Label" Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                <asp:Label ID="Label19" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" Width="150px">Request ID:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblRequestId" runat="server" Font-Names="Calibri" ForeColor="Black"
                    Text="Label" Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" Width="150px">Policy ID:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblPolicyId" runat="server" Font-Names="Calibri" ForeColor="Black"
                    Text="Label" Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" Width="150px">Policy Name:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblPolicyName" runat="server" Font-Names="Calibri" ForeColor="Black"
                    Text="Label" Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" Width="150px">Policy Amount:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblPolicyAmount" runat="server" Font-Names="Calibri" ForeColor="Black"
                    Text="Label" Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5" style="vertical-align: middle">
                <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" Width="150px">Premium:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblpremium" runat="server" Text="Label" Font-Names="Calibri" ForeColor="Black"
                    Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5">
                <asp:Label ID="Label18" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" Width="150px">Request Date:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblRequestDate" runat="server" Text="Label" Font-Names="Calibri" ForeColor="Black"
                    Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5">
                <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Company Id:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblCompanyId" runat="server" Text="Label" Font-Names="Calibri" ForeColor="Black"
                    Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5">
                <asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Company Name:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblCompanyName" runat="server" Text="Label" Font-Names="Calibri" ForeColor="Black"
                    Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5">
                <asp:Label ID="Label27" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Hospital ID:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:Label ID="lblHospitalId" runat="server" Text="Label" Font-Names="Calibri" ForeColor="Black"
                    Width="180px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5">
                <asp:Label ID="Label23" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Policy Duration:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <asp:DropDownList ID="dropyear" runat="server" Font-Names="Calibri" Font-Size="11pt"
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
                <asp:Label ID="Label26" runat="server" Font-Names="Calibri" Font-Size="11pt" Text="Year"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropyear"
                    ErrorMessage="* Select policy duration" Font-Names="Calibri" Font-Size="9pt"
                    ForeColor="#FF3300" InitialValue="--Select--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5">
                <asp:Label ID="Label24" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Policy Start Date:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <cc1:DatePicker ID="dp_policysdate" runat="server" Font-Names="Calibri" Font-Size="11pt"
                    Width="150px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dp_policysdate"
                    ErrorMessage="* Select policy start date" Font-Names="Calibri" Font-Size="9pt"
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                &nbsp;
            </td>
            <td align="left" valign="top" class="style5">
                <asp:Label ID="Label25" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Policy End Date:</asp:Label>
            </td>
            <td align="left" class="style12" style="vertical-align: middle">
                <cc1:DatePicker ID="dp_policyedate" runat="server" Font-Names="Calibri" Font-Size="11pt"
                    BorderStyle="None" Width="150px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dp_policyedate"
                    ErrorMessage="* Select policy end date" Font-Names="Calibri" Font-Size="9pt"
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                <asp:Button ID="btnadd" runat="server" Text="ADD POLICY TO EMPLOYEE" OnClick="btnadd_Click"
                    Font-Bold="True" Font-Names="Calibri" Font-Size="11pt" Style="margin-left: 52px"
                    Width="200px" /><asp:Button ID="btndeleteRequest" Text="DELETE REQUEST" runat="server"
                        OnClick="btndeleteRequest_Click" Font-Bold="True" Font-Names="Calibri" Font-Size="11pt" />
                <asp:Button ID="btnBack" runat="server" OnClick="btnback_Click" Text="BACK" Font-Bold="True"
                    Font-Names="Calibri" Font-Size="11pt" />
            </td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                &nbsp;
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
</asp:Content>
