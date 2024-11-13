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

            }
        }
      

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
               
                Session["UserName"] = txtName.Text;
                Session["UserEmail"] = txtEmail.Text;
                Session["UserPhoneNumber"] = txtPhoneNumber.Text;
                Session["PaymentMethod"] = ddlPaymentMethod.SelectedValue;
                Session["Gender"] = ddlGender.SelectedValue;
                Session["DressCode"] = ddlDressCode.SelectedValue;
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

        protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlDressCode.Items.Clear();

            if (ddlGender.SelectedValue == "Male")
            {
                ddlDressCode.Items.Add("Formal Suit");
                ddlDressCode.Items.Add("Casual");
            }
            else if (ddlGender.SelectedValue == "Female")
            {
                ddlDressCode.Items.Add("Business Attire");
                ddlDressCode.Items.Add("Traditional Dress");
            }
            else if (ddlGender.SelectedValue == "Other")
            {
                ddlDressCode.Items.Add("Business Casual");
                ddlDressCode.Items.Add("Smart Casual");
            }
        }
    }
}

