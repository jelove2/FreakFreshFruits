using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamProject
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // takes search value and takes them to the shopping page where it will do something with the value
        protected void btnSearchHome_Click(object sender, EventArgs e)
        {
            string homeSearch = txtSearchHome.Text;
            Session["HomeSearch"] = homeSearch;
            //take user to shopping results page
            //redirect user to this page, true = terminates execution of source page
            Response.Redirect("Shopping.aspx", true);
        }
    }
}