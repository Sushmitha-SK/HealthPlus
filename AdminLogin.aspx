<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Images_AdminLogin" %>
<%@ Register Src="~/UserControls/AdminLoginControl.ascx" TagName="LoginUserControl"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

<style type="text/css">
        .style1
        {
            width: 431px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<table align="center" >
        <tr>
            <td class="style1">
                <uc1:LoginUserControl ID="LoginUserControl2" runat="server" OnLoad="LoginUserControl2_Load" />
            </td>
        </tr>
    </table>

</asp:Content>

