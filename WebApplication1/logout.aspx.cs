using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session.Abandon();
                Session.Remove("TextEmail");
                Session.Remove("TextPass");

            }
            if (Session["CustEmail"] == null)
            {
                Response.Redirect("Rexines.aspx");
            }
            
            
        }

        /*protected void LoginStatus1_Logout(object sender, LoginCancelEventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("Login.aspx");
        }*/
    }
}