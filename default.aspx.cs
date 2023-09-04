using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Pet_System
{
    public partial class default1 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie loggedin_User = Request.Cookies["Logged-User"];

            // check if the user info cookie is not empty
            if (loggedin_User != null)
            {
                if (loggedin_User["username"] != "admin@email.com")
                {
                    // The user is not an administrator
                    link_signin.Visible = false;
                    link_profile.Visible = true;
                    link_signup.Visible = false;
                }
                else if (loggedin_User["username"] == "admin@email.com")
                {
                    // The user is an administrator
                    link_signin.Visible = false;
                    link_profile.Visible = false;
                    link_signup.Visible = false;
                }
            }
            else if (loggedin_User == null)
            {
                // The user is not logged in
                link_signin.Visible = true;
                link_signup.Visible = true;
            }
        }

        protected void btn_order_now1_Click(object sender, EventArgs e)
        {
            HttpCookie orders = new HttpCookie("chekupOrder");
            HttpCookie loggedin_User = Request.Cookies["Logged-User"];

            if (Request.Cookies["chekupOrder"] == null)
            {
                // Create the session
                orders.Values["chekupOrder"] = "Free Services";
                orders.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(orders);
                /*
                if (loggedin_User == null)
                {
                    // Redirect the user to login
                    Response.Redirect("signin.aspx");
                }
                else
                {
                    // send them to the order report page
                }*/

            }
            else
            {
                // re-purpose session
                // Create the session
                orders.Values["chekupOrder"] = "Free Services";

            }
        }
    }
}