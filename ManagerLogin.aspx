<%@ Page Title="Manager Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManagerLogin.aspx.cs" Inherits="ManagerLogin" %>

<%@ Register src="UserControls/ManagerLoginControl.ascx" tagname="ManagerLoginControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<table align="center" >
        <tr>
            <td class="style1">
            
                <uc1:ManagerLoginControl ID="ManagerLoginControl1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

