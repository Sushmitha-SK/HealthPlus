<%@ Page Title="Employee- Home Page" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="EmployeeHomePage.aspx.cs" Inherits="Employee_EmployeeHomePageaspx" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script src="../Scripts/jquery-1.4.3.min.js" type="text/javascript"></script>
    <style type="text/css">
        .web_dialog_overlay
        {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;
            background: #000000;
            opacity: .8;
            filter: alpha(opacity=8);
            -moz-opacity: .8;
            z-index: 101;
            display: none;
        }
        .web_dialog
        {
            display: none;
            position: fixed;
            width: auto;
            height: auto;
            top: 50%;
            left: 50%;
            margin-left: -190px;
            margin-top: -100px;
            background-color: #ffffff;
            border: 2px solid #08b2c2;
            padding: 0px;
            z-index: 102;
            font-family: Verdana;
            font-size: 10pt;
            border-radius: 8px;
        }
        .web_dialog_title
        {
            border-bottom: solid 2px #08b2c2;
            background-color: #08b2c2;
            padding: 4px;
            color: White;
            font-weight: bold;
        }
        .web_dialog_title a
        {
            color: White;
            text-decoration: none;
        }
        .align_right
        {
            text-align: right;
        }
    </style>
    <script type="text/javascript">

        $(document).ready(function () {
            $("#btnShowSimple").click(function (e) {
                ShowDialog(false);
                e.preventDefault();
            });


            $("#ShowClaimRequest").click(function (e) {
                ShowClaimDialog(false);
                e.preventDefault();
            });




            $("#btnClose").click(function (e) {
                HideDialog();
                e.preventDefault();
            });

            $("#btnClose1").click(function (e) {
                HideDialog1();
                e.preventDefault();
            });

            $("#btnSubmit").click(function (e) {
                HideDialog();
                e.preventDefault();
            });

            $("#btnCloseWindow").click(function (e) {
                HideDialog1();
                e.preventDefault();
            });


        });

        function ShowDialog(modal) {
            $("#overlay").show();
            $("#dialog").fadeIn(300);

            if (modal) {
                $("#overlay").unbind("click");
            }
            else {
                $("#overlay").click(function (e) {
                    HideDialog();
                });
            }
        }

        function HideDialog() {
            $("#overlay").hide();
            $("#dialog").fadeOut(300);
        }

        function HideDialog1() {
            $("#overlay1").hide();
            $("#dialog1").fadeOut(300);
        }

        function ShowClaimDialog(modal) {
            $("#overlay1").show();
            $("#dialog1").fadeIn(300);

            if (modal) {
                $("#overlay1").unbind("click");
            }
            else {
                $("#overlay1").click(function (e) {
                    HideDialog();
                });
            }
        }



    </script> 

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

 <div id="output">
    </div>
    <div id="overlay" class="web_dialog_overlay">
    </div>
    <div id="dialog" class="web_dialog" >
        <table style="width: 100%; border: 0px;" cellpadding="3" cellspacing="0">
            <tr>
                <td class="web_dialog_title">
                    Policy Requests
                </td>
                <td class="web_dialog_title align_right">
                    <a href="#" id="btnClose">
                        <img src="../icons/no (2).png" /></a>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-left: 15px;">
                    <div id="brands">
                        <center>
                            
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#33CCCC"
        CellPadding="3" style="margin-top: 0px" CellSpacing="2" Width="90%"
        DataKeyNames="RequestId" DataSourceID="SqlDataSource1" 
        HeaderStyle-BackColor="#33CCCC" RowStyle-BackColor="White" HeaderStyle-ForeColor="Black" 
        GridLines="Horizontal">
            <Columns>
            <asp:BoundField DataField="RequestId" HeaderText="RequestId" 
                InsertVisible="False" ReadOnly="True" SortExpression="RequestId" />
            <asp:BoundField DataField="Empno" HeaderText="Empno" SortExpression="Empno" />
            <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" 
                SortExpression="RequestDate" />
            <asp:BoundField DataField="PolicyId" HeaderText="PolicyId" 
                SortExpression="PolicyId" />
            <asp:BoundField DataField="Policyname" HeaderText="Policyname" 
                SortExpression="Policyname" />
           
            <asp:BoundField DataField="PolicyAmount" HeaderText="PolicyAmount" 
                SortExpression="PolicyAmount" />
        </Columns>
             <EmptyDataTemplate>No Policy Requests are pending!</EmptyDataTemplate>
  </asp:GridView>

   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MedicalConnectionString %>" 
        SelectCommand="SELECT [RequestId], [Empno], [RequestDate], [PolicyId], [Policyname], [PolicyAmount] FROM [PolicyRequestDetails] WHERE (([Status] = @Status) AND ([Empno] = @Empno))">
        <SelectParameters>
            <asp:Parameter DefaultValue="Inactive" Name="Status" Type="String" />
            <asp:SessionParameter Name="Empno" SessionField="Empno" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                        </center>
                    </div>
                </td>
            </tr>
           <tr></tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input id="btnSubmit" type="image" src="../icons/button (3).png" value="Close Window" />
                </td>
            </tr>
            <tr><td>&nbsp;&nbsp;</td></tr>
        </table>
    </div>
    <!-------------------------------POPUP2---------------------------------------->
    <div id="output1">
    </div>
    <div id="overlay1" class="web_dialog_overlay">
    </div>
    <div id="dialog1" class="web_dialog">
        <table style="width: 100%; border: 0px;" cellpadding="3" cellspacing="0">
            <tr>
                <td class="web_dialog_title">
                    Claim Requests
                </td>
                <td class="web_dialog_title align_right">
                    <a href="#" id="btnClose1">
                        <img src="../icons/no (2).png" /></a>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-left: 15px;">
                    <div id="brands1">
                        <center>
                            
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="claimno" DataSourceID="SqlDataSource2"  BorderColor="#33CCCC"
        HeaderStyle-BackColor="#33CCCC" RowStyle-BackColor="White" 
        HeaderStyle-ForeColor="Black" GridLines="Horizontal" CellSpacing="2" 
        CellPadding="2" Width="180px">
        <Columns>
            <asp:BoundField DataField="claimno" HeaderText="claimno" InsertVisible="False" 
                ReadOnly="True" SortExpression="claimno" />
            <asp:BoundField DataField="empno" HeaderText="empno" SortExpression="empno" />
            <asp:BoundField DataField="policyid" HeaderText="policyid" 
                SortExpression="policyid" />
            <asp:BoundField DataField="policyname" HeaderText="policyname" 
                SortExpression="policyname" />
            <asp:BoundField DataField="claimamount" HeaderText="claimamount" 
                SortExpression="claimamount" />
            <asp:BoundField DataField="nameofclaimant" HeaderText="nameofclaimant" 
                SortExpression="nameofclaimant" />
            <asp:BoundField DataField="relationship" HeaderText="relationship" 
                SortExpression="relationship" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
        </Columns>
         <EmptyDataTemplate>No Claim Requests are pending!</EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MedicalConnectionString %>" 
        SelectCommand="SELECT [claimno], [empno], [policyid], [policyname], [claimamount], [nameofclaimant], [relationship], [status] FROM [ApplyClaimRequest] WHERE (([status] = @status) AND ([empno] = @empno))">
        <SelectParameters>
            <asp:Parameter DefaultValue="Inactive" Name="status" Type="String" />
            <asp:SessionParameter Name="empno" SessionField="empno" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                        </center>
                    </div>
                </td>
            </tr>
             <tr></tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input id="btnCloseWindow" type="image" src="../icons/button (3).png" value="Close Window" />
                </td>
            </tr>
            <tr><td>&nbsp;&nbsp;</td></tr>
        </table>
    </div>


