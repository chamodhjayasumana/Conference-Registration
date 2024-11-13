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

        }

        protected void ddlRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMessage.Text = ""; 
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (Page.IsValid) 
            {
                string selectedRole = ddlRole.SelectedValue;
                string Username = txtUsername.Text;
                string Password = txtPassword.Text;

                
                if (selectedRole == "Admin" && Username == "admin" && Password == "adminpass123!")
                {
                    Session["AdminName"] = txtUsername.Text;
                    Response.Redirect("Home.aspx");
                }
                else if (selectedRole == "User" && Username == "user" && Password == "userpass123!")
                {
                    Session["UserName"] = txtUsername.Text;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lblMessage.Text = "Invalid username or password.";
                    
                }
            }





            

        }
    }


}


