using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference_Registration_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label3.Text = "";
            }
        }

        protected void ddlRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label3.Text = ""; 
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (Page.IsValid) // Ensure validation controls are satisfied.
            {
                string selectedRole = ddlRole.SelectedValue;
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text.Trim();

                // Placeholder: Replace this with a secure database check.
                if (selectedRole == "Admin" && username == "admin" && password == "adminpass123!")
                {
                    Session["Role"] = "Admin";
                    Session["Username"] = username;
                    Response.Redirect("Home.aspx");
                }
                else if (selectedRole == "User" && username == "user" && password == "userpass123!")
                {
                    Session["Role"] = "User";
                    Session["Username"] = username;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    // Display an error message for invalid login attempts.
                    Label3.Text = "Invalid username, password, or role selection.";
                    Label3.CssClass = "text-danger"; // Add a Bootstrap class for styling if applicable.
                }
            }







        }
    }


}