<!------------------------------------------------------------------------------------->
 

<!---------------------------------------------------------------------------------------->
<asp:Panel ID="Panel1" runat="server" Height="25px" style="margin-top: 27px">
    &nbsp;
    <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" Font-Names="Cambria" 
        Font-Size="12pt" Text="Welcome " ForeColor="#FF9900"></asp:Label>
       

    <asp:Label ID="empname" runat="server" Font-Bold="True" Font-Names="Cambria" 
        Font-Size="12pt" ForeColor="#FF9900" Text="Label"></asp:Label>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Cambria" 
        Font-Size="12pt" ForeColor="#FF9900" Text="!"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
  <asp:Panel ID="notifications_Panel" runat="server" GroupingText="Notifications" 
Height="172px" Width="325px" HorizontalAlign="Justify" Font-Bold="True" 
        style="margin-left: 631px" Font-Names="Calibri" 
        Font-Size="13px" border-radius="8px" CssClass="panel" ForeColor="Black">
      <asp:Label ID="Label4" runat="server" ForeColor="#DD8500" 
          Text="Policy Notifications:"></asp:Label>
      <br />
<br />
      <asp:Label ID="lblPolicyRequestNotify" runat="server" Font-Names="Calibri" 
          Font-Size="12px" ForeColor="Black" Visible="False" />
<br /><br /> 
<%--<asp:Button ID="Button1" runat="server" Font-Names="Calibri" 
          OnClick="Button1_Click" Text="Quick View" />--%>

           <input type="button" id="btnShowSimple" value="Quick View" font-names="Calibri" style="font-family: Calibri;
                font-size: 12px" />

      <hr style="margin-top: 22px" />
      <asp:Label ID="Label5" runat="server" ForeColor="#DD8500" 
          Text="Claim Notifications:"></asp:Label>
      <br />
<br />
      <asp:Label ID="lblClaimRequestNotify" runat="server" Font-Names="Calibri" 
          Font-Size="12px" ForeColor="Black" />
<br /><br /> 
<%--<asp:Button ID="Button2" runat="server" Font-Names="Calibri" 
          onclick="Button2_Click" Text="Quick View" />--%>
          <input type="button" id="ShowClaimRequest" value="Quick View" font-names="Calibri"
                style="font-family: Calibri; font-size: 12px" />
<br />
<br />
</asp:Panel>
 

    &nbsp;&nbsp;&nbsp; 
    <br />
</asp:Panel>

&nbsp;
 
    
<asp:Label ID="Label2" runat="server" Text="Today Is:" Font-Bold="False" 
        ForeColor="Black" Font-Italic="False" Font-Size="11pt" 
        Font-Names="Cambria"/>
<asp:Label ID="Label3" runat="server" Font-Bold="False"  ForeColor="Black" 
        Font-Italic="False" Font-Size="11pt" Font-Names="Cambria"/>

        
    </asp:Content>
