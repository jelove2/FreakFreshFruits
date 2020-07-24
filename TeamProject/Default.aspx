<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TeamProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p style="margin-top: 20px;"><a runat="server" href="~/About" class="btn btn-primary" style="width:100%;">Learn More About Freaky Fresh Fruit </a></p>
        <div class="jumbotron">
            <h1 style="font-family:Lobster;font-size:55px;">&nbsp;<asp:Image ID="Image1" runat="server" Height="116px" ImageUrl="~/images/client logo 2.png" Width="110px" />&nbsp;&nbsp; Freaky Fresh Fruit</h1>
            <p class="lead">Let&#39;s face it, college students don&#39;t have great diets.&nbsp; I mean, it&#39;s pretty time consuming and expensive to shop for fresh produce.&nbsp; Enter Freaky Fresh Fruit, the service that delivers fresh fruit right to your door, freaky fast.</p>
            <p><asp:TextBox ID="txtSearchHome" runat="server" Height="30px" Width="211px"></asp:TextBox>&nbsp;<asp:Button class="btn btn-primary" style="background-color: #009900;" ID="btnSearchHome" runat="server" OnClick="btnSearchHome_Click" Text="Search Our Fruits" /></p>
        </div>
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-12">
              <div>
                <a runat="server" href="~/Shop"><asp:Image ID="mainGoldenAppleImage" runat="server" ImageAlign="Middle" ImageUrl="~/images/Golden-Apple.jpg" Width="100%" /></a>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
              <div>
                  <a runat="server" href="~/Shop"><asp:Image ID="mainSabaBananaImage" runat="server" ImageUrl="~/images/Saba-Banana.png" ImageAlign="Middle" Width="100%" /></a>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
              <div  >
                  <a runat="server" href="~/Shop"><asp:Image ID="mainCalleryPearImage" runat="server" ImageAlign="Middle" ImageUrl="~/images/Callery-Pear.jpg" Width="100%" /></a>
              </div>
            </div>
          </div>
        </div>
        <p>&nbsp;</p>
</asp:Content>
