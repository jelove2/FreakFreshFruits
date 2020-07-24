using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamProject
{
    // Allows every page that uses the master page to use Vars that allow them to connect to the database
    public static class Globals     // Global variables section
    {

        public static string dbConnectionString = "server=cis425.wpcarey.asu.edu;uid=aclee9;pwd=spokeFREE05;database=groupa04;";

        public static MySql.Data.MySqlClient.MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(dbConnectionString);
    }

    public partial class SiteMaster : MasterPage
    {
        // Make every page unload and close connection to the database
        // Have to close the data base when transfering to the new page as it will reconnect to the database each page
        protected void Page_Unload(object sender, EventArgs e)	// Close the connection to the database when the page unloads
        {
            Globals.conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}