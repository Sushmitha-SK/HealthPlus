<%@ Page Title="Admin- View Claim Status" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master"
    AutoEventWireup="true" CodeFile="ViewClaimStatus.aspx.cs" Inherits="Admin_ViewClaimStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 189px;
        }
        .style2
        {
            height: 33px;
        }
        .style3
        {
            height: 28px;
        }
        .style4
        {
            height: 31px;
        }
        .style5
        {
            width: 213px;
        }
        .style6
        {
            width: 213px;
            height: 29px;
        }
        .style7
        {
            width: 189px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table align="center" style="border-style: none; border-width: medium; width: 447px;
        height: 526px; margin-top: 53px;" cellpadding="4">
        <tr style="border-width: medium; border-bottom-style: groove;">
            <td style="font-weight: bold; font-size: 18px; font-family: Cambria; color: #990000;
                text-align: center; text-decoration: underline;" align="left" class="style4"
                colspan="2">
                CLAIM REQUEST DETAILS
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Employee ID:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblEmpId" runat="server" Font-Names="Calibri" Font-Size="12pt" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label19" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Employee Name:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblEmpName" runat="server" Font-Names="Calibri" Font-Size="12pt" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Claim ID:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblClaimId" runat="server" Font-Names="Calibri" Font-Size="12pt" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Policy ID:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblPolicyId" runat="server" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Policy Name:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblPolicyName" runat="server" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style6">
                <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Policy Amount:</asp:Label>
            </td>
            <td align="left" class="style7" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblPolicyAmt" runat="server" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Policy Starting Date:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblPolicysdate" runat="server" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Policy Ending Date:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblPenddate" runat="server" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Company ID:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblCid" runat="server" Font-Names="Calibri" Font-Size="12pt" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Company Name:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblCName" runat="server" Font-Names="Calibri" Font-Size="12pt" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label22" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Hospital ID:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblHospitalId" runat="server" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label23" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Hospital Name:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblHospitalName" runat="server" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label24" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Reason:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblReason" runat="server" Font-Names="Calibri" Font-Size="12pt" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black">Requested Claim Amount:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblReqClaimAmt" runat="server" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; border-style: none;" align="left" class="style5">
                <asp:Label ID="Label21" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" Visible="False">Claim Amount to be Approved:</asp:Label>
            </td>
            <td align="left" class="style1" style="border-width: thin; border-style: none;">
                <asp:Label ID="lblClmAmtApproved" runat="server" Font-Names="Calibri" Font-Size="12pt"
                    ForeColor="Black" Visible="False" />
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; font-size: 10px; font-family: Verdana" align="center"
                class="style3" colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; font-size: 10px; font-family: Verdana" align="center"
                class="style2" colspan="2">
                <asp:Button ID="approve" runat="server" Font-Bold="True" Font-Names="Calibri" OnClick="frwdtoManager_Click"
                    Text="FORWARD TO FINANCE MANAGER" Width="238px" />
                <asp:Button ID="delete" runat="server" Font-Bold="True" Font-Names="Calibri" OnClick="delete_Click"
                    Text="DELETE REQUEST" />
                <asp:Button ID="back" runat="server" Font-Bold="True" Font-Names="Calibri" OnClick="back_Click"
                    Text="BACK" />
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; font-size: 10px; font-family: Verdana" align="center"
                class="style2" colspan="2">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
