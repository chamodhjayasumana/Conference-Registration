using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference_Registration_System
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if session data exists.
                if (Session["Role"] == null || Session["Username"] == null)
                {
                    // Redirect to login if no session data is found.
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    // Get session details.
                    string role = Session["Role"].ToString();
                    string username = Session["Username"].ToString();

                    // Show or hide buttons based on role.
                    if (role == "Admin")
                    {
                        lblGreeting.Text = "Hello, " + Session["Username"].ToString();
                        lblGreeting.Visible = true;
                        btnLogin.Visible = false;
                        btnLogout.Visible = true;
                        btnRegister.Visible = false;
                    }
                    else if (role == "User")
                    {
                        lblGreeting.Text = "Hello, " + Session["UserName"].ToString();
                        lblGreeting.Visible = true;
                        btnLogin.Visible = false;
                        btnLogout.Visible = true;
                        btnRegister.Visible = true;
                    }
                }
            }

            //if (Session["UserName"] != null)
            //{
            //    lblGreeting.Text = "Hello, " + Session["UserName"].ToString();
            //    lblGreeting.Visible = true;
            //    btnLogin.Visible = false;
            //    btnLogout.Visible = true;
            //    btnRegister.Visible = true;
            //}
            //else 
            //{
            //    lblGreeting.Text = "Hello, " + Session["Username"].ToString();
            //    lblGreeting.Visible = true;
            //    btnLogin.Visible = false;
            //    btnLogout.Visible = true;
            //    btnRegister.Visible = false;
            //}
        }




        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}


