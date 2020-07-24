using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamProject
{
    public partial class OrderPage : System.Web.UI.Page
    {
        string total;

        protected void Page_Load(object sender, EventArgs e)
        {
            // displays values from shopping cart
            total = (string)Session["OrderTotal"];

            if (total != null)
            {
                lblOrderTotalOrderPage.Text = total;
            }
        }

        // auto fills shipping address with bill address
        protected void checkboxSameAsShipBill_CheckedChanged(object sender, EventArgs e)
        {
            if (checkboxSameAsShipBill.Checked)
            { 

                ddlCountryBilling.SelectedIndex = ddlCountryShip.SelectedIndex;
                txtAddressBilling.Text = txtAddressShip.Text;
                txtCityBilling.Text = txtCityShip.Text;
                ddlStateBilling.SelectedIndex = ddlStateShip.SelectedIndex;
                txtZipBilling.Text = txtZipShip.Text;
            }
            else
            {
                ddlCountryBilling.SelectedIndex = 0;
                txtAddressBilling.Text = "";
                txtCityBilling.Text = "";
                ddlStateBilling.SelectedIndex = 0;
                txtZipBilling.Text = "";
            } 
        }

        // if the user fills out all required infomation
        // it will then proceed to take all this infomation and stores in our database
        protected void btnConfirmOrder_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
               
                string fName = txtFName.Text;
                string lName = txtLName.Text;
                string country = ddlCountryShip.Text;
                string address = txtAddressShip.Text;
                string city = txtCityShip.Text;
                string state = ddlStateShip.SelectedValue;
                string zip = txtZipShip.Text;

                Session["FinalOrderTotal"] = total;
                Session["FirstName"] = fName;
                Session["LastName"] = lName;
                Session["Country"] = country;
                Session["Address"] = address;
                Session["City"] = city;
                Session["State"] = state;
                Session["Zip"] = zip;

               //takes the infomation from this page to confirmation page
                Response.Redirect("PurchaseConfirmation.aspx", true);
            }
        }
    }
}