<%@ Page Title="Employee- Apply Claim" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master"
    AutoEventWireup="true" CodeFile="ApplyClaim.aspx.cs" Inherits="Employee_ApplyClaim" %>

<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc2" %>
<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style7
        {
        }
        .style11
        {
            height: 26px;
        }
        .style12
        {
            height: 36px;
        }
        .style17
        {
            width: 200px;
            height: 30px;
        }
        .style18
        {
            height: 30px;
        }
        .style20
        {
            width: 270px;
        }
        .style21
        {
            height: 30px;
            width: 270px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <center>
        <table align="center" width="100%" style="border: medium none #808080; height: 259px;
            margin-top: 65px">
            <tr>
                <td align="center" colspan="3" style="color: #990000; font-size: 22px; font-weight: bolder;
                    font-family: Cambria; text-decoration: underline;" class="style7">
                    APPLY CLAIM
                </td>
            </tr>
            <tr>
                <td align="center" style="color: #FFFFFF; font-size: medium; font-weight: bold;"
                    class="style20">
                    &nbsp;
                </td>
                <td align="center" colspan="2" style="color: #FFFFFF; font-size: medium; font-weight: bold;">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Policy Id:
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="policyid" runat="server" Width="181px" Font-Names="Calibri" Font-Size="11pt"
                        Enabled="False" EnableTheming="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Policy Name:
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="policyname" runat="server" Width="181px" Font-Names="Calibri" Font-Size="11pt"
                        Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Policy Start Date:
                </td>
                <td align="left" class="style18">
                    <cc1:GMDatePicker ID="policystartdate" runat="server" Font-Names="Calibri" Font-Size="11pt"
                        Enabled="False" CalendarTheme="None" TextBoxWidth="181">
                    </cc1:GMDatePicker>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Policy End Date:
                </td>
                <td align="left" class="style18">
                    <cc1:GMDatePicker ID="policyenddate" runat="server" Font-Names="Calibri" Font-Size="11pt"
                        Enabled="False" TextBoxWidth="181">
                    </cc1:GMDatePicker>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Policy Amount:
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="policyamt" runat="server" Width="181px" Font-Names="Calibri" Font-Size="11pt"
                        Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Premium
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="premium" runat="server" Width="181px" Font-Names="Calibri" Font-Size="11pt"
                        Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                    &nbsp;
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Total Amount Paid:
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="totalamount" runat="server" Width="181px" Font-Names="Calibri" Font-Size="11pt"
                        Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Name of the Claimant:
                </td>
                <td align="left" class="style18">
                    <asp:DropDownList ID="pname" runat="server" Width="181px" Font-Names="Calibri" Font-Size="11pt"
                        OnSelectedIndexChanged="pname_SelectedIndexChanged">
                        <asp:ListItem Text="--Select--" Value="--Select--" />
                    </asp:DropDownList>
                    <%--<asp:TextBox ID="pname" runat="server" Width="181px" Font-Names="Calibri" 
                    Font-Size="11pt"></asp:TextBox>--%>
                    <asp:RequiredFieldValidator ID="rfvnameofclaimant" runat="server" ControlToValidate="pname"
                        ErrorMessage="* Select name of claimant" Font-Names="Calibri" Font-Size="9pt"
                        ForeColor="Red" InitialValue="--Select--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Relationship with Employee:
                </td>
                <td align="left" class="style18">
                    <asp:DropDownList ID="relationship" runat="server" Width="181px" OnSelectedIndexChanged="relationship_SelectedIndexChanged"
                        Font-Names="Calibri" Font-Size="11pt">
                        <asp:ListItem Text="--Select--" />
                        <asp:ListItem Text="Self" Value="Self" />
                        <asp:ListItem Text="Father" Value="Father" />
                        <asp:ListItem Text="Mother" Value="Mother" />
                        <asp:ListItem Text="Spouse" Value="Spouse" />
                        <asp:ListItem Text="Child" Value="Child" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvrelationship" runat="server" ControlToValidate="relationship"
                        ErrorMessage="* Select realtionship" Font-Names="Calibri" Font-Size="9pt" ForeColor="Red"
                        InitialValue="--Select--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Hospital Id:
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="HospitalId" runat="server" Width="181px" Font-Names="Calibri" Font-Size="11pt"
                        Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Reason:
                </td>
                <td align="left" class="style18">
                    <asp:DropDownList ID="reason" runat="server" Font-Names="Calibri" Width="181px" Font-Size="11pt">
                        <asp:ListItem Text="--Select--" />
                        <asp:ListItem Text="Planned Hospitalisation" Value="PlannedHospitalisation" />
                        <asp:ListItem Text="Accident" Value="Accident" />
                        <asp:ListItem Text="Death" Value="Death" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvreason" runat="server" ControlToValidate="reason"
                        ErrorMessage="* Select reason" Font-Names="Calibri" Font-Size="9pt" ForeColor="Red"
                        InitialValue="--Select--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Date of Admit:
                </td>
                <td align="left" class="style18">
                    <%--
                <cc1:GMDatePicker ID="dateofadmit" runat="server" Font-Names="Calibri" 
                    CalendarDayNameFormat="FirstLetter" CalendarTheme="Blue" 
                    ForeColor="Black" Font-Size="11pt">
                    <CalendarFont Names="Calibri" Size="11pt" />
                    <CalendarDayHeaderStyle Font-Names="Calibri" Font-Size="11pt" />
                    <CalendarDayStyle Font-Names="Calibri" Font-Size="11pt" />
                    <CalendarNextPrevStyle Font-Names="Calibri" Font-Size="11pt" />
                    <CalendarOtherMonthDayStyle Font-Names="Calibri" Font-Size="11pt" />
                    <CalendarSelectedDayStyle Font-Names="Calibri" Font-Size="11pt" />
                    <CalendarTitleStyle Font-Names="Calibri" Font-Size="11pt" />
                    <CalendarFooterStyle Font-Names="Calibri" Font-Size="11pt" />
                    <CalendarTodayDayStyle Font-Names="Calibri" Font-Size="11pt" />
                    <CalendarWeekendDayStyle Font-Names="Calibri" Font-Size="11pt" />
                    <MonthYearDropDownStyle Font-Names="Calibri" Font-Size="11pt" />
                    <TimePickerDropDownStyle Font-Names="Calibri" Font-Size="11pt" />
                    <TodayButtonStyle Font-Names="Calibri" Font-Size="11pt" />
                </cc1:GMDatePicker>--%>
                    <cc2:DatePicker ID="dateofadmit" runat="server" Width="181px" Height="25px" Font-Names="Calibri"
                        Font-Size="11pt" />
                    <asp:RequiredFieldValidator ID="rfvreason0" runat="server" ControlToValidate="dateofadmit"
                        ErrorMessage="* Select date of admit" Font-Names="Calibri" Font-Size="9pt" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Date of Discharge:
                </td>
                <td align="left" class="style18">
                    <cc2:DatePicker ID="dateofdischarge" runat="server" Width="181px" Height="25px" Font-Names="Calibri"
                        Font-Size="11pt" />
                    <asp:RequiredFieldValidator ID="rfvreason1" runat="server" ControlToValidate="dateofdischarge"
                        ErrorMessage="* Select date of discharge" Font-Names="Calibri" Font-Size="9pt"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #FFFFFF; font-weight: bolder; font-family: Calibri;"
                    class="style21">
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    Total Claimed Amount:&nbsp;
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="ClaimAmt" runat="server" Width="181px" Font-Names="Calibri" Font-Size="11pt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvreason2" runat="server" ControlToValidate="ClaimAmt"
                        ErrorMessage="* Enter claimed amount" Font-Names="Calibri" Font-Size="9pt" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #FFFFFF; font-weight: bolder; font-family: Calibri;"
                    class="style21">
                    &nbsp;
                </td>
                <td align="left" style="color: #000000; font-family: Calibri;" class="style17">
                    <asp:TextBox ID="clmamtapproved" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td align="left" class="style18">
                    <asp:TextBox ID="Status" runat="server" Visible="False" Width="181px">Inactive</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" class="style11" style="color: #FFFFFF">
                    <asp:Button ID="Submit" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                        Text="SUBMIT" Width="130px" Height="27px" Style="margin-left: 0px" OnClick="Submit_Click" />
                    <asp:Button ID="Reset" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                        Text="RESET" Height="27px" Style="margin-left: 0px" Width="130px" OnClick="Reset_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" style="color: #FFFFFF" class="style12">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Width="297px" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
