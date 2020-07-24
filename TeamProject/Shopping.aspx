<%@ Page Title="Shopping" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shopping.aspx.cs" Inherits="TeamProject.Shopping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="color:white;"><%: Title %>.</h2>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <h1 class="my-4" style="font-family:Lobster;font-size:40px;">
                    Welcome to Shopping Pearadise
                </h1>
                <br />
                <table class="nav-justified" style="width: 36%; height: 38px">
                    <tr>
                        <td style="width: 327px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="logoShopping" runat="server" Height="127px" ImageUrl="~/images/client logo 2.png" Width="118px" />
                            <br />
                            <br />
                        </td>
                        <td style="width: 226px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 327px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="width: 226px">&nbsp;</td>
                    </tr>
                </table>
            </div>
            <div class="col-lg-9">
                <div class="row">
                    <asp:Label ID="outPutLabel" runat="server" Text=""></asp:Label>
                    <br />
                </div>
            </div>
        </div>
    </div>
    <p>&nbsp;</p>
    <script>
        function myFunction(productID) {
            var list = document.getElementById(productID + '99');
            var quantity = list.options[list.selectedIndex].text;

            window.open("ShoppingCart?ProductID=" + productID + "&Quantity=" + quantity + "", "_self");
        }
    </script>
</asp:Content>
