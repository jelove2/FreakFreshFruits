using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamProject
{
    public partial class Shopping : System.Web.UI.Page
    {
        static string oldSearch;

        protected void Page_Load(object sender, EventArgs e)
        {
            Globals.conn.Open();

            //passing the data that the user searched from the homepage
            string homeSearch = (string)Session["HomeSearch"];

            //making sure the search does not excuting is nothing there
            if (homeSearch != null)
            {
                //making sure the search does not use the old values from previous searches
                if (homeSearch != oldSearch)
                {
                    outPutLabel.Text = "";

                    // this variable will hold SQL statements to access our products table
                    string query = $"select * from products WHERE FruitID = '{homeSearch}' OR Type LIKE '%{homeSearch}%' OR Description LIKE '%{homeSearch}%' or Name LIKE '%{homeSearch}%';";

                    var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
                    var reader = cmd.ExecuteReader();

                    // it will read and display the product in a DIV for every product that matches the query above
                    while (reader.Read())
                    {
                        var nameValue = reader["Name"];
                        var descriptionValue = reader["Description"];
                        var priceValue = reader["Price"];
                        var imageValue = reader["Image"];
                        var productIDValue = reader["ProductID"];


                        // Creating a html element with the values we recieve from the database
                        // and displaying it
                        outPutLabel.Text +=
                                "   <div class=\"col-lg-4 col-md-6 col-sm-12\" style=\"margin-bottom:10px;\">" +
                                "       <div>" +
                                "           <img style=\"width:100%;\" src=\"" + imageValue.ToString() + "\">" +
                                "           <div>" +
                                "               <h4>" + nameValue.ToString() + "</h4>" +
                                "               <h5>$" + priceValue.ToString() + "</h5>" +
                                "               <p>" + descriptionValue.ToString() + "</p>" +
                                "           </div>" +
                                "           <div class=\"col-lg-6 col-md-6 col-sm-6\" style=\"padding-left:0px;\">" +
                                "               <button id=\"" + productIDValue.ToString() + "\" class=\"btn btn-primary\" type=\"button\" onclick=\"myFunction(this.id)\">Add To Cart</button>" +
                                "           </div>" +
                                "           <div class=\"col-lg-6 col-md-6 col-sm-6\" style=\"text-align:right\">" +
                                "               <div>QTY:</div>" +
                                "               <select id=\"" + productIDValue.ToString() + "99\">" +
                                "                   <option value=\"1\">1</option>" +
                                "                   <option value=\"2\">2</option>" +
                                "                   <option value=\"3\">3</option>" +
                                "                   <option value=\"4\">4</option>" +
                                "                   <option value=\"5\">5</option>" +
                                "                   <option value=\"6\">6</option>" +
                                "               </select>" +
                                "           </div>" +
                                "       </div>" +
                                "   </div>";
                    } // end while loop
                    reader.Close();
                    // stores old search values
                    oldSearch = homeSearch;
                }
                // shows everything if it does not find specific product
                else
                {
                    string query = "SELECT * FROM products";

                    var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
                    var reader = cmd.ExecuteReader();

                    outPutLabel.Text = "";

                    while (reader.Read())
                    {
                        var nameValue = reader["Name"];
                        var descriptionValue = reader["Description"];
                        var priceValue = reader["Price"];
                        var imageValue = reader["Image"];
                        var productIDValue = reader["ProductID"];

                        outPutLabel.Text +=
                                "   <div class=\"col-lg-4 col-md-6 col-sm-12\" style=\"margin-bottom:10px;\">" +
                                "       <div>" +
                                "           <img style=\"width:100%;\" src=\"" + imageValue.ToString() + "\">" +
                                "           <div>" +
                                "               <h4>" + nameValue.ToString() + "</h4>" +
                                "               <h5>$" + priceValue.ToString() + "</h5>" +
                                "               <p>" + descriptionValue.ToString() + "</p>" +
                                "           </div>" +
                                "           <div class=\"col-lg-6 col-md-6 col-sm-6\" style=\"padding-left:0px;\">" +
                                "               <button id=\"" + productIDValue.ToString() + "\" class=\"btn btn-primary\" type=\"button\" onclick=\"myFunction(this.id)\">Add To Cart</button>" +
                                "           </div>" +
                                "           <div class=\"col-lg-6 col-md-6 col-sm-6\" style=\"text-align:right\">" +
                                "               <div>QTY:</div>" +
                                "               <select id=\"" + productIDValue.ToString() + "99\">" +
                                "                   <option value=\"1\">1</option>" +
                                "                   <option value=\"2\">2</option>" +
                                "                   <option value=\"3\">3</option>" +
                                "                   <option value=\"4\">4</option>" +
                                "                   <option value=\"5\">5</option>" +
                                "                   <option value=\"6\">6</option>" +
                                "               </select>" +
                                "           </div>" +
                                "       </div>" +
                                "   </div>";
                    }
                    reader.Close();
                }
            }
            // if they did not search or go through the homepage
            else
            {
                string query = "SELECT * FROM products";

                var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
                var reader = cmd.ExecuteReader();

                outPutLabel.Text = "";

                while (reader.Read())
                {
                    var nameValue = reader["Name"];
                    var descriptionValue = reader["Description"];
                    var priceValue = reader["Price"];
                    var imageValue = reader["Image"];
                    var productIDValue = reader["ProductID"];

                    outPutLabel.Text +=
                            "   <div class=\"col-lg-4 col-md-6 col-sm-12\" style=\"margin-bottom:10px;\">" +
                            "       <div>" +
                            "           <img style=\"width:100%;\" src=\"" + imageValue.ToString() + "\">" +
                            "           <div>" +
                            "               <h4>" + nameValue.ToString() + "</h4>" +
                            "               <h5>$" + priceValue.ToString() + "</h5>" +
                            "               <p>" + descriptionValue.ToString() + "</p>" +
                            "           </div>" +
                            "           <div class=\"col-lg-6 col-md-6 col-sm-6\" style=\"padding-left:0px;\">" +
                            "               <button id=\"" + productIDValue.ToString() + "\" class=\"btn btn-primary\" type=\"button\" onclick=\"myFunction(this.id)\">Add To Cart</button>" +
                            "           </div>" +
                            "           <div class=\"col-lg-6 col-md-6 col-sm-6\" style=\"text-align:right\">" +
                            "               <div>QTY:</div>" +
                            "               <select id=\"" + productIDValue.ToString() + "99\">" +
                            "                   <option value=\"1\">1</option>" +
                            "                   <option value=\"2\">2</option>" +
                            "                   <option value=\"3\">3</option>" +
                            "                   <option value=\"4\">4</option>" +
                            "                   <option value=\"5\">5</option>" +
                            "                   <option value=\"6\">6</option>" +
                            "               </select>" +
                            "           </div>" +
                            "       </div>" +
                            "   </div>";
                }
                reader.Close();
            }
        }
    }
}