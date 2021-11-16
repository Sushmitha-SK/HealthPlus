<%@ Page Title="Admin- Add Employee" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddEmployee.aspx.cs" Inherits="Admin_AddEmployee" %>

<%@ Register assembly="DatePickerControl" namespace="DatePickerControl" tagprefix="cc1" %>

<%@ Register assembly="GMDatePicker" namespace="GrayMatterSoft" tagprefix="cc2" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" tagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 304px;
        }
        .style2
        {
            width: 101px;
        }
        .style6
        {
            width: 304px;
            height: 21px;
        }
        .style7
        {
            width: 101px;
            height: 21px;
        }
        .style8
        {
            height: 21px;
        }
        .style9
        {
            width: 304px;
            height: 19px;
        }
        .style10
        {
            width: 101px;
            height: 19px;
        }
        .style11
        {
            height: 19px;
        }
    </style>


    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


    <center style="height: 739px">
  
   
    <br />
    <br />
       
    <center style="height: 17px; margin-top: 0px">
        <strong><span style="font-size: 14pt"></span></strong>
   <br />
  
    </center>




<table cellpadding="0" cellspacing="5" width="100%" class="table">
        <tr>
            <td align="center" colspan="3" class="heading">
        <strong>
        <span style="font-size: 16pt; color: #800000; font-family: Cambria; text-transform: uppercase; text-decoration: underline;">
            REGISTER EMPLOYEE</span></strong></td>
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
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" valign="top" class="style2" style="vertical-align: middle">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">
                                Designation:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtdesignation" runat="server" Width="200px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt" />
                                <asp:RequiredFieldValidator ID="rfvname" runat="server" Text="* Enter designation" 
                                    ControlToValidate="txtdesignation" 
                                    ForeColor="#CC3300" Font-Names="Calibri" Font-Size="9pt" /></td>
        </tr>
        <tr>
            <td align="right" class="style1">
                                &nbsp;</td>
            <td align="left" class="style2" style="vertical-align: middle">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">Join Date:&nbsp;</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
 
                             <cc1:DatePicker ID="GMDatePicker1" runat="server" Font-Names="Calibri" Font-Size="11pt" 
                    Width="200px" Height="25px" />
                                    
                                <asp:RequiredFieldValidator ID="rfvdate" runat ="server" 
                                    Text="* Enter  join date" ControlToValidate ="GMDatePicker1" 
                                    ForeColor="#CC3300" Font-Names="Calibri" Font-Size="9pt"></asp:RequiredFieldValidator>
                            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" valign="top" class="style2" style="vertical-align: middle">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">Salary</span>:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtsalary" runat ="server" 
                                    Width="200px" OnKeypress="return onlyNumbersdot(event)" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvsalary" runat="server" 
                                    ControlToValidate="txtsalary" ForeColor="#CC3300" Font-Names="calibri" 
                                    Font-Size="9pt">* Enter salary</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtsalary" ErrorMessage="* Enter salary in integers" 
                                    Font-Names="Calibri" Font-Size="9pt" ForeColor="#CC3300" 
                                    ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" valign="top" class="style2" style="vertical-align: middle">
                                <span style="font-size: 11pt; font-family: Calibri; color: #000000;">First Name:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                         
                                <asp:TextBox ID="txtfname" runat="server" Width="200px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt" />
                                <asp:RequiredFieldValidator ID="rexv" Text ="* Enter First name"  
                                    runat="server" ControlToValidate ="txtfname" 
                                    ForeColor="#CC3300" Font-Names="calibri" Font-Size="9pt" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                                &nbsp;</td>
            <td align="left" valign="top" class="style2" style="vertical-align: middle">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">Last Name</span>:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtlname" runat="server" Width="200px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt" />
                                <asp:RequiredFieldValidator ID="rfvphoneno" runat="server" Text="* Enter last name" 
                                    ControlToValidate="txtlname" 
                                    ForeColor="#CC3300" Font-Names="calibri" Font-Size="9pt" /></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style9">
                            </td>
            <td align="left" valign="top" class="style10" style="vertical-align: middle">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000; vertical-align: top;">User Name:</span></td>
            <td align="left" class="style11" style="vertical-align: middle">
                                <asp:TextBox ID="txtusername" runat="server" Height="25px" Width ="200px" 
                                    Font-Names="Calibri" Font-Size="11pt" ontextchanged="txtUsername_TextChanged" AutoPostBack="true"/>
                                    

                                <asp:RequiredFieldValidator ID="rfvaddress" runat="server" Text="* Enter user name" 
                                    ControlToValidate ="txtusername" 
                                    ForeColor="#CC3300" Font-Names="calibri" Font-Size="9pt" />
                                    
                                   
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style6">
                            </td>
            <td align="left" valign="top" class="style7" style="vertical-align: middle">
                                </td>
            <td align="left" class="style8" style="vertical-align: middle">
                                    

                                    <div id="checkusername" runat="server"  Visible="false">
                                    <asp:Image ID="imgstatus" runat="server" Width="16px" Height="16px"/>
               
                                    <asp:Label ID="lblStatus" runat="server" Font-Italic="False" 
                                    Font-Names="Calibri" Font-Size="9pt" ForeColor="Green"></asp:Label>
                                    </div>
                                    
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
            <td align="left" valign="top" class="style2" style="vertical-align: middle">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">Password:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtpwd" runat="server" Width="200px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt"/>
                                <asp:RequiredFieldValidator ID="rfvlogin" runat="server" Text="* Enter password" 
                                    ControlToValidate ="txtpwd" 
                                    ForeColor="#CC3300" Font-Names="calibri" Font-Size="9pt" /></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
            <td align="left" valign="top" class="style2">
                                <span style="font-size: 11pt; font-family: calibri; color: #000000;">Address:</span></td>
            <td align="left" class="style12" style="vertical-align: middle">
                            
                                <asp:TextBox ID="txtaddress" runat="server" Width="200px" TextMode="MultiLine" 
                                    Wrap="true" Height="25px" Font-Names="calibri" Font-Size="11pt"/>
                                <asp:RequiredFieldValidator ID="rfvdisgn" ControlToValidate ="txtaddress" 
                                    runat="server" Text="* Enter address" ForeColor="#CC3300" 
                                    Font-Names="calibri" Font-Size="9pt" /></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
            <td align="left" valign="top" class="style2" 
                style="font-size: 11pt; font-family: calibri; color: #000000;">
                                Date of Birth:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                            
                                <cc1:DatePicker ID="dpdob" runat="server" Width="200px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt" />
                                <asp:RequiredFieldValidator ID="rfvdob" runat="server" 
                                    ControlToValidate="dpdob" ForeColor="#CC3300" Font-Names="calibri" 
                                    Font-Size="9pt">* Enter Date of Birth</asp:RequiredFieldValidator>
                                </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
            <td align="left" valign="top" class="style2">
                            <span style="font-size: 11pt; font-family: calibri; color: #000000;">Contact No</span>:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtcontactno" runat ="server" 
                                    OnKeypress="return onlyNumbers(event)" Width="200px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvcontact" runat ="server" Text="* Enter Contact No" 
                                ControlToValidate="txtstate" ForeColor="#CC3300" Font-Names="calibri" 
                                    Font-Size="9pt"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revcontact" runat="server" 
                                    ControlToValidate="txtcontactno" ErrorMessage="* Enter valid contact no" 
                                    Font-Names="Calibri" Font-Size="9pt" ForeColor="#CC3300" 
                                    ValidationExpression="^[1-9][0-9]{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
            <td align="left" valign="top" class="style2" 
                style="font-size: 11pt; font-family: calibri; color: #000000;">
                            City</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                  <asp:TextBox ID="txtcity" runat ="server" OnKeypress="return OnlyChars(event)" 
                                      Width="200px" Height="25px" Font-Names="Calibri" Font-Size="11pt" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat ="server" 
                                Text="* Enter City" ControlToValidate="txtcity" ForeColor="#CC3300" 
                                      Font-Names="calibri" Font-Size="9pt"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
            <td align="left" valign="top" class="style2">
                            <span style="font-size: 11pt; font-family: calibri; color: #000000;">State</span>:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                  <asp:TextBox ID="txtstate" runat ="server" OnKeypress="return OnlyChars(event)" 
                                      Width="200px" Height="25px" Font-Names="Calibri" Font-Size="11pt" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" 
                                Text="* Enter State" ControlToValidate="txtstate" ForeColor="#CC3300" 
                                      Font-Names="calibri" Font-Size="9pt"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style1">
                            &nbsp;</td>
            <td align="left" valign="top" class="style2">
                            <span style="font-size: 11pt; font-family: calibri; color: #000000;">Country</span>:</td>
            <td align="left" class="style12" style="vertical-align: middle">
                                  <asp:TextBox ID="txtcountry" runat ="server" 
                                      OnKeypress="return OnlyChars(event)" Width="200px" Height="25px" 
                                      Font-Names="Calibri" Font-Size="11pt" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server" 
                                Text="* Enter Country" ControlToValidate="txtcountry" ForeColor="#CC3300" 
                                      Font-Names="calibri" Font-Size="9pt"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                            &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">
                                   <asp:Button ID="btnAdd" runat ="server" 
                                Text ="ADD" Width="73px" OnClick="btnAdd_Click" Font-Bold="True" 
                                style="margin-left: 0px" Font-Names="Calibri" />
                        <asp:Button ID="btnCancel" runat ="server" Text ="CANCEL" Width="76px" 
                                CausesValidation="False" OnClick="btnCancel_Click" Font-Bold="True" 
                                Font-Names="Calibri" />
                              </td>
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

