using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamProject
{
    public partial class PurchaseConfirmation : System.Web.UI.Page
    {
        // displays infomation entered from orderpage
        protected void Page_Load(object sender, EventArgs e)
        {
            string time = DateTime.Now.ToShortTimeString();
            string date = DateTime.Now.ToShortDateString();
            string total = (string)Session["FinalOrderTotal"];
            string fName = (string)Session["FirstName"];
            string lName = (string)Session["LastName"];
            string country = (string)Session["Country"];
            string address = (string)Session["Address"];
            string city = (string)Session["City"];
            string state = (string)Session["State"];
            string zip = (string)Session["Zip"];

            lblDateOfPurchaseConf.Text = date + " " + time;
            lblPurTotalConf.Text = total;
            lblFullNameConf.Text = fName + " " + lName;
            lblConCountry.Text = country;
            lblAddressConf.Text = address;
            lblCityStateZipConf.Text = city + ", " + state + ", " + zip;

            Globals.conn.Open();

            string deleteQuery = "delete from shopping_cart where CartItemID > 0;";

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(deleteQuery, Globals.conn);

            cmd.ExecuteNonQuery(); //execute of the sql statement (called nonquery b/c writes/doesn't return anything, returns how many rows were affected, assing to an integer variable)

            Globals.conn.Close();
        }
    }
}