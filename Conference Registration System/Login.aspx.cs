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
        //protected void Page_Load(object sender, EventArgs e)
        //{
           
        //}

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "admin" && txtPassword.Text == "password")
            {
                Session["Username"] = txtUsername.Text;
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                lblError.Text = "Invalid username or password";
            }

        }
    }


}