<%@ Page Title="Shop Now" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="TeamProject._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="color:white;"><%: Title %>!</h2>

    <div class="container">
      <div class="row">
        <div class="col-lg-3">
          <h1 class="my-4">
              <asp:Label ID="lblHeadingShopPeardise" runat="server" Font-Names="Magneto" Font-Size="40px" Text="Welcome to Shopping Pearadise"></asp:Label>
            </h1>
            <p class="my-4">
                <asp:Image ID="Image3" runat="server" Height="212px" ImageUrl="~/images/client logo 2.png" Width="209px" />
            </p>
        </div>
        <!-- /.col-lg-3 -->
        <div class="col-lg-9">
          <div class="row">

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div>
                <asp:Image ID="goldenAppleImageShop" runat="server" ImageAlign="Middle" ImageUrl="~/images/Golden-Apple.jpg" Width="100%" />
                <div>
                  <h4>
                    Golden Apple
                  </h4>
                  <h5>$34.12</h5>
                  <p>It’s golden and delicious, but significantly healthier than french fries.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnGoldDelShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantGoldDelShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div>
                <asp:Image ID="galaAppleImage" runat="server" ImageUrl="~/images/Gala-Apple.png" ImageAlign="Middle" Width="100%" />
                <div>
                  <h4>
                    Gala Apple
                  </h4>
                  <h5>$112.56</h5>
                  <p>The Met Gala is actually named after this type of apple, because it looks so good.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnGalaShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantGalaShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div  >
                  <asp:Image ID="grannySmithAppleImage" runat="server" ImageUrl="~/images/Granny-Smith-Apple.png" ImageAlign="Middle" Width="100%" />
                <div  >
                  <h4  >
                    Granny Smith Apple
                  </h4>
                  <h5>$27.98</h5>
                  <p>This ain’t your Grandma’s kind of apple, don’t let the name fool you.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnGrannySmthShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantGrannyShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div  >
                  <asp:Image ID="jonaGoldAppleImage1" runat="server" ImageUrl="~/images/Jona-Gold-Apple.jpg" ImageAlign="Middle" Width="100%" />
                <div  >
                  <h4  >
                    Jona Gold Apple
                  </h4>
                  <h5>$46.44</h5>
                  <p  >Golden Delicious + Jonathan (Van Ness) = Jonagold.  You’re welcome.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnJonaGShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantJonaGShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div  >
                  <asp:Image ID="sabaBananaImage" runat="server" ImageUrl="~/images/Saba-Banana.png" ImageAlign="Middle" Width="100%" />
                <div  >
                  <h4  >
                    Saba Banana
                  </h4>
                  <h5>$13.03</h5>
                  <p  >Saba Saba, don’t you want a Saba.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnSabaBanaShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantSabaShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div  >
                  <asp:Image ID="cavendishBananaImage" runat="server" ImageUrl="~/images/Cavendish-Banana.jpg" ImageAlign="Middle" Width="100%" />
                <div  >
                  <h4  >
                    Cavendish Banana
                  </h4>
                  <h5>$33.33</h5>
                  <p  >There’s nothing Cavendish about these bananas.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnCavendishShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantCavendishShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div>
                  <asp:Image ID="plantainBananaImage" runat="server" ImageUrl="~/images/Plantains-Banana.png" ImageAlign="Middle" Width="100%" />
                <div>
                  <h4>
                    Plantain Banana
                  </h4>
                  <h5>$83.25.12</h5>
                  <p>AKA platanos, they’re even better fried.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnPlantainShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantPlantainShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div>
                  <asp:Image ID="latundanBananaImage" runat="server" ImageUrl="~/images/Latundan-Banana.png" ImageAlign="Middle" Width="100%" />
                <div>
                  <h4>
                    Latundan Banana
                  </h4>
                  <h5>$95.64</h5>
                  <p>These bananas are from the Philippines.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnLatundanShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantLatundanShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div  >
                  <asp:Image ID="calleryPearImage" runat="server" ImageAlign="Middle" ImageUrl="~/images/Callery-Pear.jpg" Width="100%" />
                <div  >
                  <h4  >
                    Callery Pear
                  </h4>
                  <h5>$85.41</h5>
                  <p>It’s callery, ten times better than celery.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnCalleryShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantCalleryShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div  >
                  <asp:Image ID="chinesePearImage" runat="server" ImageUrl="~/images/Chinese-Pear.jpg" ImageAlign="Middle" Width="100%" />
                <div  >
                  <h4  >
                    Chinese Pear
                  </h4>
                  <h5>$145.78</h5>
                  <p  >It’s pretty dang.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnChinesePearShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantChineseShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div  >
                  <asp:Image ID="duchesseAngoulemeImage" runat="server" ImageUrl="~/images/Duchesse-Angouleme-Pear.png" ImageAlign="Middle" Width="100%" />
                <div  >
                  <h4  >
                    Duchesse d'Angouleme Pear
                  </h4>
                  <h5>$252.61</h5>
                  <p  >You&#39;ll lose your head when you taste how good these pears are.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnDuchesseShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantDuchesseShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12" style="margin-bottom:10px;">
              <div  >
                  <asp:Image ID="europeanPearImage" runat="server" ImageUrl="~/images/European-Pear.jpg" ImageAlign="Middle" Width="100%" />
                <div  >
                  <h4  >
                    European Pear
                  </h4>
                  <h5>$3.55</h5>
                  <p  >Eur-a-dying to taste these pears.</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 0px;">
                    <asp:Button ID="btnEuropeanShop" class="btn btn-primary" runat="server" Text="Add To Cart" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:right;">
                    <asp:DropDownList ID="ddlQuantEuropeanShop" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </div>
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