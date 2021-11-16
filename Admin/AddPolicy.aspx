<%@ Page Title="Admin- Add Policy" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddPolicy.aspx.cs" Inherits="Admin_AddPolicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style11
        {
            height: 37px;
            width: 124px;
        }
        .style12
        {
            height: 37px;
            }
        .style26
        {
            height: 36px;
            width: 124px;
        }
        .style27
        {
            width: 312px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <center style="height: 355px; margin-top: 43px">
           
           
         <table cellpadding="0" cellspacing="5" width="100%" class="table">
        <tr>
            <td align="center" colspan="3" class="heading">
                    <span style="font-size: 16pt; color: #FFFF00; font-family: Verdana;">
                        <strong style="border-style: none; color: #990000; font-family: Cambria; font-size: 20px; font-weight: bold; text-transform: uppercase; text-decoration: underline;">Add 
                    POLICY</strong></span></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style27">
                                &nbsp;</td>
                            <td align="left" style="color: #FFFFFF; font-weight: bold" class="style26">
                                <strong>
                                <span style="font-size: 11pt; font-family: calibri; border-spacing: 3px; color: #000000; font-weight: normal;">&nbsp;Policy Name:</span></strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtPtypeName" runat="server" Width="180px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate ="txtPtypeName"     ErrorMessage="* Enter policy name" 
                                    ForeColor="Red" Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" class="style27">
                                &nbsp;</td>
                            <td align="left" style="color: #FFFFFF; font-weight: bold" 
                class="style26">
                                <strong>
                                <span style="font-size: 11pt; font-family: calibri; color: #000000; font-weight: normal;">&nbsp;Policy Description:</span></strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                <%--<textarea ID="txtPDesc" runat="server" Width="180px" Height="50px" 
                                    style="margin-top: 8px" Font-Names="Calibri" Font-Size="11pt" cols="20" rows="2"></textarea>--%>
                                  
                              <asp:TextBox ID="txtPDesc" runat="server" Width="180px" Height="50px" 
                                    style="margin-top: 8px" Font-Names="Calibri" Font-Size="11pt" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                 ControlToValidate ="txtPDesc"    ErrorMessage="* Enter policy description" 
                                    ForeColor="Red" Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style27">
                                &nbsp;</td>
                            <td align="left" style="color: #FFFFFF; font-weight: bold" class="style26">
                                <strong>
                                <span style="font-size: 11pt; font-family: calibri; color: #000000; font-weight: normal;">&nbsp;Policy Amount:</span></strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:TextBox ID="txtAmt" MaxLength="6"  runat ="server" 
                                    OnKeypress="return onlyNumbersdot(event)" Width="180px" Height="25px" 
                                    Font-Names="Calibri" Font-Size="11pt" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvamt" 
                                    ControlToValidate ="txtamt" runat ="server" ForeColor="Red" 
                                    ErrorMessage="* Enter policy amount" Font-Names="Calibri" Font-Size="10pt" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ErrorMessage="* Enter amount in integers" Font-Names="Calibri" Font-Size="9pt" 
                                    ForeColor="Red" ControlToValidate="txtAmt" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style27">
                                &nbsp;</td>
                            <td align="left" style="color: #FFFFFF; font-weight: bold" class="style26">
                                <strong>
                                <span style="font-size: 11pt; font-family: calibri; color: #000000; font-weight: normal;">&nbsp;Company Id:</span></strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                         
                                <asp:DropDownList  ID="ddlCId" runat="server" Width="180px" 
                                    onselectedindexchanged="ddlCId_SelectedIndexChanged" AutoPostBack="True" 
                                    Height="25px" Font-Names="Calibri" Font-Size="11pt"/>
                                
                               
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate ="ddlCId"
                                    ErrorMessage="* Select CompanyId" InitialValue="--Select--" 
                                    ForeColor="Red" Font-Names="Calibri" Font-Size="10pt"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" valign="top" class="style27">
                                &nbsp;</td>
                            <td align="left" style="color: #FFFFFF; font-weight: bold" class="style11">
                                <strong>
                                <span style="font-size: 11pt; font-family: calibri; color: #000000; font-weight: normal;">&nbsp;Medical Id:</span></strong></td>
            <td align="left" class="style12" style="vertical-align: middle">
                                <asp:DropDownList ID="MedicalIdList" runat="server" 
                                     Height="25px" Width="180px" 
                                    onselectedindexchanged="MedicalIdList_SelectedIndexChanged" 
                                    AutoPostBack="True" Font-Names="Calibri" Font-Size="11pt">
                                </asp:DropDownList>
                             
                            <asp:RequiredFieldValidator ID="medical" runat ="server" 
                                    ControlToValidate ="MedicalIdList" ForeColor="Red" InitialValue="--Select--" 
                                    ErrorMessage="* Select Medical Id" Font-Names="Calibri" Font-Size="10pt" ></asp:RequiredFieldValidator>
                            </td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">


                                <asp:Label ID="labelMessage" runat ="server" Font-Bold="True" Font-Size="11pt" 
                                    ForeColor="Red" Font-Names="Calibri"></asp:Label>
                             
                            </td>
        </tr>
        <tr>
            <td align="center" valign="top" colspan="3">


                                <asp:Button ID="btnAdd" runat ="server" 
                    Text ="ADD" Font-Bold="True" Font-Italic="False" OnClick="btnAdd_Click" 
                    Width="80px" Font-Names="Verdana" Font-Size="X-Small" Height="25px" />
                <asp:Button ID="btnCancel" Text ="CANCEL" runat="server" 
                    CausesValidation="False" Font-Bold="True" Font-Italic="False" 
                    OnClick="btnCancel_Click" Font-Names="Verdana" Font-Size="X-Small" 
                    Height="25px" Width="80px" style="margin-bottom: 0px" />
                             
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

