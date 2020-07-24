<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="TeamProject.ShoppingCart" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <h1 style="font-family:Lobster;font-size:40px;">
            Shopping Cart
       </h1>
        <div class="container">
            <div class="row" style="margin-bottom: 20px;">
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <div class="row">
                        <h3>Your Items</h3>
                        <asp:Label ID="cartOutPutLabel" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <h3>Order Summary</h3>
                    <hr />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12">Sub Total:</div>
                        <div class="col-lg-6 col-md-6 col-sm-12" style="text-align: right;"><asp:Label ID="totalLabel" runat="server" Text=""></asp:Label></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12">Estimated Shipping:</div>
                        <div class="col-lg-6 col-md-6 col-sm-12" style="text-align: right;"><asp:Label ID="shipLabel" runat="server" Text=""></asp:Label></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12">Tax:</div>
                        <div class="col-lg-6 col-md-6 col-sm-12" style="text-align: right;"><asp:Label ID="taxLabel" runat="server" Text=""></asp:Label></div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12">TOTAL:</div>
                        <div class="col-lg-6 col-md-6 col-sm-12" style="text-align: right;"><asp:Label ID="subTotalLabel" runat="server" Text=""></asp:Label></div>
                    </div>
                    &nbsp;
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12"><asp:Button ID="btnContinueShoppingCart" class="btn btn-primary" runat="server" Text="Continue Shopping" OnClick="btnContinueShoppingCart_Click" /></div>
                        <div class="col-lg-6 col-md-6 col-sm-12" style="text-align: right;">
                            <asp:Button style="background-color: green; border-color: green; margin-left: 35px;" ID="btnConfirmOrderShoppingCart" class="btn btn-primary" runat="server" Text="Proceed to Checkout" OnClick="btnConfirmOrderShoppingCart_Click" BackColor="#009900" Width="166px" /></div>
                    </div>
                    <hr />
                    <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12"><asp:Button style="background-color: red; border-color: red;" ID="btnCancelShoppingCart" class="btn btn-primary" runat="server" Text="Cancel Purchase" OnClick="btnCancelShoppingCart_Click" /></div>
                    <div class="col-lg-6 col-md-6 col-sm-12">&nbsp;</div>
                    </div>
                  </div>
                </div>
            </div>
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
