<%@ Page Title="Check Out" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="TeamProject.OrderPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="font-family:Lobster;font-size:40px;">
         Check Out
    </h1>
    <p>&nbsp;</p>
    <h4>Your Information</h4>
        <table class="nav-justified">
            <tr>
                <td style="width: 176px; height: 22px;">
                    <asp:Label ID="lblFName" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td style="width: 215px; height: 22px;">
                    <asp:TextBox ID="txtFName" runat="server" Width="184px" Text="Freaky"></asp:TextBox>
                </td>
                <td style="height: 22px; width: 114px;">
                    <asp:Label ID="lblLName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td style="height: 22px; width: 231px;">
                    <asp:TextBox ID="txtLName" runat="server" Width="184px" Text="Fruit"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 176px">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td style="width: 215px" aria-atomic="False">
                    <asp:TextBox ID="txtEmail" runat="server" Width="184px" Text="FreakyFruit@fff.com"></asp:TextBox>
                </td>
                <td style="width: 114px">Phone:</td>
                <td style="height: 22px; width: 231px;">
                    <asp:TextBox ID="txtPhone" runat="server" Width="184px" Text="373-253-7848"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 176px">
                    <asp:RequiredFieldValidator ID="reqValFName" runat="server" ControlToValidate="txtFName" Display="Dynamic" ErrorMessage="Must enter first name." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 215px">
                    <asp:RequiredFieldValidator ID="reqValLName" runat="server" ControlToValidate="txtLName" Display="Dynamic" ErrorMessage="Must enter last name." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 114px">
                    <asp:RegularExpressionValidator ID="reqValEmailVlid" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter valid email." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td style="height: 22px; width: 231px;">
                    <asp:RegularExpressionValidator ID="reqValPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Enter valid phone (###-###-####)" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;"></td>
                <td style="width: 215px; height: 22px;"></td>
                <td style="width: 114px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValEmail2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Must enter email." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="height: 22px; width: 231px;">
                    <asp:RequiredFieldValidator ID="reqValPhone2" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Must enter phone." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 176px">
                    <h4>Payment Information</h4>
                </td>
                <td style="width: 215px">&nbsp;</td>
                <td style="width: 114px">&nbsp;</td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px">
                    <asp:Label ID="lblCardNo" runat="server" Text="Card Number"></asp:Label>
                    :</td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtCardNo" runat="server" Width="198px" Text="3732537848373253"></asp:TextBox>
                </td>
                <td style="width: 114px">&nbsp;</td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px">
                    <asp:Label ID="lblExpDate" runat="server" Text="Expiration Date:"></asp:Label>
                </td>
                <td style="width: 215px">
                    <asp:DropDownList ID="ddlMonth" runat="server" Height="20px" Width="150px">
                        <asp:ListItem Selected="True">-- Month --</asp:ListItem>
                        <asp:ListItem Value="0">01 - January</asp:ListItem>
                        <asp:ListItem Value="1">02 - February</asp:ListItem>
                        <asp:ListItem Value="2">03 - March</asp:ListItem>
                        <asp:ListItem Value="3">04 - April</asp:ListItem>
                        <asp:ListItem Value="4">05 - May</asp:ListItem>
                        <asp:ListItem Value="5">06 - June</asp:ListItem>
                        <asp:ListItem Value="6">07 - July</asp:ListItem>
                        <asp:ListItem Value="7">08 - August</asp:ListItem>
                        <asp:ListItem Value="8">09 - September</asp:ListItem>
                        <asp:ListItem Value="9">10 - October</asp:ListItem>
                        <asp:ListItem Value="10">11 - November</asp:ListItem>
                        <asp:ListItem Value="11">12 - December</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 114px">
                    <asp:DropDownList ID="ddlYear" runat="server" Height="20px" Width="107px">
                        <asp:ListItem Selected="True">-- Year --</asp:ListItem>
                        <asp:ListItem Value="2018">2018</asp:ListItem>
                        <asp:ListItem Value="2019">2019</asp:ListItem>
                        <asp:ListItem Value="2020">2020</asp:ListItem>
                        <asp:ListItem Value="2021">2021</asp:ListItem>
                        <asp:ListItem Value="2022">2022</asp:ListItem>
                        <asp:ListItem Value="2023">2023</asp:ListItem>
                        <asp:ListItem Value="2024">2024</asp:ListItem>
                        <asp:ListItem Value="2025">2025</asp:ListItem>
                        <asp:ListItem Value="2026">2026</asp:ListItem>
                        <asp:ListItem Value="2027">2027</asp:ListItem>
                    </asp:DropDownList>
            </td>
                <td style="height: 22px; width: 231px;"> 
                </td>
                </tr>
            <tr>
                <td style="width: 176px; height: 22px;">CVV</td>
                <td style="width: 215px; height: 22px;">
                    <asp:TextBox ID="txtCVV" runat="server" Width="52px" Text="373"></asp:TextBox>
                </td>
                <td style="width: 114px; height: 22px;"></td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px">
                    <asp:RangeValidator ID="rangeValCardNo" runat="server" ControlToValidate="txtCardNo" Display="Dynamic" ErrorMessage="Enter 16-digit card number." ForeColor="Red" MaximumValue="9999999999999999" MinimumValue="1000000000000000" Type="Double"></asp:RangeValidator>
                </td>
                <td style="width: 215px">
                    <asp:RequiredFieldValidator ID="reqValExpMonth" runat="server" ControlToValidate="ddlMonth" Display="Dynamic" ErrorMessage="Must select expiration month." ForeColor="Red" InitialValue="-- Month --"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 114px">
                    <asp:RangeValidator ID="rangeValCVV" runat="server" ControlToValidate="txtCVV" Display="Dynamic" ErrorMessage="Enter 3-digit CVV." ForeColor="Red" MaximumValue="999" MinimumValue="100" Type="Integer"></asp:RangeValidator>
                </td>
                <td style="height: 22px; width: 231px;">
                    <asp:RequiredFieldValidator ID="reqValExpYear" runat="server" ControlToValidate="ddlYear" Display="Dynamic" ErrorMessage="Must select expiration year." ForeColor="Red" InitialValue="-- Year --"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValCardNo2" runat="server" ControlToValidate="txtCardNo" Display="Dynamic" ErrorMessage="Must enter card number." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 215px; height: 22px;">
                    </td>
                <td style="width: 114px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValCVV2" runat="server" ControlToValidate="txtCVV" Display="Dynamic" ErrorMessage="Must enter CVV." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px">
                    <h4>Shipping Address</h4>
                </td>
                <td style="width: 215px">
                </td>
                <td style="width: 114px">&nbsp;</td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;">Country:</td>
                <td style="width: 215px; height: 22px;">
                    <asp:DropDownList ID="ddlCountryShip" runat="server" Height="20px" Width="190px">
                        <asp:ListItem>-- Country --</asp:ListItem>
                        <asp:ListItem>United States</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 114px; height: 22px;"></td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px">Street Address:</td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtAddressShip" runat="server" Width="184px" Text="3732 E. Freak Ave."></asp:TextBox>
                </td>
                <td style="width: 114px">&nbsp;</td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px; height: 14px;">City:</td>
                <td style="width: 215px; height: 14px;">
                    <asp:TextBox ID="txtCityShip" runat="server" Width="184px" Text="Fruity"></asp:TextBox>
                </td>
                <td style="width: 114px; height: 14px;">State:</td>
                <td style="height: 14px; width: 231px;">
                    <asp:DropDownList ID="ddlStateShip" runat="server">
                        <asp:ListItem>-- State --</asp:ListItem>
                        <asp:ListItem>AZ</asp:ListItem>
                        <asp:ListItem>CA</asp:ListItem>
                        <asp:ListItem>CO</asp:ListItem>
                        <asp:ListItem>WA</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 176px">ZIP:</td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtZipShip" runat="server" Width="95px" Text="85202"></asp:TextBox>
                </td>
                <td style="width: 114px">&nbsp;</td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValCountryShipping" runat="server" ControlToValidate="ddlCountryShip" Display="Dynamic" ErrorMessage="Must select country." ForeColor="Red" InitialValue="-- Country --"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 215px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValAddressShip" runat="server" ControlToValidate="txtAddressShip" Display="Dynamic" ErrorMessage="Must enter shipping address." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 114px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValStateShip" runat="server" ControlToValidate="ddlStateShip" Display="Dynamic" ErrorMessage="Select state." ForeColor="Red" InitialValue="-- State --"></asp:RequiredFieldValidator>
                </td>
                <td style="height: 22px; width: 231px;">
                    <asp:RegularExpressionValidator ID="regExpValZipShip" runat="server" ControlToValidate="txtZipShip" Display="Dynamic" ErrorMessage="Must enter 5-digit ZIP code." ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;"></td>
                <td style="width: 215px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValCityShip" runat="server" ControlToValidate="txtCityShip" Display="Dynamic" ErrorMessage="Must enter shipping city." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 114px; height: 22px;"></td>
                <td style="height: 22px; width: 231px;">
                    <asp:RequiredFieldValidator ID="reqValZipShip2" runat="server" ControlToValidate="txtZipShip" Display="Dynamic" ErrorMessage="Must enter shipping ZIP code." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 176px">
                    <h4>Billing Address</h4>
                </td>
                <td style="width: 215px">
                </td>
                <td style="width: 114px">&nbsp;</td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px">
                    <asp:CheckBox ID="checkboxSameAsShipBill" runat="server" AutoPostBack="True" OnCheckedChanged="checkboxSameAsShipBill_CheckedChanged" Text="Same As Shipping" />
                </td>
                <td style="width: 215px">
                </td>
                <td style="width: 114px">&nbsp;</td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;">Country:</td>
                <td style="width: 215px; height: 22px;">
                    <asp:DropDownList ID="ddlCountryBilling" runat="server" Height="20px" Width="190px">
                        <asp:ListItem>-- Country --</asp:ListItem>
                        <asp:ListItem>United States</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 114px; height: 22px;"></td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px">Street Address:</td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtAddressBilling" runat="server" Width="184px"></asp:TextBox>
                </td>
                <td style="width: 114px">&nbsp;</td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px; height: 14px;">City:</td>
                <td style="width: 215px; height: 14px;">
                    <asp:TextBox ID="txtCityBilling" runat="server" Width="184px"></asp:TextBox>
                </td>
                <td style="width: 114px; height: 14px;">State:</td>
                <td style="height: 14px; width: 231px;">
                    <asp:DropDownList ID="ddlStateBilling" runat="server">
                        <asp:ListItem>-- State --</asp:ListItem>
                        <asp:ListItem>AZ</asp:ListItem>
                        <asp:ListItem>CA</asp:ListItem>
                        <asp:ListItem>CO</asp:ListItem>
                        <asp:ListItem>WA</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 176px">ZIP:</td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtZipBilling" runat="server" Width="95px"></asp:TextBox>
                </td>
                <td style="width: 114px">&nbsp;</td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValCountryBilling" runat="server" ControlToValidate="ddlCountryBilling" Display="Dynamic" ErrorMessage="Must select country." ForeColor="Red" InitialValue="-- Country --"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 215px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValAddressBilling" runat="server" ControlToValidate="txtAddressBilling" Display="Dynamic" ErrorMessage="Must enter billing address." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 114px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValStateBilling" runat="server" ControlToValidate="ddlStateBilling" Display="Dynamic" ErrorMessage="Select state." ForeColor="Red" InitialValue="-- State --"></asp:RequiredFieldValidator>
                </td>
                <td style="height: 22px; width: 231px;">
                    <asp:RegularExpressionValidator ID="regExpValZipBilling" runat="server" ControlToValidate="txtZipBilling" Display="Dynamic" ErrorMessage="Must enter 5-digit ZIP code." ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;">&nbsp;</td>
                <td style="width: 215px; height: 22px;">
                    <asp:RequiredFieldValidator ID="reqValCityBilling" runat="server" ControlToValidate="txtCityBilling" Display="Dynamic" ErrorMessage="Must enter billing city." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 114px; height: 22px;">&nbsp;</td>
                <td style="height: 22px; width: 231px;">
                    <asp:RequiredFieldValidator ID="reqValZipBill3" runat="server" ControlToValidate="txtZipBilling" Display="Dynamic" ErrorMessage="Must enter billing ZIP code." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;">&nbsp;</td>
                <td style="width: 215px; height: 22px;">
                    &nbsp;</td>
                <td style="width: 114px; height: 22px;">&nbsp;</td>
                <td style="height: 22px; width: 231px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;"></td>
                <td style="width: 215px; height: 22px;">
                    </td>
                <td style="width: 114px; height: 22px;">&nbsp;</td>
                <td style="height: 22px; width: 231px;"><strong>Order Total: <asp:Label ID="lblOrderTotalOrderPage" runat="server" Text="total"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td style="width: 176px; height: 22px;"></td>
                <td style="width: 215px; height: 22px;">
                    </td>
                <td style="width: 114px; height: 22px;"></td>
                <td style="height: 22px; width: 231px;"></td>
            </tr>
            <tr>
                <td style="width: 176px">
                    &nbsp;</td>
                <td style="width: 215px">
                    &nbsp;</td>
                <td style="width: 114px">
                    &nbsp;</td>
                <td style="height: 22px; width: 231px;">
                    <asp:Button ID="btnConfirmOrder" runat="server" BackColor="#009900" ForeColor="White" Height="37px" OnClick="btnConfirmOrder_Click" Text="Confirm Purchase" Width="142px" BorderStyle="None" />
                </td>
            </tr>
        </table>
        <p>&nbsp;</p>
</asp:Content>
