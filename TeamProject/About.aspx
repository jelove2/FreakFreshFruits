<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TeamProject.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="font-family:Lobster;font-size:40px;">
        About Us
    </h1>
    <h3>Freaky Fresh Fruit</h3>
    <p>Let&#39;s face it, college students don&#39;t have great diets.&nbsp; I mean, it&#39;s pretty time consuming and expensive to shop for fresh produce.&nbsp; Enter Freaky Fresh Fruit (FFF), the service that delivers fresh fruit right to your door, freaky fast!&nbsp; Freaky Fresh Fruit was founded in 2018 by four students at Arizona State University with a passion for fruit and service.&nbsp; FFF offers a variety of fruits, from common grocery chain fruits to niche types of fruits from around the world!&nbsp; Check us out and see how we can make produce exciting for you.</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <h3>It&#39;s Fruity Business</h3>
        <div class="col-lg-12 col-md-12 col-sm-12">
          <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-12">
              <div>
                <a runat="server" href="~/Shop"><asp:Image ID="goldenAppleImage" runat="server" ImageAlign="Middle" ImageUrl="~/images/Golden-Apple.jpg" Width="100%" /></a>
                <div>
                  <h4>
                    Golden Apple
                  </h4>
                  <p>It’s golden and delicious, but significantly healthier than french fries.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
              <div  >
                  <a runat="server" href="~/Shop"><asp:Image ID="sabaBananaImage" runat="server" ImageUrl="~/images/Saba-Banana.png" ImageAlign="Middle" Width="100%" /></a>
                <div  >
                  <h4  >
                    Saba Banana
                  </h4>
                  <p  >Saba Saba, don’t you want a Saba.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
              <div  >
                  <a runat="server" href="~/Shop"><asp:Image ID="calleryPearImage" runat="server" ImageAlign="Middle" ImageUrl="~/images/Callery-Pear.jpg" Width="100%" /></a>
                <div  >
                  <h4  >
                    Callery Pear
                  </h4>
                  <p>It’s callery, ten times better than celery.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
</asp:Content>
