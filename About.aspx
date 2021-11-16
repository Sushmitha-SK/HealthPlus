<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>
  


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    </asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <%--<h2 style="color: #FF9900">
        About
    </h2>
   <p style="color: Black; font-size: 14px; font-weight: bold; font-family:Calibri; width: 944px;" >
   Medical care is used for Health Insurance. 
   This System is Maintain all information about the patient.
       </p>
    <p style="color: Black; font-size: 14px; font-weight: bold; font-family:Calibri; width: 944px;" >
        &nbsp;</p>
    <p style="color: Black; font-size: 14px; font-weight: bold; font-family:Calibri; width: 944px;" >
        &nbsp;</p>
  <div id="dvMsg" class="notification" runat="server" visible="false">
      <br />
    </div>--%>
<asp:Panel ID="Panel1" runat="server" Width="958px">

<h2>
        <span style="font-size: 10pt; font-family: Verdana">
        <strong style="color: #000000">
        <asp:Image ID="Image2" runat="server" Height="141px" ImageAlign="Right" 
            ImageUrl="~/Images/AboutUs.png" 
            style="margin-left: 0px; margin-right: 36px; margin-top: 26px" 
            Width="159px" />
        </strong></span></h2>

        <p style="text-align: justify; color: #000000; width: 714px; margin-top: 48px;">
    <span style="font-size: 10pt; font-family: Verdana"><strong>
Health Plus is aimed to develop an online Health Insurance System.
 An Organization wants to starts Health Insurance system against its employee. </strong>
	</span>
</p>
    <p style="text-align: justify; width: 714px;">
        <span style="font-size: 10pt; font-family: Verdana">
        <strong style="color: #000000">The Health Plus system will maintain all information related to the employee, maintenances of Claims pertaining to the Insurance companies, information about all sort of medical services providing by the hospital to the corporate employees, claim settlements & adjustments against their services authorizing by the Insurance Companies. </strong></span>
    </p>
    <p style="text-align: justify; width: 714px;">
        <span style="font-size: 10pt; font-family: Verdana">
        <strong style="color: #000000">
 Additionally this system can also maintain the policy and claim settlements in a well versed manner.  </strong>
        </span>
    </p>
    </asp:Panel>

</asp:Content>

