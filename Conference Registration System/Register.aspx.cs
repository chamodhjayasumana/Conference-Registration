using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Conference_Registration_System
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (IsPostBack)
            {

                Session["UserName"] = txtName.Text;
                Session["UserEmail"] = txtEmail.Text;
                Session["UserPhoneNumber"] = txtPhoneNumber.Text;

                lblStatus.Text = "Registration successful!";
                Response.Redirect("Confirmation.aspx", false);


            }
        }
      

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
               
                Session["UserName"] = txtName.Text;
                Session["UserEmail"] = txtEmail.Text;
                Session["UserPhoneNumber"] = txtPhoneNumber.Text;
                Response.Redirect("Confirmation.aspx");
            }  
             else
            {
                lblStatus.Text = "Please fill out the form correctly.";
            }



        }

        protected void ddlPaymentMethod_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["PaymentMethod"]=ddlPaymentMethod.SelectedValue;
        }
    }
}

