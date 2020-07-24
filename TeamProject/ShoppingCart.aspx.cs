using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamProject
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        static string oldID = "id";
        static string oldQty = "qty";

        protected void Page_Load(object sender, EventArgs e)
        {
            Globals.conn.Open();

            //running total for the cart
            double total = 0.0;
            //retreives data from another page that has the infomation to add to this pages cart
            var addCartID = Request.QueryString["ProductID"];
            var addQuantity = Request.QueryString["Quantity"];

            // validating items so it doesn't store blank items
            if (addCartID != null && addQuantity != null)
            {
                string id = (string)addCartID;
                string qty = (string)addQuantity;
                addToCart(id,qty);
            }

            string query = "SELECT * FROM shopping_cart";

            var readCmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = readCmd.ExecuteReader();

            cartOutPutLabel.Text = "";

            // will print everything in the current cart onto the current page
            while (reader.Read())
            {
                double newOrderLine = 0.0;
                var name2Value = reader["Name"];
                var priceValue = reader["Price"];
                var image2Value = reader["Image"];
                var productID2Value = reader["FruitID"];
                var descriptionValue = reader["Description"];
                var quantity = reader["Quantity"];

                cartOutPutLabel.Text +=
                    "<div class=\"row\">" +
                        "<div class=\"col-lg-4 col-md-4 col-sm-4\">" +
                            "<img alt=\"" + name2Value.ToString() + "\" style =\"width:100%;\" src=\"" + image2Value.ToString() + "\">" +
                        "</div>" +
                        "<div class=\"col-lg-4 col-md-4 col-sm-4\">" +
                            "<div style =\"margin: 35px\"><p>" + name2Value.ToString() + "</p>" + priceValue.ToString() + "</p></div>" +
                        "</div>" +
                        "<div class=\"col-lg-4 col-md-4 col-sm-4\">" +
                            "<div style =\"margin: 35px\"><p>Quantity: </p>" + quantity.ToString() + "</p></div>" +
                        "</div>" +
                    "</div>" +
                    "<div class=\"row\">" +
                        "<div class=\"col-lg-3 col-md-3 col-sm-3\">" +
                            "<div>Product ID: " + productID2Value.ToString() + "</div>" +
                        "</div>" +
                        "<div class=\"col-lg-9 col-md-9 col-sm-9\">" +
                            "<div>Description: " + descriptionValue.ToString() + "</div>" +
                        "</div>" +
                    "</div>";

                newOrderLine = Convert.ToDouble(priceValue) * Convert.ToInt32(quantity);
                total += newOrderLine;

            } // end while loop
            reader.Close();

            // calculations behind the design
            double tax = total * 0.07;
            double shipping = total * .01;
            double subTotal = total + tax + shipping;

            // displaying the calculations
            totalLabel.Text = String.Format("{0:C}", total);
            shipLabel.Text = String.Format("{0:C}", shipping);
            taxLabel.Text = String.Format("{0:C}", tax);
            subTotalLabel.Text = String.Format("{0:C}", subTotal); 
        }


        //method that will add new items; it will not add old items to the cart to ensure no duplicates in session
        //eg. can't buy green apple qty 6 twice in a row
        //simple fix would probably make old ID and old QTY emptied out before this 
        protected void addToCart(string id, string qty)
        {
            if (oldID != id && oldQty != qty)
            {
                var addCartID = Request.QueryString["ProductID"];
                var addQuantity = Request.QueryString["Quantity"];

                string sqlAddToSC = "INSERT INTO shopping_cart (ProductID, Name, Description, Image, Type, FruitID, Quantity, Price) SELECT ProductID, Name, Description, Image, Type, FruitID, " + addQuantity + ", Price FROM products P WHERE P.ProductID=" + addCartID;

                var writeCmd = new MySql.Data.MySqlClient.MySqlCommand(sqlAddToSC, Globals.conn); //runs query against connection object

                writeCmd.ExecuteNonQuery(); //execute of the sql statement (called nonquery b/c writes/doesn't return anything, returns how many rows were affected, assing to an integer variable)
            }
            oldID = id;
        }

        // will delete the entire cart of items
        protected void btnCancelShoppingCart_Click(object sender, EventArgs e)
        {
            string deleteQuery = "delete from shopping_cart where CartItemID > 0;";

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(deleteQuery, Globals.conn);

            cmd.ExecuteNonQuery(); //execute of the sql statement (called nonquery b/c writes/doesn't return anything, returns how many rows were affected, assing to an integer variable)

            cartOutPutLabel.Text = string.Empty;
            totalLabel.Text = "$0.00";
            shipLabel.Text = "$0.00";
            taxLabel.Text = "$0.00";
            subTotalLabel.Text = "$0.00";

        }

        //closes connection because a new connection starts up on the "onload page"
        protected void btnContinueShoppingCart_Click(object sender, EventArgs e)
        {
            Globals.conn.Close();
            Server.Transfer("Shopping.aspx", true);
        }

        //transfers the calculations from this page to order page
        protected void btnConfirmOrderShoppingCart_Click(object sender, EventArgs e)
        {
            // user has to have something the cart to proceed to the purchase page
            if(cartOutPutLabel.Text != string.Empty)
            {
                string orderTotal = subTotalLabel.Text;
                Session["OrderTotal"] = orderTotal;
                Response.Redirect("OrderPage.aspx", true);
            }
            else
            {
                cartOutPutLabel.Text = "Must purchase something...";
            }

        }
    }
}
 