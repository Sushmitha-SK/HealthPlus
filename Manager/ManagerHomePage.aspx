<%@ Page Title="Manager- HomePage" Language="C#" MasterPageFile="~/Manager/FinanceManager.master"
    AutoEventWireup="true" CodeFile="ManagerHomePage.aspx.cs" Inherits="Manager_ManagerHomePage" %>

<%@ Register Assembly="ASP.Web.UI.PopupControl" Namespace="ASP.Web.UI.PopupControl"
    TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <script src="../Scripts/jquery-1.4.3.min.js" type="text/javascript"></script>
    <!--------------------------------------->
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


            $("#btnClose").click(function (e) {
                HideDialog();
                e.preventDefault();
            });



            $("#btnSubmit").click(function (e) {
                HideDialog();
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

     
        

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="output">
    </div>
    <div id="overlay" class="web_dialog_overlay">
    </div>
    <div id="dialog" class="web_dialog">
        <table style="width: 100%; border: 0px;" cellpadding="3" cellspacing="0">
            <tr>
                <td class="web_dialog_title">
                    Claim Requests
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
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="claimno"
                                DataSourceID="SqlDataSource2" HeaderStyle-BackColor="#33CCCC" RowStyle-BackColor="White"
                                HeaderStyle-ForeColor="Black" GridLines="Horizontal" CellSpacing="2" CellPadding="2"
                                Width="180px">
                                <Columns>
                                    <asp:BoundField DataField="claimno" HeaderText="claimno" InsertVisible="False" ReadOnly="True"
                                        SortExpression="claimno" />
                                    <asp:BoundField DataField="empno" HeaderText="empno" SortExpression="empno" />
                                    <asp:BoundField DataField="policyid" HeaderText="policyid" SortExpression="policyid" />
                                    <asp:BoundField DataField="policyname" HeaderText="policyname" SortExpression="policyname" />
                                </Columns>
                                <EmptyDataTemplate>
                                    NO New Claim Requests!</EmptyDataTemplate>
                                <HeaderStyle BackColor="#33CCCC" ForeColor="Black"></HeaderStyle>
                                <RowStyle BackColor="White"></RowStyle>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MedicalConnectionString %>"
                                SelectCommand="Select a. claimno, a.empno, a.policyid, a.policyname from ApplyClaimRequest a inner join policies p on a.policyid = p.policyid inner join CompanyDetails c on c.CompanyId= p.companyid inner join Manager m on c.CompanyId=m.comapnyid where m.managerid=@managerid and status='Processing'">
                                <SelectParameters>
                                    <asp:SessionParameter Name="managerid" SessionField="managerid" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </center>
                    </div>
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
                <td colspan="2" style="text-align: center;">
                    <input id="btnSubmit" type="image" src="../icons/button (3).png" value="Close Window" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp; &nbsp;
                </td>
            </tr>
        </table>
    </div>
    <!------------------------------------------------------------------------------------------>
    <asp:Panel ID="Panel1" runat="server" Height="25px" Style="margin-top: 27px" ForeColor="Black">
        <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="12pt"
            Text="Welcome" ForeColor="#FF9900"></asp:Label>
        &nbsp;<asp:Label ID="managername" runat="server" Font-Bold="True" Font-Names="Cambria"
            Font-Size="12pt" ForeColor="#FF9900" Text="Label"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Names="Cambria" ForeColor="#FF9900" Text="!"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="notifications_Panel" runat="server" GroupingText="Notifications" Height="130px"
            Width="325px" HorizontalAlign="Justify" Font-Bold="True" Style="margin-left: 631px"
            Font-Names="Calibri" Font-Size="13px" border-radius="8px" CssClass="panel" ForeColor="Black">
            <asp:Label ID="Label5" runat="server" ForeColor="#DD8500" Text="Claim Notifications:"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblClaimRequestNotify" runat="server" Font-Names="Calibri" Font-Size="12px"
                ForeColor="Black" />
            <br />
            <br />
            <%-- <asp:Button ID="Button2" runat="server" Font-Names="Calibri" 
          onclick="Button2_Click" Text="Quick View" />--%>
            <input type="button" id="btnShowSimple" value="Quick View" font-names="Calibri" style="font-family: Calibri;
                font-size: 12px" />
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;
        <br />
    </asp:Panel>
    <asp:Label ID="Label1" runat="server" Text="Today Is:" Font-Bold="False" ForeColor="Black"
        Font-Italic="False" Font-Names="Cambria" Font-Size="11pt" />
    <asp:Label ID="Label2" runat="server" Font-Bold="False" ForeColor="Black" Font-Italic="False"
        Font-Names="Cambri" />
    <br />
    <br />
</asp:Content>
