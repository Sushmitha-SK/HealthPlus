<%@ Page Title="Manager- Change Password" Language="C#" MasterPageFile="~/Manager/FinanceManager.master" AutoEventWireup="true" CodeFile="ManagerChangePassword.aspx.cs" Inherits="Manager_ManagerChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<center>
    
    <table align="center" 
            style="border-color: #C0C0C0; border-style: ridge; background-position: right center; width: 444px; height: 208px; background-color: #0099CC; border-radius:0px 30px 0px 30px; box-shadow: 3px 3px 4px rgba(0,0,0,.5); margin-top: 92px; background-repeat: repeat; background-image: url('../Images/abstract-wave-aqua-ppt-backgrounds-powerpoint.jpg');"
            center" colspan="3" 
            style="text-align: center; font-family: Calibri; font-size: 20px; font-weight: 600; color: #FFFFFF;">
            <tr><td align ="center" 
                    
                    style="border-width: medium; width: 507px; border-bottom-style: groove; color: #FFFFFF; font-size: 16px;">
        CHANGE YOUR PASSWORD?</td></tr>
        <td style="font: smallcaption; width: 507px; color: aqua; ">
            <table style="width: 393px; height: 43px;">
                
                <tr>
                    <td align="right" style="width: 699px; font-weight: bold; font-size: 10px; font-family: Verdana; height: 27px;">
                        <strong><span style="color: #000000">Enter Your Old PassWord:</span></strong>
                    </td>
                    <td align="left" style="width: 148px; height: 27px;">
                        <asp:TextBox ID="txtpwd" runat="server" Width="176px" TextMode="Password" 
                            Font-Names="Calibri" /></td>
                    <td align="left" style="width: 6px; height: 27px;">
                        <asp:RequiredFieldValidator ID="rfvpwd" ErrorMessage="U should Enter Password." Text="*"
                            runat="server" ControlToValidate="txtpwd" Width="8px"></asp:RequiredFieldValidator></td>
                </tr>
                <tr><td align ="right" style="font-weight: bold; font-size: 10px; width: 699px; font-family: Verdana" >
                    <strong><span style="color: darkorange"><span style="color: #000000">Enter Your New PassWord</span>:</span></strong></td><td align ="left" style="width: 148px" >
                        <asp:TextBox ID="txtnewpwd" runat ="server" Width="176px" TextMode="Password" 
                            Font-Names="Calibri" ></asp:TextBox></td><td align ="left" style="width: 6px" ><asp:RequiredFieldValidator ID="rfvnew" runat ="server" Text="*" ControlToValidate="txtnewpwd"></asp:RequiredFieldValidator></td></tr>
                            </table>
        </td>
    <tr><td align ="center" style="width: 507px"><asp:Label ID="lblMsg" runat ="server" 
            Font-Bold="True" ForeColor="#990000" Font-Names="Calibri" 
            Font-Size="11pt" ></asp:Label></td></tr>
    <tr><td align =center style="width: 507px" ><asp:Button ID="btnlogin" 
            Text ="SUBMIT" runat ="server" Font-Bold="True" 
            ForeColor="Black" OnClick="btnlogin_Click" Font-Names="Calibri" 
            Font-Size="11pt" />
        <asp:Button ID="Reset" runat="server" Font-Bold="True" ForeColor="Black" 
            Text="RESET" OnClick="btnReset_Click" Font-Names="Calibri" 
            Font-Size="11pt" Width="61px"/>
        </td></tr>
</table>
    
    </center>
</asp:Content>

