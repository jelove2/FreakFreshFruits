<%@ Page Title="Search Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="TeamProject._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="color:white;"><%: Title %>!</h2>

    <div class="container">
      <div class="row">
        <div class="col-lg-3">

          <h1 class="my-4">
              <asp:Label ID="lblHeadingShop" runat="server" Font-Names="Magneto" Font-Size="40px" Text="Search Results"></asp:Label>
            </h1>
            <p class="my-4">
                <asp:Image ID="Image2" runat="server" Height="212px" ImageUrl="~/images/client logo 2.png" Width="209px" />
            </p>

        </div>
        <!-- /.col-lg-3 -->
        <div class="col-lg-9">
          <div class="row">

            <div class="col-lg-4 col-md-6 col-sm-12">
              <div>
                <asp:Image ID="goldenAppleImage" runat="server" ImageAlign="Middle" ImageUrl="~/images/Golden-Apple.jpg" Width="100%" />
                <div>
                  <h4>
                    Golden Apple
                  </h4>
                  <h5>$34.12</h5>
                  <p>It’s golden and delicious, but significantly healthier than french fries.</p>
                </div>
                <div style="margin-bottom: 10px;">
                  <asp:Button ID="Button5" class="btn btn-primary" runat="server" Text="Buy Now" />
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12">
              <div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12">
              <div  >
                  <asp:Image ID="jonaGoldAppleImage" runat="server" ImageUrl="~/images/Jona-Gold-Apple.jpg" ImageAlign="Middle" Width="100%" />
                <div  >
                  <h4  >
                    Jona Gold Apple
                  </h4>
                  <h5>$46.44</h5>
                  <p  >Golden Delicious + Jonathan (Van Ness) = Jonagold.  You’re welcome.</p>
                </div>
                <div style="margin-bottom: 10px;">
                  <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Buy Now" />
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12">
              <div  >
              </div>
            </div>

          </div>
          <!-- /.row -->
        </div>
        <!-- /.col-lg-9 -->
      </div>
      <!-- /.row -->
    </div>
</asp:Content>