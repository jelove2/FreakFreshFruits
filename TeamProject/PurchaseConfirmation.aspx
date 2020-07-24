<%@ Page Title="Order Confirmation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseConfirmation.aspx.cs" Inherits="TeamProject.PurchaseConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="font-family:Lobster;font-size:40px;">
        Order Confirmation
    </h1>
    <h2>Thank you for shopping with us!</h2>
    <h4>A confirmation of your order has been emailed to you.</h4>
    <p>&nbsp;</p>
    <h4 style="text-decoration: underline">Order Summary</h4>
        <table style="width:100%;" id="tblConfirmation">
            <tr>
                <td style="width: 226px; height: 21px;">Date of Purchase:</td>
                <td style="width: 481px; height: 21px;">
                    <asp:Label ID="lblDateOfPurchaseConf" runat="server" Text="04.11.2018"></asp:Label>
                </td>
                <td style="height: 21px; width: 385px;">
                    &nbsp;</td>
                <td style="height: 21px; width: 68px;"></td>
            </tr>
             <tr>
                <td style="width: 226px; height: 21px;">Purchase Total:</td>
                <td style="width: 481px; height: 21px;">
                    <asp:Label ID="lblPurTotalConf" runat="server" Text="$364.70"></asp:Label>
                 </td>
                <td style="height: 21px; width: 385px;">
                    &nbsp;</td>
                <td style="height: 21px; width: 68px;"></td>
            </tr>
            <tr>
                <td style="width: 226px; height: 22px;">Name:</td>
                <td style="width: 481px; height: 22px;">
                    <asp:Label ID="lblFullNameConf" runat="server" Text="Justin"></asp:Label>
                </td>
                <td style="width: 385px; height: 22px;"></td>
            </tr>
            <tr>
                <td style="width: 226px; height: 22px;">Shipping Address:</td>
                <td style="height: 22px; width: 481px">
                    <asp:Label ID="lblConCountry" runat="server" Text="Canada"></asp:Label>
                </td>
                <td style="height: 22px; width: 385px;"></td>
            </tr>
            <tr>
                <td style="width: 226px">&nbsp;</td>
                <td style="width: 481px">
                    <asp:Label ID="lblAddressConf" runat="server" Text="111 Wellington Street"></asp:Label>
                </td>
                <td style="width: 385px">&nbsp;</td>
            </tr>
             <tr>
                <td style="width: 226px">&nbsp;</td>
                <td style="width: 481px">
                    <asp:Label ID="lblCityStateZipConf" runat="server" Text="Parliament Hill"></asp:Label>
                </td>
                <td style="width: 385px">&nbsp;</td>
            </tr>
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
</asp:Content>
