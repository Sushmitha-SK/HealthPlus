<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginUserControl.ascx.cs"
    Inherits="LoginUserControl" %>
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
        .style2
        {
            height: 41px;
        }
        .style5
        {
            width: 140px;
            height:27px;
        }
        .style6
        {
            width: 101px;
        }
        .style7
        {
            width: 114px;
        }
        .style8
        {
            height: 24px;
        }
        .style9
        {
            height: 28px;
        }
    </style>
    <div style="text-align:center; width:456px; height: 448px; margin-top: 8px;">
    
    <div style="border-style: none; border-width: 1px; margin-top:34px; width:448px; height:320px">
            <table align="center" 
                
                style="border-color: #C0C0C0; border-style: ridge; background-position: right center; width: 444px; height: 208px; background-color: #0099CC; border-radius:0px 30px 0px 30px; box-shadow: 3px 3px 4px rgba(0,0,0,.5); margin-top: 92px; background-repeat: repeat; background-image: url('Images/abstract-wave-aqua-ppt-backgrounds-powerpoint.jpg');">
                <tr>
                    <td align="center" colspan="3" 
                        
                        
                        
                        style="text-align: center; font-family: Calibri; font-size: 20px; font-weight: 600; color: #FFFFFF;" 
                        class="style9">
                        EMPLOYEE LOGIN</td>
                </tr>
                <tr>
                    <td align="right" colspan="3" class="style5" style="border-top-style: ridge">
                    
                    </td>
                </tr>
                <tr>
                 <td style="color: #FFFFFF; font-weight: bold;" align="center" class="style7" 
                rowspan="2">
                <asp:Image ID="Image2" runat="server" Height="74px" 
                    ImageUrl="~/icons/User-icon.png" Width="86px" />
            </td>
                    <td align="left" 
                        style="font-weight: bold; font-size: 9pt; color: #000000; font-family: verdana; " 
                        class="style6">
                        User Name:
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtuid" runat="server" Width="145px" Font-Names="Calibri" 
                            Font-Size="11pt"/></td>
                    <td align="left">
                        <asp:RequiredFieldValidator ID="rfvuid" ErrorMessage="U should Enter Username." Text="*"
                            runat="server" ControlToValidate="txtuid" ForeColor="#CC3300"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="left" 
                        style="font-weight: bold; font-size: 9pt; color: #000000; font-family: verdana; " 
                        class="style6">
                        Password:
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="149px" 
                            Font-Names="Calibri" Font-Size="11pt" /></td>
                    <td align="left">
                        <asp:RequiredFieldValidator ID="rfvpwd" ErrorMessage="U should Enter Password." Text="*"
                            runat="server" ControlToValidate="txtpwd" ForeColor="#CC3300"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="right" colspan="3" class="style8">
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3" class="style1" align="center">
            <asp:Button ID="btnlogin" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                OnClick="btnlogin_Click" Text="LOGIN" Width="100px" Height="25px" />
                        <asp:Button ID="btnReset" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                OnClick="btnreset_Click" Text="RESET" Width="100px" Height="25px" />
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="3" style="text-align: center" class="style2">
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#C04000"></asp:Label></td>
                </tr>
            </table>
</div> 
</div> 
