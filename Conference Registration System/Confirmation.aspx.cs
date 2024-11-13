using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference_Registration_System
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                lblName.Text = Session["UserName"].ToString();
                lblEmail.Text = Session["UserEmail"].ToString();
                lblPhoneNumber.Text = Session["UserPhoneNumber"].ToString();
                lblPaymentMethod.Text = (string)Session["PaymentMethod"];
            }
            else
            {
                Response.Redirect("Registration.aspx");
            }
        }
    }
}